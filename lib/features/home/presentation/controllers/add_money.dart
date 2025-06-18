import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paystack_max/flutter_paystack_max.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import 'package:fhcs/core/helpers/contracts/iwidget_helper.dart';
import 'package:fhcs/core/router/route_constants.dart';
import 'package:fhcs/core/utils/app_constant.dart';
import 'package:fhcs/core/utils/extensions.dart';
import 'package:fhcs/core/utils/global_variables.dart';
import 'package:fhcs/features/auth/presentation/controllers/membership_payment.dart';
import 'package:fhcs/features/home/presentation/bloc/dashboard/dashboard_cubit.dart';
import 'package:fhcs/features/home/presentation/bloc/initiate_funding/initiate_funding_cubit.dart';
import 'package:fhcs/features/home/presentation/bloc/transactions/transactions_cubit.dart';
import 'package:fhcs/features/home/presentation/bloc/user_profile/user_profile_cubit.dart';
import 'package:fhcs/features/home/presentation/bloc/verify_funding/verify_funding_cubit.dart';
import 'package:fhcs/features/home/presentation/controllers/contracts/add_money.dart';
import 'package:fhcs/features/home/presentation/views/add_money.dart';
import 'package:fhcs/features/home/presentation/views/contracts/add_money.dart';

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
  bool useDefaultMD = true;

  @override
  late FundingMode mode;

  @override
  String savingsPercent = "0";

  @override
  String investmentPercent = "0";

  @override
  String selectedCard = creditCards.first;

  @override
  TextEditingController percentSavingsController = TextEditingController();
  @override
  TextEditingController percentInvestmentController = TextEditingController();

  @override
  String initialSavingsPercent = "0";

  @override
  String initialInvestmentPercent = "0";

  @override
  void initState() {
    super.initState();
    view = AddMoneyView(controller: this);
    if (widget.amount != null) {
      amountController.text = widget.amount!;
    }
    mode = widget.mode;
    savingsFormatter = CurrencyTextInputFormatter.currency(
      symbol: GlobalVariables.nairaCurrencySymbol,
      decimalDigits: 0,
      minValue: 0,
      maxValue: amountController.text.cleanCheckEmptyCurrencyText,
    );
    useDefaultMdDetail();
  }

  void useDefaultMdDetail() {
    savingsAmountController.text = GlobalVariables
            .rootNavigatorKey.currentContext!
            .read<UserProfileCubit>()
            .state
            .whenOrNull(
              success: (data) => (((data.cooperator?.monthlyContribution ?? 0) *
                          (data.cooperator?.savingsPercentage ?? 0)) /
                      100)
                  .toStringAsFixed(0)
                  .formatInputCurrency,
            ) ??
        0.toStringAsFixed(0).formatInputCurrency;
    investmentAmountController.text = GlobalVariables
            .rootNavigatorKey.currentContext!
            .read<UserProfileCubit>()
            .state
            .whenOrNull(
              success: (data) => (((data.cooperator?.monthlyContribution ?? 0) *
                          (data.cooperator?.investmentPercentage ?? 0)) /
                      100)
                  .toStringAsFixed(0)
                  .formatInputCurrency,
            ) ??
        0.toStringAsFixed(0).formatInputCurrency;

    amountController.text = GlobalVariables.rootNavigatorKey.currentContext!
            .read<UserProfileCubit>()
            .state
            .whenOrNull(
              success: (data) => (data.cooperator?.monthlyContribution ?? 0)
                  .toStringAsFixed(0)
                  .formatInputCurrency,
            ) ??
        0.toStringAsFixed(0).formatInputCurrency;
    // calculateInvestmentDetail();

    savingsPercent = GlobalVariables.rootNavigatorKey.currentContext!
            .read<UserProfileCubit>()
            .state
            .whenOrNull(
              success: (data) =>
                  (data.cooperator?.savingsPercentage ?? 0).toStringAsFixed(0),
            ) ??
        0.toStringAsFixed(0);
    investmentPercent = GlobalVariables.rootNavigatorKey.currentContext!
            .read<UserProfileCubit>()
            .state
            .whenOrNull(
              success: (data) => (data.cooperator?.investmentPercentage ?? 0)
                  .toStringAsFixed(0),
            ) ??
        0.toStringAsFixed(0);
  }

  @override
  void toggleDefaultMD() {
    useDefaultMD = !useDefaultMD;

    if (useDefaultMD) {
      useDefaultMdDetail();
    } else {
      savingsAmountController.text = '0';
      investmentAmountController.text = '0';
      amountController.text = '0';
      percentSavingsController.text = '0';
      percentInvestmentController.text = '0';
    }

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
        PaystackPaymentChannel.bank,
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
      "amount": amountController.text.cleanCheckEmptyCurrencyText,
      "investment_percentage": useDefaultMD
          ? num.parse(investmentPercent)
          : percentInvestmentController.text.cleanCheckEmptyCurrencyText,
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
  void allocateContribution({
    required double savingPercent,
    required double investmentPercent,
  }) {
    // Ensure savings is between 1% and 50%
    double adjustedSavings = savingPercent.clamp(1, 50);

    // Calculate investment to maintain 100% total
    double adjustedInvestment = 100 - adjustedSavings;

    // Ensure investment doesn't exceed 99%
    if (adjustedInvestment > 99) {
      adjustedInvestment = 99;
      adjustedSavings = 100 - adjustedInvestment;
    }

    // Update the text controllers
    percentSavingsController.text = "${adjustedSavings.toStringAsFixed(0)}%";
    percentInvestmentController.text =
        "${adjustedInvestment.toStringAsFixed(0)}%";

    // Calculate and update the actual amounts
    final amount = amountController.text.cleanCheckEmptyCurrencyText;
    initialSavingsPercent =
        ((amount * adjustedSavings) / 100).toStringAsFixed(0);
    initialInvestmentPercent =
        ((amount * adjustedInvestment) / 100).toStringAsFixed(0);

    setState(() {});
  }

  @override
  void dispose() {
    amountController.dispose();
    savingsAmountController.dispose();
    investmentAmountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}
