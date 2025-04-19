import 'dart:async';

import 'package:fhcs/core/storage/contract/istorage.dart';
import 'package:fhcs/core/storage/storage_constant.dart';
import 'package:fhcs/features/auth/presentation/bloc/auth/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../views/contracts/enter_otp.dart';
import '../views/enter_otp.dart';
import 'contracts/enter_otp.dart';

class EnterOtpScreen extends StatefulWidget {
  const EnterOtpScreen({super.key, required this.email});
  final String email;

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
  String? email;

  @override
  void initState() {
    super.initState();
    view = EnterOtpView(controller: this);
    startCountdown(5);
    onOtpControllerListener();
    email = widget.email;
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
  void onVerifyOtp() async {
    final token = await GetIt.I
        .get<IAppStorage>()
        .fetchString(StorageConstant.accessToken);
    final payload = {
      "email": email,
      "otp": otpController.text,
      "token": token,
    };
    if (mounted) {
      context.read<AuthCubit>().verifyOtp(payload);
    }
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
