import 'dart:developer';

import 'package:fhcs/core/data/investment_type.dart';
import 'package:fhcs/core/data/referee.dart';
import 'package:fhcs/core/helpers/contracts/iwidget_helper.dart';
import 'package:fhcs/core/router/route_constants.dart';
import 'package:fhcs/features/accounts/presentation/bloc/account_details/account_details_cubit.dart';
import 'package:fhcs/features/auth/presentation/controllers/membership_payment.dart';
import 'package:fhcs/features/home/presentation/bloc/dashboard/dashboard_cubit.dart';
import 'package:fhcs/features/home/presentation/bloc/transactions/transactions_cubit.dart';
import 'package:fhcs/features/home/presentation/bloc/verify_funding/verify_funding_cubit.dart';
import 'package:fhcs/features/home/presentation/controllers/withdraw_funds.dart';
import 'package:fhcs/features/investments/presentation/bloc/create_investment/create_investment_cubit.dart';
import 'package:fhcs/features/loans/presentation/controllers/contracts/select_witness.dart';
import 'package:fhcs/features/loans/presentation/views/contracts/select_witness.dart';
import 'package:fhcs/features/loans/presentation/views/select_witness.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paystack_max/flutter_paystack_max.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

class SelectWitnessScreen extends StatefulWidget {
  static const String route = 'forgot_password';
  const SelectWitnessScreen({super.key, required this.data});
  final Map<String, dynamic> data;

  @override
  State<SelectWitnessScreen> createState() => SelectWitnessController();
}

class SelectWitnessController extends State<SelectWitnessScreen>
    implements SelectWitnessControllerContract {
  late SelectWitnessViewContract view;

  @override
  bool isNormalLoan = true;

  @override
  String? loanAmount;

  @override
  List<RefereeData> selectedReferees = [];

  @override
  Map<String, dynamic> data = {};

  @override
  void initState() {
    super.initState();
    view = SelectWitnessView(controller: this);
    isNormalLoan = false;
    loanAmount = "";
    log("investment info: ${widget.data}");
    data = widget.data;
  }

  @override
  void onSelectReferee(RefereeData referee) {
    if (selectedReferees.contains(referee)) {
      setState(() {
        selectedReferees.remove(referee);
      });
    } else {
      if (selectedReferees.length <= 2) {
        setState(() {
          selectedReferees.add(referee);
        });
      } else {
        GetIt.I
            .get<IWidgetHelper>()
            .showErrorToast(context, message: "Max of 3 referees");
      }
    }
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
      context.read<VerifyFundingCubit>().verifyFunding(response.data.reference);
    }
// PaystackTransactionVerified
//     log("response: ${response}");
  }

  @override
  void onRequestInvesstment() {
    final payload = {...widget.data}..addAll({
        "investment_type_id":
            (widget.data['investment_type_id'] as InvestmentTypeData).id,
        "referee_ids": (widget.data['referee_ids'] as List<RefereeData>)
            .map((item) => item.id)
            .toList(),
        "witness_ids": selectedReferees.map((item) => item.id).toList(),
      });

    context.read<CreateInvestmentCubit>().createInvestment(payload);
  }

  @override
  void onVerifyFunding() {
    context.goNamed(RouteConstants.investmentRoute);
    context.read<TransactionsCubit>().fetchTransactions();
    context.read<DashboardCubit>().fetchDashboardData();
    context.read<AccountDetailsCubit>().fetchAccountDetail();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}
