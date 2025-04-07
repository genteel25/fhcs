import 'package:fhcs/features/investments/presentation/controllers/contracts/investments.dart';
import 'package:fhcs/features/investments/presentation/views/contracts/investments.dart';
import 'package:fhcs/features/investments/presentation/views/investments.dart';
import 'package:flutter/material.dart';

class InvestmentsScreen extends StatefulWidget {
  static const String route = 'forgot_password';
  const InvestmentsScreen({super.key});

  @override
  State<InvestmentsScreen> createState() => InvestmentsController();
}

class InvestmentsController extends State<InvestmentsScreen>
    implements InvestmentsControllerContract {
  late InvestmentsViewContract view;

  @override
  void initState() {
    super.initState();
    view = InvestmentsView(controller: this);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}
