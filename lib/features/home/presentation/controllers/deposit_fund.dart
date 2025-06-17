import 'package:fhcs/features/home/presentation/views/contracts/deposit_fund.dart';
import 'package:fhcs/features/home/presentation/views/deposit_fund.dart';
import 'package:flutter/material.dart';

import 'contracts/deposit_fund.dart';

class DepositFundScreen extends StatefulWidget {
  static const String route = 'forgot_password';
  const DepositFundScreen({super.key, this.amount});
  final String? amount;

  @override
  State<DepositFundScreen> createState() => DepositFundController();
}

class DepositFundController extends State<DepositFundScreen>
    implements DepositFundControllerContract {
  late DepositFundViewContract view;

  @override
  String? amount;

  @override
  void initState() {
    super.initState();
    view = DepositFundView(controller: this);
    if (widget.amount != null) {
      amount = widget.amount!;
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}
