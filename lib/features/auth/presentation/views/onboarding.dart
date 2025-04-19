import 'package:awesome_extensions/awesome_extensions.dart' hide NavigatorExt;
import 'package:fhcs/core/components/custom_bouncy_wrapper.dart';
import 'package:fhcs/core/components/custom_button.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/helpers/contracts/iwidget_helper.dart';
import 'package:fhcs/core/router/route_constants.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/features/auth/presentation/controllers/contracts/onboarding.dart';
import 'package:fhcs/features/auth/presentation/views/contracts/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

class OnboardingView extends StatelessWidget implements OnboardingViewContract {
  const OnboardingView({super.key, required this.controller});
  final OnboardingControllerContract controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Positioned.fill(
              child: SvgPicture.asset(
                "assets/svgs/onboarding_gradient.svg",
                fit: BoxFit.fill,
              ),
            ),
            // Positioned.fill(
            //   child: Image.asset("assets/images/dashboard_preview.png"),
            // ),

            Positioned.fill(
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 19.h),
                    Image.asset("assets/images/logo.png", height: 48.h),
                    SizedBox(height: 65.h),
                    SizedBox(
                      height: 348.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            top: 0,
                            child: Image.asset(
                                "assets/images/dashboard_preview.png",
                                height: 319.h),
                          ),
                          Positioned(
                            bottom: 0.h,
                            child: SpringFloatingWrapper(
                              floatRange: 8,
                              duration: const Duration(seconds: 3),
                              child: Opacity(
                                opacity: 0.5,
                                child: Image.asset(
                                  "assets/images/transaction_stack.png",
                                  width: 228.h,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 7.h,
                            child: SpringFloatingWrapper(
                              floatRange: 6,
                              duration: const Duration(seconds: 3),
                              child: Opacity(
                                opacity: 0.7,
                                child: Image.asset(
                                  "assets/images/transaction_stack.png",
                                  width: 260.h,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 15.h,
                            child: SpringFloatingWrapper(
                              floatRange: 4,
                              duration: const Duration(seconds: 3),
                              child: Container(
                                decoration: BoxDecoration(boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withValues(alpha: 0.17),
                                    offset: const Offset(0, -24),
                                    blurRadius: 20.r,
                                    spreadRadius: 8.r,
                                  )
                                ]),
                                child: Image.asset(
                                  "assets/images/transaction_stack.png",
                                  height: 60.h,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    28.h.heightBox,
                    AppText(
                      "Welcome to",
                      textAlign: TextAlign.center,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                    AppText(
                      "FHCS Cooperative",
                      textAlign: TextAlign.center,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                    4.h.heightBox,
                    AppText(
                      "Manage your savings, investments, and loans with ease",
                      textAlign: TextAlign.center,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ).paddingSymmetric(horizontal: 60.w),
                    // 45.h.heightBox,
                    const Spacer(),
                    Row(
                      children: [
                        Expanded(
                          child: CustomButtonWidget("Login",
                              textColor: AppColors.lightest, onPressed: () {
                            // GetIt.I.get<IWidgetHelper>().showSuccessToast(
                            //     context,
                            //     message: "Hello world");
                            context.pushNamed(RouteConstants.loginRoute);
                          }),
                        ),
                        16.w.widthBox,
                        Expanded(
                          child: CustomButtonWidget(
                            "Sign Up",
                            textColor: AppColors.primary700,
                            backgroundColor: AppColors.primary100,
                            onPressed: () =>
                                context.pushNamed(RouteConstants.signUpRoute),
                          ),
                        ),
                      ],
                    ).paddingSymmetric(horizontal: 20.w),
                    16.h.heightBox
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
