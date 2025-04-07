import 'package:fhcs/features/accounts/presentation/controllers/contracts/accounts.dart';
import 'package:flutter/material.dart';

import 'contracts/accounts.dart';

class AccountsView extends StatelessWidget implements AccountsViewContract {
  const AccountsView({super.key, required this.controller});
  final AccountsControllerContract controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F9),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [],
      ),
    );
  }
}
