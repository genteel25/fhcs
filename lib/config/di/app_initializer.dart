import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

import 'package:fhcs/core/api/api_services.dart';
import 'package:fhcs/core/api/api_services_impl.dart';
import 'package:fhcs/core/api/network/network_info.dart';
import 'package:fhcs/core/api/service/contracts/api_client.dart';
import 'package:fhcs/core/api/service/dio_client.dart';
import 'package:fhcs/core/helpers/contracts/iwidget_helper.dart';
import 'package:fhcs/core/helpers/widget_helper.dart';
import 'package:fhcs/core/storage/cache_storage.dart';
import 'package:fhcs/core/storage/contract/icache.dart';
import 'package:fhcs/core/storage/contract/ilocal.dart';
import 'package:fhcs/core/storage/contract/istorage.dart';
import 'package:fhcs/core/storage/local_storage.dart';
import 'package:fhcs/core/storage/storage.dart';
import 'package:fhcs/core/storage/storage_constant.dart';
import 'package:fhcs/features/accounts/presentation/bloc/account_details/account_details_cubit.dart';
import 'package:fhcs/features/accounts/repository/account_repository.dart';
import 'package:fhcs/features/accounts/repository/contracts/iaccount_repository.dart';
import 'package:fhcs/features/auth/presentation/bloc/auth/auth_cubit.dart';
import 'package:fhcs/features/auth/presentation/bloc/bank_list/bank_list_cubit.dart';
import 'package:fhcs/features/auth/presentation/bloc/monthly_contribution/monthly_contribution_cubit.dart';
import 'package:fhcs/features/auth/presentation/bloc/verify_membership/verify_membership_cubit.dart';
import 'package:fhcs/features/auth/repository/auth_repository.dart';
import 'package:fhcs/features/auth/repository/contract/iauth_repository.dart';
import 'package:fhcs/features/home/presentation/bloc/dashboard/dashboard_cubit.dart';
import 'package:fhcs/features/home/presentation/bloc/initiate_funding/initiate_funding_cubit.dart';
import 'package:fhcs/features/home/presentation/bloc/initiate_withdrawal/initiate_withdrawal_cubit.dart';
import 'package:fhcs/features/home/presentation/bloc/transactions/transactions_cubit.dart';
import 'package:fhcs/features/home/presentation/bloc/user_profile/user_profile_cubit.dart';
import 'package:fhcs/features/home/presentation/bloc/verify_funding/verify_funding_cubit.dart';
import 'package:fhcs/features/home/repository/contract/ihome_repository.dart';
import 'package:fhcs/features/home/repository/home_repository.dart';
import 'package:fhcs/features/investments/presentation/bloc/create_investment/create_investment_cubit.dart';
import 'package:fhcs/features/investments/presentation/bloc/fetch_investment/fetch_investment_cubit.dart';
import 'package:fhcs/features/investments/presentation/bloc/investment_tenure/investment_tenure_cubit.dart';
import 'package:fhcs/features/investments/presentation/bloc/investment_type/investment_type_cubit.dart';
import 'package:fhcs/features/investments/presentation/bloc/repay_investment.dart/repay_investment_cubit.dart';
import 'package:fhcs/features/investments/repository/contract/iinvestment_repository.dart';
import 'package:fhcs/features/investments/repository/investment_repository.dart';
import 'package:fhcs/features/loans/presentation/bloc/loan_history/loan_history_cubit.dart';
import 'package:fhcs/features/loans/presentation/bloc/loan_repayment/loan_repayment_cubit.dart';
import 'package:fhcs/features/loans/presentation/bloc/loan_request/loan_request_cubit.dart';
import 'package:fhcs/features/loans/presentation/bloc/referee_request/referee_request_cubit.dart';
import 'package:fhcs/features/loans/presentation/bloc/referees/referees_cubit.dart';
import 'package:fhcs/features/loans/presentation/bloc/request_status/request_status_cubit.dart';
import 'package:fhcs/features/loans/repository/contract/iloan_repository.dart';
import 'package:fhcs/features/loans/repository/loan_repository.dart';

class AppInitializer {
  static late GetIt instanceLocator;
  static late bool? firstTime;
  static bool isLoggedIn = false;
  static late String? email;
  static late String? password;
  static late String? accessToken;
  static late bool? isDarkMode, isRememberMe;

