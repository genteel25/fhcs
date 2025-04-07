import 'package:awesome_extensions/awesome_extensions.dart' hide NavigatorExt;
import 'package:fhcs/core/components/custom_bottom_button_wrapper.dart';
import 'package:fhcs/core/components/custom_input_label.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/router/route_constants.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/features/auth/presentation/controllers/contracts/kyc.dart';
import 'package:fhcs/features/auth/presentation/views/contracts/kyc.dart';
import 'package:fhcs/core/components/custom_slider.dart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class KycView extends StatelessWidget implements KycViewContract {
  const KycView({super.key, required this.controller});
  final KycControllerContract controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              40.h.heightBox,
              // Image.asset("assets/images/primary_logo.png", height: 48.h)
              //     .animate()
              //     .slideX(
              //         begin: 1,
              //         end: 0,
              //         duration: const Duration(milliseconds: 200)),
              // 24.h.heightBox,
              AppText(
                "Set your preferred monthly contribution",
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: AppColors.neutral800,
              ),
              4.h.heightBox,
              AppText(
                "Monthly contribution will be taken out of your monthly salary into your savings and investment account.",
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: AppColors.neutral500,
              ),
              24.h.heightBox,
              Container(
                padding: REdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: AppColors.gold600,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: AppText(
                  "Investment account can take up to 99% of the contribution, while savings take 1%, but savings cannot be zero. Savings accounts cannot also take more than 50% of the contribution",
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: AppColors.gold800,
                ),
              ),
              16.h.heightBox,
              CustomInputLabelWidget(
                "How much do want to contribute monthly?",
                controller: controller.monthlyContributionController,
                hintText: "N2,000",
              ),
              16.h.heightBox,
              CustomInputLabelWidget(
                "Preferred % into savings",
                isReadOnly: true,
                controller: controller.percentSavingsController,
                hintText: "Enter percentage",
              ),
              if (controller.initialSavingsPercent != "0") 8.h.heightBox,
              if (controller.initialSavingsPercent != "0")
                AppText(
                  controller.initialSavingsPercent,
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: AppColors.neutral500,
                ),
              8.h.heightBox,
              CustomSlider(
                max: 100,
                min: 1,
                step: 25,
                maxSlideLimit: 50,
                value: 100 -
                    double.parse(
                        (controller.percentInvestmentController.text.isEmpty
                                ? "0"
                                : controller.percentInvestmentController.text)
                            .replaceAll("%", "")),
                isSlidingEnabled:
                    controller.monthlyContributionController.text.isNotEmpty,
                onChanged: (percent) => controller
                    .onChangeSavingPercent(percent.toInt().toString()),
              ),
              49.h.heightBox,
              CustomInputLabelWidget(
                isReadOnly: true,
                "Preferred % into investment",
                controller: controller.percentInvestmentController,
                hintText: "Enter percentage",
              ),
              if (controller.initialInvestmentPercent != "0") 8.h.heightBox,
              if (controller.initialInvestmentPercent != "0")
                AppText(
                  controller.initialInvestmentPercent,
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: AppColors.neutral500,
                ),
              8.h.heightBox,
              CustomSlider(
                max: 100,
                min: 0,
                step: 25,
                maxSlideLimit: 100 -
                    double.parse(
                      (controller.percentSavingsController.text.isEmpty
                              ? "0"
                              : controller.percentSavingsController.text)
                          .replaceAll("%", ""),
                    ),
                value: 100 -
                    double.parse(
                        (controller.percentSavingsController.text.isEmpty
                                ? "0"
                                : controller.percentSavingsController.text)
                            .replaceAll("%", ""))
                // : null
                ,
                isSlidingEnabled:
                    controller.monthlyContributionController.text.isNotEmpty,
                onChanged: (percent) => controller.onChangeInvestmentPercent(
                    value: percent.toInt().toString()),
              ),
            ],
          ).paddingSymmetric(horizontal: 20.w),
        ),
      ),
      bottomNavigationBar: CustomBottomButtonWrapperWidget(
        "Continue",
        onPressed: () => context.pushNamed(RouteConstants.homeRoute),
      ),
    );
  }
}
