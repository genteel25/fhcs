import 'package:awesome_extensions/awesome_extensions.dart' hide NavigatorExt;
import 'package:fhcs/core/components/custom_button.dart';
import 'package:fhcs/core/components/custom_input_label.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/helpers/contracts/iwidget_helper.dart';
import 'package:fhcs/core/router/route_constants.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/core/utils/app_dialog.dart';
import 'package:fhcs/core/utils/app_sheets.dart';
import 'package:fhcs/features/auth/presentation/bloc/auth/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/contracts/enter_otp.dart';
import 'contracts/enter_otp.dart';

class EnterOtpView extends StatelessWidget implements EnterOtpViewContract {
  const EnterOtpView({super.key, required this.controller});
  final EnterOtpControllerContract controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            16.h.heightBox,
            Image.asset("assets/images/primary_logo.png", height: 48.h)
                .animate()
                .slideX(
                    begin: 1,
                    end: 0,
                    duration: const Duration(milliseconds: 200)),
            24.h.heightBox,
            Expanded(
              child: Column(
                children: [
                  AppText(
                    "Enter the 6-digit OTP",
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColors.neutral800,
                  ),
                  4.h.heightBox,
                  RichText(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(
                      text: "An otp has been sent to your email ",
                      style: GoogleFonts.onest(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.neutral500,
                      ),
                      children: [
                        TextSpan(
                            text: "'${controller.email}'",
                            style: GoogleFonts.onest(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: AppColors.neutral500,
                            ))
                      ],
                    ),
                  ),
                  24.h.heightBox,
                  CustomInputLabelWidget(
                    "OTP",
                    controller: controller.otpController,
                    hintText: "Enter OTP",
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.done,
                    validator:
                        ValidationBuilder().required().minLength(6).build(),
                    formatter: [
                      LengthLimitingTextInputFormatter(6),
                    ],
                  ),
                  const Spacer(),
                  AppText(
                    controller.isCountdownDone
                        ? "Resent"
                        : "Resend OTP in ${controller.formattedDuration}",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primary700,
                  ).alignAtCenter(),
                  24.h.heightBox,
                  SizedBox(
                    height: 44.h,
                    width: double.infinity,
                    child: BlocListener<AuthCubit, AuthState>(
                      listener: (context, state) {
                        state.whenOrNull(
                          verifyLoading: () =>
                              AppDialog.showAppProgressDialog(context),
                          verifySuccess: (response) {
                            context.pop();
                            AppSheets.otpVerificationSuccessSheet(
                              context,
                              onPressed: () {
                                context.pop();
                                context
                                    .pushNamed(RouteConstants.nextOfKinRoute);
                              },
                            );
                          },
                          verifyFailure: (error) {
                            context.pop();
                            GetIt.I
                                .get<IWidgetHelper>()
                                .showErrorToast(context, message: error);
                          },
                        );
                      },
                      child: CustomButtonWidget(
                        "Continue",
                        onPressed: controller.isComplete
                            ? controller.onVerifyOtp
                            : null,
                      ),
                    ),
                  ),
                  16.h.heightBox,
                  SizedBox(
                    height: 44.h,
                    width: double.infinity,
                    child: CustomButtonWidget(
                      "Go back",
                      backgroundColor: AppColors.primary100,
                      onPressed: () => context.pop(),
                      textColor: AppColors.primary700,
                    ),
                  ),
                  16.h.heightBox,
                ],
              )
                  .animate()
                  .fade(duration: const Duration(milliseconds: 300))
                  .slideY(
                    duration: const Duration(milliseconds: 300),
                    begin: 1,
                    end: 0,
                  ),
            ),
          ],
        ).paddingSymmetric(horizontal: 20.w),
      ),
    );
  }
}
