import 'package:easy_localization/easy_localization.dart';
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
import 'package:fhcs/features/auth/presentation/bloc/auth/auth_cubit.dart';
import 'package:fhcs/features/auth/presentation/bloc/bank_list/bank_list_cubit.dart';
import 'package:fhcs/features/auth/repository/auth_repository.dart';
import 'package:fhcs/features/auth/repository/contract/iauth_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

class AppInitializer {
  static late GetIt instanceLocator;
  static late bool? firstTime;
  static bool isLoggedIn = false;
  static late String? email;
  static late String? password;
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
    await create();
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
  }

  static initRepos() {
    instanceLocator.registerLazySingleton<IAuthRepository>(
      () => AuthRepository(
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
