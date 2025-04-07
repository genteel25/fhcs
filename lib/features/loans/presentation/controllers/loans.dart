import 'package:fhcs/features/loans/presentation/controllers/contracts/loans.dart';
import 'package:fhcs/features/loans/presentation/views/contracts/loans.dart';
import 'package:fhcs/features/loans/presentation/views/loans.dart';
import 'package:flutter/material.dart';

class LoansScreen extends StatefulWidget {
  static const String route = 'forgot_password';
  const LoansScreen({super.key});

  @override
  State<LoansScreen> createState() => LoansController();
}

class LoansController extends State<LoansScreen>
    implements LoansControllerContract {
  late LoansViewContract view;

  @override
  void initState() {
    super.initState();
    view = LoansView(controller: this);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}
