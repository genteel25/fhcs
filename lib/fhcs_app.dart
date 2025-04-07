import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:fhcs/config/flavor/app_flavor.dart';
import 'package:fhcs/core/router/router.dart';
import 'package:fhcs/core/ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loader_overlay/loader_overlay.dart';

class FhcsApp extends StatelessWidget {
  const FhcsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
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
        // darkTheme: AppTheme.dark,
        // themeMode: data == null
        //     ? ThemeMode.light
        //     : data == true
        //         ? ThemeMode.light
        //         : ThemeMode.dark,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        builder: (context, child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(
                textScaler: TextScaler.linear(
                    MediaQuery.of(context).size.width > 428 ? 1 : 1.2)),
            child: GlobalLoaderOverlay(
              overlayColor: Colors.white.withValues(alpha: 1),
              // overlayOpacity: 0.2,
              // useDefaultLoading: false,
              overlayWholeScreen: true,
              overlayWidgetBuilder: (context) => BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
                child: Center(
                    // child: const LoadingWidget().applySize(width: 60.sp),
                    ),
              ),
              child: child!,
            ),
          );
        },
      ),
    );
  }
}
