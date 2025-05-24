import 'package:fhcs/core/storage/contract/istorage.dart';
import 'package:fhcs/core/storage/storage_constant.dart';
import 'package:fhcs/features/loans/presentation/controllers/contracts/loans.dart';
import 'package:fhcs/features/loans/presentation/views/contracts/loans.dart';
import 'package:fhcs/features/loans/presentation/views/loans.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

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
  String? username;
  @override
  String? fullName;

  @override
  void initState() {
    super.initState();
    view = LoansView(controller: this);
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
