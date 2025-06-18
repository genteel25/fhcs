import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:fhcs/config/di/app_initializer.dart';
import 'package:fhcs/core/router/route_constants.dart';
import 'package:fhcs/core/utils/extensions.dart';
import 'package:fhcs/core/utils/global_variables.dart';
import 'package:fhcs/features/accounts/presentation/bloc/account_details/account_details_cubit.dart';
import 'package:fhcs/features/auth/presentation/bloc/monthly_contribution/monthly_contribution_cubit.dart';
import 'package:fhcs/features/auth/presentation/controllers/contracts/kyc.dart';
import 'package:fhcs/features/auth/presentation/controllers/contracts/splash.dart';
import 'package:fhcs/features/auth/presentation/views/contracts/kyc.dart';
import 'package:fhcs/features/auth/presentation/views/contracts/splash.dart';
import 'package:fhcs/features/auth/presentation/views/kyc.dart';
import 'package:fhcs/features/auth/presentation/views/splash.dart';
import 'package:fhcs/features/home/presentation/bloc/dashboard/dashboard_cubit.dart';
import 'package:fhcs/features/home/presentation/bloc/transactions/transactions_cubit.dart';
import 'package:fhcs/features/home/presentation/bloc/user_profile/user_profile_cubit.dart';
import 'package:fhcs/features/investments/presentation/bloc/investment_type/investment_type_cubit.dart';
import 'package:fhcs/features/loans/presentation/bloc/referee_request/referee_request_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  static const String route = '/splash';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashController();
}

class SplashController extends State<SplashScreen>
    with SingleTickerProviderStateMixin
    implements SplashControllerContract {
  late SplashViewContract view;

  @override
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    view = SplashView(controller: this);
    controller = AnimationController(
        vsync: this,
        lowerBound: 0.3,
        upperBound: 1,
        duration: const Duration(milliseconds: 2000),
        reverseDuration: const Duration(milliseconds: 2000))
      ..forward()
      ..addListener(() {
        if (controller.status == AnimationStatus.completed) {
          controller.reverse();
        } else if (controller.status == AnimationStatus.dismissed) {
          controller.forward();
        }
      });
    if (AppInitializer.accessToken != null &&
        AppInitializer.accessToken!.isNotEmpty) {
      context.read<UserProfileCubit>().fetchUserProfile();
      context.read<DashboardCubit>().fetchDashboardData();
      context.read<TransactionsCubit>().fetchTransactions();
      context.read<InvestmentTypeCubit>().fetchInvestmentType();
      context.read<RefereeRequestCubit>().fetchRefereeRequest();
      context.read<LoanRefereeRequestCubit>().fetchRefereeRequest();
      context.read<InvestmentRefereeRequestCubit>().fetchRefereeRequest();
      context.read<AccountDetailsCubit>().fetchAccountDetail();
    }
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        AppInitializer.accessToken != null &&
                AppInitializer.accessToken!.isNotEmpty
            ? context.goNamed(RouteConstants.homeRoute)
            : context.goNamed(RouteConstants.initialRoute);
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}
