import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';

import 'package:fhcs/core/storage/contract/istorage.dart';
import 'package:fhcs/core/storage/storage_constant.dart';
import 'package:fhcs/features/accounts/presentation/controllers/contracts/accounts.dart';
import 'package:fhcs/features/accounts/presentation/views/accounts.dart';
import 'package:fhcs/features/accounts/presentation/views/contracts/accounts.dart';

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
  String? username;
  @override
  String? fullName;

  @override
  void initState() {
    super.initState();
    view = AccountsView(controller: this);
    getBasicUserDetailFromStorage();
  }

  void getBasicUserDetailFromStorage() async {
    username =
        await GetIt.I.get<IAppStorage>().fetchString(StorageConstant.username);
    fullName =
        await GetIt.I.get<IAppStorage>().fetchString(StorageConstant.fullName);
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}
