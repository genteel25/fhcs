import 'dart:developer';

import 'package:fhcs/core/data/referee.dart';
import 'package:fhcs/core/helpers/contracts/iwidget_helper.dart';
import 'package:fhcs/core/router/route_constants.dart';
import 'package:fhcs/features/auth/presentation/controllers/membership_payment.dart';
import 'package:fhcs/features/home/presentation/bloc/dashboard/dashboard_cubit.dart';
import 'package:fhcs/features/home/presentation/bloc/transactions/transactions_cubit.dart';
import 'package:fhcs/features/home/presentation/bloc/verify_funding/verify_funding_cubit.dart';
import 'package:fhcs/features/loans/presentation/bloc/loan_request/loan_request_cubit.dart';
import 'package:fhcs/features/loans/presentation/controllers/contracts/select_referee.dart';
import 'package:fhcs/features/loans/presentation/views/contracts/select_referee.dart';
import 'package:fhcs/features/loans/presentation/views/select_referee.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paystack_max/flutter_paystack_max.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

class SelectRefereeScreen extends StatefulWidget {
  static const String route = 'forgot_password';
  const SelectRefereeScreen(
      {super.key, this.isNormalLoan = true, required this.amount});
  final bool isNormalLoan;
  final Map<String, dynamic> amount;

  @override
  State<SelectRefereeScreen> createState() => SelectRefereeController();
}

class SelectRefereeController extends State<SelectRefereeScreen>
    implements SelectRefereeControllerContract {
  late SelectRefereeViewContract view;

  @override
  bool isNormalLoan = true;

  @override
  String? loanAmount;

  @override
  List<Map<String, dynamic>> referees = [
    {
      "id": "1",
      "name": "Ajagbe Quadri",
      "ir_number": "223-4253",
    },
    {
      "id": "2",
      "name": "Ajagbe Quadri",
      "ir_number": "223-4253",
    },
    {
      "id": "3",
      "name": "Ajagbe Quadri",
      "ir_number": "223-4253",
    },
    {
      "id": "4",
      "name": "Ajagbe Quadri",
      "ir_number": "223-4253",
    },
    {
      "id": "5",
      "name": "Ajagbe Quadri",
      "ir_number": "223-4253",
    },
    {
      "id": "6",
      "name": "Ajagbe Quadri",
      "ir_number": "223-4253",
    },
    {
      "id": "7",
      "name": "Ajagbe Quadri",
      "ir_number": "223-4253",
    },
    {
      "id": "8",
      "name": "Ajagbe Quadri",
      "ir_number": "223-4253",
    },
    {
      "id": "9",
      "name": "Ajagbe Quadri",
      "ir_number": "223-4253",
    },
    {
      "id": "10",
      "name": "Ajagbe Quadri",
      "ir_number": "223-4253",
    },
    {
      "id": "11",
      "name": "Ajagbe Quadri",
      "ir_number": "223-4253",
    },
    {
      "id": "12",
      "name": "Ajagbe Quadri",
      "ir_number": "223-4253",
    },
    {
      "id": "13",
      "name": "Ajagbe Quadri",
      "ir_number": "223-4253",
    },
    {
      "id": "14",
      "name": "Ajagbe Quadri",
      "ir_number": "223-4253",
    },
  ];

  @override
  List<RefereeData> selectedReferees = [];

  @override
  void initState() {
    super.initState();
    view = SelectRefereeView(controller: this);
    isNormalLoan = widget.isNormalLoan;
    loanAmount = widget.amount['amount'];
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
  void onRequestLoan() {
    final payload = {
      "loan_type": widget.isNormalLoan ? "Conventional" : "Emergency",
      "referee_ids": selectedReferees.map((referee) => referee.id).toList(),
      "payslip_url":
          "http://127.0.0.1:8000/media/uploads/2025/04/13/1744530340263071.pdf",
      "annual_salary": widget.amount['annual_salary'],
      "amount": double.parse(widget.amount['amount']),
      "duration": widget.amount['duration']
          .toString()
          .replaceAll(" months", "")
          .replaceAll(" month", ""),
      "description": widget.amount['description'],
      "is_new_payslip": false,
    };

    context.read<LoanRequestCubit>().requestLoan(payload);
  }

  @override
  void onVerifyFunding() {
    context.goNamed(RouteConstants.homeRoute);
    context.read<TransactionsCubit>().fetchTransactions();
    context.read<DashboardCubit>().fetchDashboardData();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}
