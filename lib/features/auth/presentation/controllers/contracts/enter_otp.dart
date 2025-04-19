import 'package:flutter/material.dart';

abstract class EnterOtpControllerContract {
  late String formattedDuration;
  late bool isComplete;
  late bool isCountdownDone;
  String? email;
  TextEditingController otpController = TextEditingController();

  //Methods
  void startCountdown(int minutes);
  void onVerifyOtp();
}
