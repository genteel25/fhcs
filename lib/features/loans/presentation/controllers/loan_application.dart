import 'package:fhcs/features/loans/presentation/views/contracts/loan_application.dart';
import 'package:fhcs/features/loans/presentation/views/loan_application.dart';
import 'package:flutter/material.dart';

import 'contracts/loan_application.dart';

class LoanApplicationScreen extends StatefulWidget {
  static const String route = 'forgot_password';
  const LoanApplicationScreen({super.key});

  @override
  State<LoanApplicationScreen> createState() => LoanApplicationController();
}

class LoanApplicationController extends State<LoanApplicationScreen>
    implements LoanApplicationControllerContract {
  late LoanApplicationViewContract view;

  @override
  void initState() {
    super.initState();
    view = LoanApplicationView(controller: this);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}
