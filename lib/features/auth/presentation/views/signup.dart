import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:fhcs/core/components/custom_button.dart';
import 'package:fhcs/core/components/custom_outlined_button.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/helpers/contracts/iwidget_helper.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/features/auth/presentation/bloc/auth/auth_cubit.dart';
import 'package:fhcs/features/auth/presentation/controllers/contracts/signup.dart';
import 'package:fhcs/features/auth/presentation/views/contracts/signup.dart';
import 'package:fhcs/features/auth/presentation/widgets/linear_indicator.dart';
import 'package:fhcs/features/auth/presentation/widgets/second_kyc_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:loader_overlay/loader_overlay.dart';

import '../widgets/first_kyc_info.dart';

class SignUpView extends StatelessWidget implements SignUpViewContract {
  const SignUpView({super.key, required this.controller});
  final SignUpControllerContract controller;
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
            AppText(
              "Create an account",
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: AppColors.neutral800,
            )
                .animate()
                .fade(duration: const Duration(milliseconds: 300))
                .slideY(
                  duration: const Duration(milliseconds: 300),
                  begin: 1,
                  end: 0,
                ),
            4.h.heightBox,
            AppText(
              "Create your account to get started",
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: AppColors.neutral500,
            )
                .animate()
                .fade(duration: const Duration(milliseconds: 300))
                .slideY(
                  duration: const Duration(milliseconds: 300),
                  begin: 1,
                  end: 0,
                ),
            24.h.heightBox,
            LinearIndicatorWidget(
              firstPercent: controller.firstPercent,
              secondPercent: controller.secondPercent,
              isFirstPercentComplete: controller.isFirstPercentComplete,
              currentIndex: controller.currentIndex,
            )
                .animate()
                .fade(duration: const Duration(milliseconds: 300))
                .slideY(
                  duration: const Duration(milliseconds: 300),
                  begin: 1,
                  end: 0,
                ),
            12.h.heightBox,
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  12.h.heightBox,
                  controller.isFirstPercentComplete
                      ? SecondKycInfoWidget(
                          formKey: controller.secondFormKey,
                          onSelectMaritalStatus:
                              controller.onSelectMaritalStatus,
                          onPickDate: () => controller.onPickDateOfBirth(),
                          dobController: controller.dobController,
                          residentialAddressController:
                              controller.residentialAddressController,
                          permanentAddressController:
                              controller.permanentAddressController,
                          deploymentOfficeController:
                              controller.deploymentOfficeController,
                          officeAddressController:
                              controller.officeAddressController,
                          onSelectStateOfOrigin:
                              controller.onSelectStateOfOrigin,
                          onSelectSalaryGrade: controller.onSelectSalaryGrade,
                          onPickEmploymentDate: () =>
                              controller.onPickEmploymentDate(),
                          employmentDateController:
                              controller.employmentDateController,
                          employmentStatus: controller.employmentStatus,
                          onSelectEmploymentStatus:
                              controller.onSelectEmploymentStatus,
                          onSelectSalaryStep: controller.onSelectSalaryStep,
                        )
                          .animate()
                          .fade(duration: const Duration(milliseconds: 300))
                          .slideY(
                            duration: const Duration(milliseconds: 300),
                            begin: 1,
                            end: 0,
                          )
                      : FirstKycInfoWidget(
                          emailController: controller.emailController,
                          phoneNumberController:
                              controller.phoneNumberController,
                          irNumberController: controller.irNumberController,
                          fullNameController: controller.fullNameController,
                          pickedFile: controller.pickedImagePath,
                          onPickFile: () => controller.uploadPassport(),
                          onClear: () => controller.onClearPassport(),
                          formKey: controller.formKey,
                        )
                          .animate()
                          .fade(duration: const Duration(milliseconds: 300))
                          .slideY(
                            duration: const Duration(milliseconds: 300),
                            begin: 1,
                            end: 0,
                          ),
                ],
              ),
            ))
          ],
        ).paddingSymmetric(horizontal: 20.w),
      ),
      bottomNavigationBar: SafeArea(
        top: false,
        child: Padding(
          padding: MediaQuery.viewInsetsOf(context),
          child: controller.isFirstPercentComplete
              ? Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    4.h.heightBox,
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 44.h,
                            child: CustomOutlinedButtonWidget(
                              "Go back",
                              onPressed: () => controller.onGoBack(),
                            ),
                          ),
                        ),
                        10.w.widthBox,
                        Expanded(
                          child: SizedBox(
                            height: 44.h,
                            child: BlocListener<AuthCubit, AuthState>(
                              listener: (context, state) {
                                state.whenOrNull(
                                  loading: () => context.loaderOverlay.show(),
                                  success: (response) {
                                    context.loaderOverlay.hide();
                                    controller.onSecondContinue();
                                  },
                                  failure: (error) {
                                    context.loaderOverlay.hide();
                                    GetIt.I
                                        .get<IWidgetHelper>()
                                        .showErrorToast(context, message: error);
                                  },
                                );
                              },
                              child: CustomButtonWidget(
                                "Continue",
                                onPressed: controller.secondPercent.length > 10
                                    ? () => controller.onSubmit()
                                    : null,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ).paddingSymmetric(horizontal: 20),
                    // 16.h.heightBox,
                  ],
                )
              : Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    4.h.heightBox,
                    Container(
                      height: 44.h,
                      width: double.infinity,
                      padding: REdgeInsets.symmetric(horizontal: 20),
                      child: CustomButtonWidget(
                        "Continue",
                        onPressed: controller.firstPercent.length == 5
                            ? () => controller.onContinue()
                            : null,
                      ),
                    ),
                    16.h.heightBox,
                  ],
                ),
        ),
      ),
    );
  }
}
