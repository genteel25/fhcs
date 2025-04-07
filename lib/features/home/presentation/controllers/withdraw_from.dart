import 'package:fhcs/features/home/presentation/controllers/contracts/withdraw_from.dart';
import 'package:fhcs/features/home/presentation/views/contracts/withdraw_from.dart';
import 'package:fhcs/features/home/presentation/views/withdraw_from.dart';
import 'package:flutter/material.dart';

class WithdrawFromScreen extends StatefulWidget {
  static const String route = 'forgot_password';
  const WithdrawFromScreen({super.key});

  @override
  State<WithdrawFromScreen> createState() => WithdrawFromController();
}

class WithdrawFromController extends State<WithdrawFromScreen>
    implements WithdrawFromControllerContract {
  late WithdrawFromViewContract view;

  @override
  bool? isSavingAccount;

  @override
  void initState() {
    super.initState();
    view = WithdrawFromView(controller: this);
  }

  @override
  void onSelectWithdrawMode(bool value) {
    setState(() {
      isSavingAccount = value;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}
