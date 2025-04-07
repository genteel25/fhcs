import 'dart:async';

import 'package:flutter/material.dart';

import '../views/contracts/enter_otp.dart';
import '../views/enter_otp.dart';
import 'contracts/enter_otp.dart';

class EnterOtpScreen extends StatefulWidget {
  static const String route = 'forgot_password';
  const EnterOtpScreen({super.key});

  @override
  State<EnterOtpScreen> createState() => EnterOtpController();
}

class EnterOtpController extends State<EnterOtpScreen>
    implements EnterOtpControllerContract {
  late EnterOtpViewContract view;
  @override
  TextEditingController otpController = TextEditingController();
  Timer? timer;
  @override
  String formattedDuration = "00:00";

  @override
  bool isCountdownDone = false;

  @override
  bool isComplete = false;

  @override
  void initState() {
    super.initState();
    view = EnterOtpView(controller: this);
    startCountdown(5);
    onOtpControllerListener();
  }

  @override
  void startCountdown(int minutes) {
    int totalSeconds = minutes * 60;
    setState(() {
      isCountdownDone = false;
    });

    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      int mins = totalSeconds ~/ 60;
      int secs = totalSeconds % 60;
      setState(() {
        formattedDuration =
            '${mins.toString().padLeft(2, '0')}:${secs.toString().padLeft(2, '0')}'; // Example: 4:59, 4:58...
      });

      if (totalSeconds == 0) {
        setState(() {
          isCountdownDone = true;
        });
        timer.cancel();
        print("Countdown finished!");
      }

      totalSeconds--;
    });
  }

  void onOtpControllerListener() {
    otpController.addListener(() {
      if (otpController.text.length == 6) {
        setState(() {
          isComplete = true;
        });
      } else {
        setState(() {
          isComplete = false;
        });
      }
    });
  }

  @override
  void dispose() {
    if (timer != null) {
      timer!.cancel();
    }
    otpController
      ..removeListener(onOtpControllerListener)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}
