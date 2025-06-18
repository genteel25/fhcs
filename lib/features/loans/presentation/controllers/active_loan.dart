import 'package:fhcs/core/data/loan.dart';
import 'package:fhcs/features/loans/presentation/controllers/contracts/active_loan.dart';
import 'package:fhcs/features/loans/presentation/controllers/contracts/cash_injection.dart';
import 'package:fhcs/features/loans/presentation/views/active_loan.dart';
import 'package:fhcs/features/loans/presentation/views/cash_injection.dart';
import 'package:fhcs/features/loans/presentation/views/contracts/active_loan.dart';
import 'package:fhcs/features/loans/presentation/views/contracts/cash_injection.dart';
import 'package:flutter/material.dart';

class ActiveLoanScreen extends StatefulWidget {
  static const String route = 'forgot_password';
  const ActiveLoanScreen({super.key, required this.loanInfo});
  final LoanData loanInfo;

  @override
  State<ActiveLoanScreen> createState() => ActiveLoanController();
}

class ActiveLoanController extends State<ActiveLoanScreen>
    implements ActiveLoanControllerContract {
  late ActiveLoanViewContract view;

  @override
  late LoanData loanData;

  @override
  void initState() {
    super.initState();
    view = ActiveLoanView(controller: this);
    loanData = widget.loanInfo;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}
