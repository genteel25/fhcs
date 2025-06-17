import 'dart:developer';

import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:fhcs/core/helpers/contracts/iwidget_helper.dart';
import 'package:fhcs/core/router/route_constants.dart';
import 'package:fhcs/core/utils/app_constant.dart';
import 'package:fhcs/core/utils/extensions.dart';
import 'package:fhcs/core/utils/global_variables.dart';
import 'package:fhcs/features/auth/presentation/controllers/membership_payment.dart';
import 'package:fhcs/features/home/presentation/bloc/dashboard/dashboard_cubit.dart';
import 'package:fhcs/features/home/presentation/bloc/initiate_funding/initiate_funding_cubit.dart';
import 'package:fhcs/features/home/presentation/bloc/transactions/transactions_cubit.dart';
import 'package:fhcs/features/home/presentation/bloc/verify_funding/verify_funding_cubit.dart';
import 'package:fhcs/features/home/presentation/controllers/contracts/add_money.dart';
import 'package:fhcs/features/home/presentation/views/add_money.dart';
import 'package:fhcs/features/home/presentation/views/contracts/add_money.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paystack_max/flutter_paystack_max.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

enum FundingMode {
  bankTransfer,
  card,
}

class AddMoneyScreen extends StatefulWidget {
  static const String route = 'forgot_password';
  const AddMoneyScreen({super.key, required this.mode, this.amount});
  final FundingMode mode;
  final String? amount;

  @override
  State<AddMoneyScreen> createState() => AddMoneyController();
}

class AddMoneyController extends State<AddMoneyScreen>
    implements AddMoneyControllerContract {
  late AddMoneyViewContract view;
  @override
  TextEditingController amountController = TextEditingController();
  @override
  TextEditingController savingsAmountController = TextEditingController();
  @override
  TextEditingController investmentAmountController = TextEditingController();
  @override
  CurrencyTextInputFormatter formatter = CurrencyTextInputFormatter.currency(
    symbol: GlobalVariables.nairaCurrencySymbol,
    decimalDigits: 0,
    minValue: 0,
  );
  @override
  late CurrencyTextInputFormatter savingsFormatter;

  @override
  CurrencyTextInputFormatter investmentFormatter =
      CurrencyTextInputFormatter.currency(
    symbol: GlobalVariables.nairaCurrencySymbol,
    decimalDigits: 0,
    minValue: 0,
  );

  @override
  late FundingMode mode;

  @override
  String savingsPercent = "0";

  @override
  String investmentPercent = "0";

  @override
  String selectedCard = creditCards.first;

  @override
  void initState() {
    super.initState();
    view = AddMoneyView(controller: this);
    if (widget.amount != null) {
      amountController.text = widget.amount!;
    }
    mode = widget.mode;
    amountControllerListener();
    savingControllerListener();
    savingsFormatter = CurrencyTextInputFormatter.currency(
      symbol: GlobalVariables.nairaCurrencySymbol,
      decimalDigits: 0,
      minValue: 0,
      maxValue: amountController.text.cleanCheckEmptyCurrencyText,
    );
  }

  void amountControllerListener() {
    amountController.addListener(() {
      log("amount: ${amountController.text.cleanCheckEmptyCurrencyText}");
      savingsFormatter = CurrencyTextInputFormatter.currency(
        symbol: GlobalVariables.nairaCurrencySymbol,
        decimalDigits: 0,
        minValue: 0,
        maxValue: amountController.text.cleanCheckEmptyCurrencyText,
      );
      setState(() {});
    });
  }

  void savingControllerListener() {
    savingsAmountController.addListener(() {
      log("savings: ${savingsAmountController.text.cleanCheckEmptyCurrencyText}");
      calculateInvestmentDetail();
    });
  }

  void calculateInvestmentDetail() {
    investmentAmountController.text =
        (amountController.text.cleanCheckEmptyCurrencyText -
                savingsAmountController.text.cleanCheckEmptyCurrencyText)
            .toStringAsFixed(0)
            .formatInputCurrency;
    investmentPercent =
        ((investmentAmountController.text.cleanCheckEmptyCurrencyText /
                    amountController.text.cleanCheckEmptyCurrencyText) *
                100)
            .toStringAsFixed(0);

    savingsPercent =
        ((savingsAmountController.text.cleanCheckEmptyCurrencyText /
                    amountController.text.cleanCheckEmptyCurrencyText) *
                100)
            .toStringAsFixed(0);
    setState(() {});
  }

  @override
  void onSelectCard(String card) {
    setState(() {
      selectedCard = card;
    });
  }

  @override
  void payViaCard({required String refId, required String amount}) async {
    // log("payment amount: ${PaymentClass().calculatePaymentAmount(double.parse(widget.data.amount ?? '0'))}");
    final request = PaystackTransactionRequest(
      reference: refId,
      secretKey: 'sk_test_36884ad4dfe380a58bd9caa615825fb2ab3c3d4c',
      email: "genteelajagbe@gmail.com",
      amount: PaymentClass()
          .calculatePaymentAmount(double.parse(amount))
          .roundToDouble(),
      currency: PaystackCurrency.ngn,
      channel: [
        PaystackPaymentChannel.card,
        // PaystackPaymentChannel.bankTransfer,
      ],
    );

    final initializedTransaction =
        await PaymentService.initializeTransaction(request);
    if (!initializedTransaction.status) {
      GetIt.I
          .get<IWidgetHelper>()
          .showErrorToast(context, message: initializedTransaction.message);

      return;
    }
    final response = await PaymentService.showPaymentModal(context,
            transaction: initializedTransaction,
            // Callback URL must match the one specified on your paystack dashboard,
            callbackUrl: '...')
        .then((_) async {
      return await PaymentService.verifyTransaction(
        paystackSecretKey: 'sk_test_36884ad4dfe380a58bd9caa615825fb2ab3c3d4c',
        initializedTransaction.data?.reference ?? request.reference,
      );
    });
    if (response.data.status == PaystackTransactionStatus.success) {
      log("Payment successful: ${response}");
      if (mounted) {
        context
            .read<VerifyFundingCubit>()
            .verifyFunding(response.data.reference);
      }
    }
// PaystackTransactionVerified
//     log("response: ${response}");
  }

  @override
  void onDeposit() {
    final payload = {
      "amount": formatter.getUnformattedValue(),
      "investment_percentage": num.parse(investmentPercent),
    };
    context.read<InitiateFundingCubit>().initiateFunding(payload);
  }

  @override
  void onVerifyFunding() async {
    GetIt.I.get<IWidgetHelper>().showSuccessToast(
          context,
          message: "Deposit successful",
        );
    await Future.delayed(const Duration(seconds: 4));
    if (mounted) {
      context.goNamed(RouteConstants.homeRoute);
      context.read<TransactionsCubit>().fetchTransactions();
      context.read<DashboardCubit>().fetchDashboardData();
    }
  }

  @override
  void dispose() {
    amountController
      ..removeListener(amountControllerListener)
      ..dispose();
    savingsAmountController
      ..removeListener(savingControllerListener)
      ..dispose();
    investmentAmountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}
