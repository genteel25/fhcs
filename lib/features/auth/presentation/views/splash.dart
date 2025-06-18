import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/features/auth/presentation/controllers/contracts/splash.dart';
import 'package:fhcs/features/auth/presentation/views/contracts/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashView extends StatelessWidget implements SplashViewContract {
  const SplashView({super.key, required this.controller});
  final SplashControllerContract controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.primary700,
        ),
        child: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                "assets/images/loading_shadow.png",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: FadeTransition(
                opacity: controller.controller,
                child: Image.asset(
                  "assets/images/loading_pattern.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              child: Image.asset("assets/images/white_logo.png", height: 72.h)
                  .animate()
                  .slideX(
                      begin: 1,
                      end: 0,
                      duration: const Duration(milliseconds: 200)),
            ),
          ],
        ),
      ),
    );
  }
}
