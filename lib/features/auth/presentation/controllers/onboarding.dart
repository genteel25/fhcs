import 'package:fhcs/features/auth/presentation/controllers/contracts/onboarding.dart';
import 'package:fhcs/features/auth/presentation/views/contracts/onboarding.dart';
import 'package:fhcs/features/auth/presentation/views/onboarding.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  static const String route = 'forgot_password';
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => OnboardingController();
}

class OnboardingController extends State<OnboardingScreen>
    implements OnboardingControllerContract {
  late OnboardingViewContract view;

  @override
  void initState() {
    super.initState();
    view = OnboardingView(controller: this);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}
