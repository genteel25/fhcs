import 'package:fhcs/features/loans/presentation/controllers/contracts/cash_injection.dart';
import 'package:fhcs/features/loans/presentation/views/cash_injection.dart';
import 'package:fhcs/features/loans/presentation/views/contracts/cash_injection.dart';
import 'package:flutter/material.dart';

class CashInjectionScreen extends StatefulWidget {
  static const String route = 'forgot_password';
  const CashInjectionScreen({super.key});

  @override
  State<CashInjectionScreen> createState() => CashInjectionController();
}

class CashInjectionController extends State<CashInjectionScreen>
    implements CashInjectionControllerContract {
  late CashInjectionViewContract view;

  @override
  void initState() {
    super.initState();
    view = CashInjectionView(controller: this);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}
