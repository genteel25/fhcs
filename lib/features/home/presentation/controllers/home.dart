import 'package:fhcs/core/storage/contract/istorage.dart';
import 'package:fhcs/core/storage/storage_constant.dart';
import 'package:fhcs/features/home/presentation/bloc/dashboard/dashboard_cubit.dart';
import 'package:fhcs/features/home/presentation/bloc/transactions/transactions_cubit.dart';
import 'package:fhcs/features/home/presentation/bloc/user_profile/user_profile_cubit.dart';
import 'package:fhcs/features/home/presentation/controllers/contracts/home.dart';
import 'package:fhcs/features/home/presentation/views/contracts/home.dart';
import 'package:fhcs/features/home/presentation/views/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class HomeScreen extends StatefulWidget {
  static const String route = 'forgot_password';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeController();
}

class HomeController extends State<HomeScreen>
    implements HomeControllerContract {
  late HomeViewContract view;

  @override
  String? username;
  @override
  String? fullName;

  @override
  void initState() {
    super.initState();
    view = HomeView(controller: this);
    getBasicUserDetailFromStorage();
    context.read<UserProfileCubit>().fetchUserProfile();
    context.read<DashboardCubit>().fetchDashboardData();
    context.read<TransactionsCubit>().fetchTransactions();
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