  AppInitializer._();

  static void close() {
    instanceLocator.reset();
  }

  static Future create() async {
    if (kDebugMode) {
      // Bloc.observer = AppBlocObserver();
    }
    WidgetsFlutterBinding.ensureInitialized();
    await ScreenUtil.ensureScreenSize();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    await EasyLocalization.ensureInitialized();
    // setLocaleMessages('en', MyCustomMessages());

    initializeDi();
  }

  static dynamic initGetIt() async {
    instanceLocator = GetIt.I;
    instanceLocator.allowReassignment = true;
    await create();
    accessToken = await instanceLocator
        .get<IAppStorage>()
        .fetchString(StorageConstant.accessToken);
    log("Access Token: $accessToken");
    // firstTime = await GetIt.I.get<LocalStorage>().getFirstTime();
    // // isLoggedIn = await GetIt.I.get<LocalStorage>().isLoggedIn();
    // email = await GetIt.I.get<LocalStorage>().getEmail();
    // password = await GetIt.I.get<LocalStorage>().getPassword();
    // isDarkMode = await GetIt.I.get<LocalStorage>().isDarkMode();
    // MixpanelConfig.initMixpanel();
  }

  static dynamic logout() async {
    try {
      await instanceLocator.reset();
      await initGetIt();
    } catch (e) {}
  }

  static initSecurity() {
    // instanceLocator.registerSingleton<ICryptoSystem>(
    //     AESCryptoSystem(key: env.encKey, vector: env.vector));
    // instanceLocator.registerSingleton<CryptoSystemImpl>(
    //     CryptoSystemImpl(cryptoSystem: instanceLocator()));
  }

  static initHelper() {
    instanceLocator.registerSingleton<IWidgetHelper>(WidgetHelper());
  }

  static initBlocs() {
    instanceLocator.registerLazySingleton<AuthCubit>(() => AuthCubit(
          authRepository: instanceLocator(),
        ));
    instanceLocator.registerLazySingleton<BankListCubit>(() => BankListCubit(
          authRepository: instanceLocator(),
        ));
    instanceLocator.registerLazySingleton<VerifyMembershipCubit>(
        () => VerifyMembershipCubit(
              repository: instanceLocator(),
            ));
    instanceLocator.registerLazySingleton<MonthlyContributionCubit>(
        () => MonthlyContributionCubit(
              authRepository: instanceLocator(),
            ));
    instanceLocator
        .registerLazySingleton<UserProfileCubit>(() => UserProfileCubit(
              homeRepository: instanceLocator(),
            ));
    instanceLocator.registerLazySingleton<DashboardCubit>(() => DashboardCubit(
          homeRepository: instanceLocator(),
        ));
    instanceLocator
        .registerLazySingleton<InitiateFundingCubit>(() => InitiateFundingCubit(
              homeRepository: instanceLocator(),
            ));
    instanceLocator
        .registerLazySingleton<VerifyFundingCubit>(() => VerifyFundingCubit(
              homeRepository: instanceLocator(),
            ));
    instanceLocator
        .registerLazySingleton<TransactionsCubit>(() => TransactionsCubit(
              homeRepository: instanceLocator(),
            ));
    instanceLocator.registerLazySingleton<InitiateWithdrawalCubit>(
        () => InitiateWithdrawalCubit(
              homeRepository: instanceLocator(),
            ));
    instanceLocator.registerLazySingleton<RefereesCubit>(() => RefereesCubit(
          loanRepository: instanceLocator(),
        ));
    instanceLocator
        .registerLazySingleton<LoanRequestCubit>(() => LoanRequestCubit(
              loanRepository: instanceLocator(),
            ));
    instanceLocator
        .registerLazySingleton<LoanHistoryCubit>(() => LoanHistoryCubit(
              loanRepository: instanceLocator(),
            ));
    instanceLocator.registerLazySingleton<LoanApplicationsCubit>(
        () => LoanApplicationsCubit(
              loanRepository: instanceLocator(),
            ));
    instanceLocator
        .registerLazySingleton<ActiveLoansCubit>(() => ActiveLoansCubit(
              loanRepository: instanceLocator(),
            ));
    instanceLocator
        .registerLazySingleton<InvestmentTypeCubit>(() => InvestmentTypeCubit(
              repository: instanceLocator(),
            ));
    instanceLocator
        .registerLazySingleton<LoanRepaymentCubit>(() => LoanRepaymentCubit(
              repository: instanceLocator(),
            ));
    instanceLocator
        .registerLazySingleton<InvestmentTypeCubit>(() => InvestmentTypeCubit(
              repository: instanceLocator(),
            ));
    instanceLocator
        .registerLazySingleton<RefereeRequestCubit>(() => RefereeRequestCubit(
              repository: instanceLocator(),
            ));
    instanceLocator.registerLazySingleton<LoanRefereeRequestCubit>(
        () => LoanRefereeRequestCubit(
              repository: instanceLocator(),
            ));
    instanceLocator.registerLazySingleton<InvestmentRefereeRequestCubit>(
        () => InvestmentRefereeRequestCubit(
              repository: instanceLocator(),
            ));
    instanceLocator.registerLazySingleton<InvestmentTenureCubit>(
        () => InvestmentTenureCubit(
              repository: instanceLocator(),
            ));
    instanceLocator
        .registerLazySingleton<AccountDetailsCubit>(() => AccountDetailsCubit(
              repository: instanceLocator(),
            ));
    instanceLocator.registerLazySingleton<CreateInvestmentCubit>(
        () => CreateInvestmentCubit(
              repository: instanceLocator(),
            ));
    instanceLocator
        .registerLazySingleton<FetchInvestmentCubit>(() => FetchInvestmentCubit(
              repository: instanceLocator(),
            ));
    instanceLocator
        .registerLazySingleton<RepayInvestmentCubit>(() => RepayInvestmentCubit(
              repository: instanceLocator(),
            ));
    instanceLocator
        .registerLazySingleton<RequestStatusCubit>(() => RequestStatusCubit(
              repository: instanceLocator(),
            ));
  }

