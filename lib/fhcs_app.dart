import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

import 'package:fhcs/config/flavor/app_flavor.dart';
import 'package:fhcs/core/router/router.dart';
import 'package:fhcs/core/ui/theme.dart';
import 'package:fhcs/features/accounts/presentation/bloc/account_details/account_details_cubit.dart';
import 'package:fhcs/features/auth/presentation/bloc/auth/auth_cubit.dart';
import 'package:fhcs/features/auth/presentation/bloc/bank_list/bank_list_cubit.dart';
import 'package:fhcs/features/auth/presentation/bloc/monthly_contribution/monthly_contribution_cubit.dart';
import 'package:fhcs/features/auth/presentation/bloc/verify_membership/verify_membership_cubit.dart';
import 'package:fhcs/features/home/presentation/bloc/dashboard/dashboard_cubit.dart';
import 'package:fhcs/features/home/presentation/bloc/initiate_funding/initiate_funding_cubit.dart';
import 'package:fhcs/features/home/presentation/bloc/initiate_withdrawal/initiate_withdrawal_cubit.dart';
import 'package:fhcs/features/home/presentation/bloc/transactions/transactions_cubit.dart';
import 'package:fhcs/features/home/presentation/bloc/user_profile/user_profile_cubit.dart';
import 'package:fhcs/features/home/presentation/bloc/verify_funding/verify_funding_cubit.dart';
import 'package:fhcs/features/investments/presentation/bloc/create_investment/create_investment_cubit.dart';
import 'package:fhcs/features/investments/presentation/bloc/fetch_investment/fetch_investment_cubit.dart';
import 'package:fhcs/features/investments/presentation/bloc/investment_tenure/investment_tenure_cubit.dart';
import 'package:fhcs/features/investments/presentation/bloc/investment_type/investment_type_cubit.dart';
import 'package:fhcs/features/investments/presentation/bloc/repay_investment.dart/repay_investment_cubit.dart';
import 'package:fhcs/features/loans/presentation/bloc/loan_history/loan_history_cubit.dart';
import 'package:fhcs/features/loans/presentation/bloc/loan_repayment/loan_repayment_cubit.dart';
import 'package:fhcs/features/loans/presentation/bloc/loan_request/loan_request_cubit.dart';
import 'package:fhcs/features/loans/presentation/bloc/referee_request/referee_request_cubit.dart';
import 'package:fhcs/features/loans/presentation/bloc/referees/referees_cubit.dart';
import 'package:fhcs/features/loans/presentation/bloc/request_status/request_status_cubit.dart';

class FhcsApp extends StatelessWidget {
  const FhcsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthCubit>(
          create: (context) => GetIt.I.get<AuthCubit>(),
        ),
        BlocProvider<BankListCubit>(
          create: (context) => GetIt.I.get<BankListCubit>(),
        ),
        BlocProvider<VerifyMembershipCubit>(
          create: (context) => GetIt.I.get<VerifyMembershipCubit>(),
        ),
        BlocProvider<MonthlyContributionCubit>(
          create: (context) => GetIt.I.get<MonthlyContributionCubit>(),
        ),
        BlocProvider<UserProfileCubit>(
          create: (context) => GetIt.I.get<UserProfileCubit>(),
        ),
        BlocProvider<DashboardCubit>(
          create: (context) => GetIt.I.get<DashboardCubit>(),
        ),
        BlocProvider<UserProfileCubit>(
          create: (context) => GetIt.I.get<UserProfileCubit>(),
        ),
        BlocProvider<InitiateFundingCubit>(
          create: (context) => GetIt.I.get<InitiateFundingCubit>(),
        ),
        BlocProvider<VerifyFundingCubit>(
          create: (context) => GetIt.I.get<VerifyFundingCubit>(),
        ),
        BlocProvider<TransactionsCubit>(
          create: (context) => GetIt.I.get<TransactionsCubit>(),
        ),
        BlocProvider<InitiateWithdrawalCubit>(
          create: (context) => GetIt.I.get<InitiateWithdrawalCubit>(),
        ),
        BlocProvider<RefereesCubit>(
          create: (context) => GetIt.I.get<RefereesCubit>(),
        ),
        BlocProvider<LoanRequestCubit>(
          create: (context) => GetIt.I.get<LoanRequestCubit>(),
        ),
        BlocProvider<LoanHistoryCubit>(
          create: (context) => GetIt.I.get<LoanHistoryCubit>(),
        ),
        BlocProvider<LoanApplicationsCubit>(
          create: (context) => GetIt.I.get<LoanApplicationsCubit>(),
        ),
        BlocProvider<ActiveLoansCubit>(
          create: (context) => GetIt.I.get<ActiveLoansCubit>(),
        ),
        BlocProvider<InvestmentTypeCubit>(
          create: (context) => GetIt.I.get<InvestmentTypeCubit>(),
        ),
        BlocProvider<LoanRepaymentCubit>(
          create: (context) => GetIt.I.get<LoanRepaymentCubit>(),
        ),
        BlocProvider<RefereeRequestCubit>(
          create: (context) => GetIt.I.get<RefereeRequestCubit>(),
        ),
        BlocProvider<LoanRefereeRequestCubit>(
          create: (context) => GetIt.I.get<LoanRefereeRequestCubit>(),
        ),
        BlocProvider<InvestmentRefereeRequestCubit>(
          create: (context) => GetIt.I.get<InvestmentRefereeRequestCubit>(),
        ),
        BlocProvider<InvestmentTenureCubit>(
          create: (context) => GetIt.I.get<InvestmentTenureCubit>(),
        ),
        BlocProvider<AccountDetailsCubit>(
          create: (context) => GetIt.I.get<AccountDetailsCubit>(),
        ),
        BlocProvider<CreateInvestmentCubit>(
          create: (context) => GetIt.I.get<CreateInvestmentCubit>(),
        ),
        BlocProvider<FetchInvestmentCubit>(
          create: (context) => GetIt.I.get<FetchInvestmentCubit>(),
        ),
        BlocProvider<RepayInvestmentCubit>(
          create: (context) => GetIt.I.get<RepayInvestmentCubit>(),
        ),
        BlocProvider<RequestStatusCubit>(
          create: (context) => GetIt.I.get<RequestStatusCubit>(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: false,
        fontSizeResolver: FontSizeResolvers.height,
        rebuildFactor: (old, data) {
          return true;
        },
        builder: (context, child) => MaterialApp.router(
          title: env.appName,
          debugShowCheckedModeBanner: false,
          routerConfig: AppRouter.routeConfig,
          theme: AppTheme.lightTheme(),
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          builder: (context, child) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                  textScaler: TextScaler.linear(
                      MediaQuery.of(context).size.width > 428 ? 1 : 1.2)),
              child: child!,
            );
          },
        ),
      ),
    );
  }
}
