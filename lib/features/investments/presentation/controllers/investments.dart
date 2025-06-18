import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'package:fhcs/core/storage/contract/istorage.dart';
import 'package:fhcs/core/storage/storage_constant.dart';
import 'package:fhcs/features/investments/presentation/bloc/fetch_investment/fetch_investment_cubit.dart';
import 'package:fhcs/features/investments/presentation/controllers/contracts/investments.dart';
import 'package:fhcs/features/investments/presentation/views/contracts/investments.dart';
import 'package:fhcs/features/investments/presentation/views/investments.dart';

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
  String? username;
  @override
  String? fullName;

  @override
  void initState() {
    super.initState();
    view = InvestmentsView(controller: this);
    getBasicUserDetailFromStorage();
    context.read<FetchInvestmentCubit>().fetchInvestments();
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
