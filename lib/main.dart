// final FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;
// FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//     FlutterLocalNotificationsPlugin();

import 'package:easy_localization/easy_localization.dart';
import 'package:fhcs/config/flavor/app_flavor.dart';
import 'package:fhcs/fhcs_app.dart';
import 'package:flutter/material.dart';

void main() async {
  BuildFlavor.init(
    baseUrl: const String.fromEnvironment('BASE_URL', defaultValue: ""),
    appName: const String.fromEnvironment('APP_NAME', defaultValue: ""),
    encKey: const String.fromEnvironment('ASDKJDKLKFDLKFEK', defaultValue: ""),
    vector:
        const String.fromEnvironment('KJEFKREKFJSNKLJFSVC', defaultValue: ""),
  );
  // await AppInitializer.initGetIt();
  // if (kDebugMode) {}
  // await Firebase.initializeApp();
  // if (!kDebugMode) {
  //   FlutterError.onError = (errorDetails) {
  //     FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
  //   };
  // }
  // if (!kDebugMode) {
  //   PlatformDispatcher.instance.onError = (error, stack) {
  //     FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
  //     return true;
  //   };
  // }

  // await FirebaseMessaging.instance.requestPermission();
  // FirebaseMessaging.instance.onTokenRefresh.listen((fcmToken) {
  //   // log("fcmToken: $fcmToken");
  // }).onError((err) {
  //   debugPrint(err);
  // });

  // const AndroidNotificationChannel channel = AndroidNotificationChannel(
  //   'high_importance_channel', // id
  //   'Africa Exchange', // title
  //   importance: Importance.high,
  // );

  // FirebaseMessaging.onMessage.listen((message) {
  //   final notification = message.notification;
  //   if (notification == null) return;

  //   // channel.showBadge
  //   FlutterLocalNotificationsPlugin().show(
  //     notification.hashCode,
  //     notification.title,
  //     notification.body,
  //     NotificationDetails(
  //         android: AndroidNotificationDetails(channel.id, channel.name,
  //             channelDescription: channel.description, icon: 'ic_notification'),
  //         iOS: const DarwinNotificationDetails()),
  //   );
  // });

  // await flutterLocalNotificationsPlugin
  //     .resolvePlatformSpecificImplementation<
  //         AndroidFlutterLocalNotificationsPlugin>()
  //     ?.createNotificationChannel(channel);
  // const AndroidInitializationSettings initializationSettingsAndroid =
  //     AndroidInitializationSettings('ic_notification');

  // const DarwinInitializationSettings initializationSettingsDarwom =
  //     DarwinInitializationSettings(
  //   requestAlertPermission: true,
  //   requestBadgePermission: false,
  //   requestSoundPermission: false,
  //   defaultPresentAlert: true,
  //   defaultPresentSound: true,
  // );

  // const InitializationSettings initializationSettings = InitializationSettings(
  //   android: initializationSettingsAndroid,
  //   iOS: initializationSettingsDarwom,
  //   macOS: null,
  // );
  // await flutterLocalNotificationsPlugin.initialize(
  //   initializationSettings,
  //   //onSelectNotification: onSelectNotification,
  // );

  // // / Update the iOS foreground notification presentation options to allow
  // // / heads up notifications.
  // await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
  //   alert: true,
  //   badge: true,
  //   sound: true,
  // );

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('fr'), Locale('sw')],
      path: 'assets/translations',
      fallbackLocale: const Locale('en'),
      startLocale: const Locale('en'),
      child: const FhcsApp(),
    ),
  );
}