  static initRepos() {
    instanceLocator.registerLazySingleton<IAuthRepository>(
      () => AuthRepository(
        localStorage: instanceLocator(),
        apiServices: instanceLocator(),
      ),
    );
    instanceLocator.registerLazySingleton<IHomeRepository>(
      () => HomeRepository(
        localStorage: instanceLocator(),
        apiServices: instanceLocator(),
      ),
    );
    instanceLocator.registerLazySingleton<ILoanRepository>(
      () => LoanRepository(
        localStorage: instanceLocator(),
        apiServices: instanceLocator(),
      ),
    );
    instanceLocator.registerLazySingleton<IInvestmentRepository>(
      () => InvestmentRepository(
        localStorage: instanceLocator(),
        apiServices: instanceLocator(),
      ),
    );
    instanceLocator.registerLazySingleton<IAccountRepository>(
      () => AccountRepository(
        localStorage: instanceLocator(),
        apiServices: instanceLocator(),
      ),
    );
  }

  static initLocalDataSources() {
    //data sources
    instanceLocator.registerLazySingleton<ICacheStorage>(
      () => CacheStorage(),
    );
    instanceLocator.registerLazySingleton<IAppStorage>(
      () => AppStorage(cache: instanceLocator(), local: instanceLocator()),
    );
    instanceLocator.registerLazySingleton<ILocalStorage>(
      () => LocalStorage(),
    );
  }

  static initRemoteDataSources() {
    instanceLocator
        .registerLazySingleton<NetworkInfo>(() => NetworkInfoImplementation());
    instanceLocator.registerLazySingleton<IApiClient>(
      () => DioClient(instanceLocator()),
    );
    instanceLocator.registerLazySingleton<ApiServices>(
      () => ApiServicesImpl(
        apiClient: instanceLocator(),
      ),
    );
  }

  static initGlobalVariable() {
    // instanceLocator.registerSingleton<String>(null, instanceName: 'isLoggedIn');
    // instanceLocator.pushNewScope(
    //   init: (getIt) => getIt.registerLazySingleton<bool>(
    //     () => false,
    //   ),
    //   scopeName: 'isLoggedIn',
    // );
  }

  static initializeDi() {
    initSecurity();
    initLocalDataSources();
    initRemoteDataSources();
    initRepos();
    initBlocs();
    initHelper();
  }

  static void disposeInstance<T extends Bloc>(T blocInstance) {
    instanceLocator.unregister(instance: blocInstance);
  }
}
