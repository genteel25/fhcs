import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:fhcs/core/components/custom_bottom_button_wrapper.dart';
import 'package:fhcs/core/components/custom_input_label.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/helpers/validator_helper.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/features/auth/presentation/controllers/contracts/create_password.dart';
import 'package:fhcs/features/auth/presentation/views/contracts/create_password.dart';
import 'package:fhcs/features/auth/presentation/widgets/loading.dart';
import 'package:fhcs/features/auth/presentation/widgets/success.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreatePasswordView extends StatelessWidget
    implements CreatePasswordViewContract {
  const CreatePasswordView({super.key, required this.controller});
  final CreatePasswordControllerContract controller;
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
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      "Create password",
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: AppColors.neutral800,
                    ),
                    4.h.heightBox,
                    AppText(
                      "Create a strong password to secure your account.",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.neutral500,
                    ),
                    24.h.heightBox,
                    SizedBox(
                      height: 244.h,
                      width: double.infinity,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 60.h,
                            width: MediaQuery.sizeOf(context).width - 40.w,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(12.r),
                                  bottomRight: Radius.circular(12.r),
                                ),
                                border: Border(
                                  left: BorderSide(
                                    color: AppColors.neutral100,
                                  ),
                                  right: BorderSide(
                                    color: AppColors.neutral100,
                                  ),
                                  bottom: BorderSide(
                                    color: AppColors.neutral100,
                                  ),
                                ),
                              ),
                              child: Column(
                                children: [
                                  12.h.heightBox,
                                  ValidatorInfoItemWidget(
                                    value: controller.hasMinCharacters,
                                    validatorInfo: "A minimum of 8 characters",
                                  ),
                                  // 8.h.heightBox,
                                  ValidatorInfoItemWidget(
                                    value: controller.hasLowercaseLetter,
                                    validatorInfo:
                                        "At least one lowercase letter",
                                  ),
                                  // 8.h.heightBox,
                                  ValidatorInfoItemWidget(
                                    value: controller.hasUppercaseLetter,
                                    validatorInfo:
                                        "At least one uppercase letter",
                                  ),
                                  // 8.h.heightBox,
                                  ValidatorInfoItemWidget(
                                    value: controller.hasMinNumber,
                                    validatorInfo: "At least one number",
                                  ),
                                  8.h.heightBox,
                                ],
                              ),
                            ),
                          ),
                          CustomInputLabelWidget(
                            "Password",
                            controller: controller.passwordController,
                            hintText: "Enter your new password",
                            showSuffix: true,
                            obscureText: controller.isObscure,
                            onTap: () => controller.onToggleObscure(),
                          ),
                        ],
                      ),
                    ),
                    16.h.heightBox,
                    CustomInputLabelWidget(
                      "Re-enter Password",
                      controller: controller.confirmPasswordController,
                      hintText: "Re-enter your password",
                      showSuffix: true,
                      obscureText: controller.isObscure,
                      onTap: () => controller.onToggleObscure(),
                      validator: (value) =>
                          ValidatorHelper.validateConfirmPassword(
                              controller.passwordController.text, value ?? ""),
                    ),
                  ],
                ),
              ),
            )
          ],
        ).paddingSymmetric(horizontal: 20.w),
      ),
      bottomNavigationBar: CustomBottomButtonWrapperWidget(
        "Continue",
        onPressed: controller.hasMinCharacters &&
                controller.hasLowercaseLetter &&
                controller.hasUppercaseLetter &&
                controller.hasMinNumber
            ? () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AppSuccessScreen(
                      title: "Account created successfully",
                      subtitle:
                          "Your account has been created successfully. Click the button below to login",
                      buttonLabel: "Continue to Login",
                      onContinue: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AppLoadingScreen(),
                        ),
                      ),
                    ),
                  ),
                )
            : null,
      ),
    );
  }
}

class ValidatorInfoItemWidget extends StatelessWidget {
  const ValidatorInfoItemWidget({
    super.key,
    required this.value,
    required this.validatorInfo,
  });
  final bool value;
  final String validatorInfo;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: (e) {},
        ),
        8.w.widthBox,
        AppText(
          validatorInfo,
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: AppColors.neutral500,
        ),
      ],
    );
  }
}
