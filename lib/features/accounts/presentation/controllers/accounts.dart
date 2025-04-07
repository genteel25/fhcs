import 'package:fhcs/features/accounts/presentation/controllers/contracts/accounts.dart';
import 'package:fhcs/features/accounts/presentation/views/accounts.dart';
import 'package:fhcs/features/accounts/presentation/views/contracts/accounts.dart';
import 'package:flutter/material.dart';

class AccountsScreen extends StatefulWidget {
  static const String route = 'forgot_password';
  const AccountsScreen({super.key});

  @override
  State<AccountsScreen> createState() => AccountsController();
}

class AccountsController extends State<AccountsScreen>
    implements AccountsControllerContract {
  late AccountsViewContract view;

  @override
  void initState() {
    super.initState();
    view = AccountsView(controller: this);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}
