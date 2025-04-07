import 'package:fhcs/features/home/presentation/views/contracts/deposit_fund.dart';
import 'package:fhcs/features/home/presentation/views/deposit_fund.dart';
import 'package:flutter/material.dart';

import 'contracts/deposit_fund.dart';

class DepositFundScreen extends StatefulWidget {
  static const String route = 'forgot_password';
  const DepositFundScreen({super.key});

  @override
  State<DepositFundScreen> createState() => DepositFundController();
}

class DepositFundController extends State<DepositFundScreen>
    implements DepositFundControllerContract {
  late DepositFundViewContract view;

  @override
  void initState() {
    super.initState();
    view = DepositFundView(controller: this);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}
