import 'package:flutter/material.dart';

import 'package:awesome_extensions/awesome_extensions.dart' hide NavigatorExt;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import 'package:fhcs/core/components/custom_bottom_button_wrapper.dart';
import 'package:fhcs/core/components/custom_input_label.dart';
import 'package:fhcs/core/components/custom_slider.dart.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/helpers/contracts/iwidget_helper.dart';
import 'package:fhcs/core/router/route_constants.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/core/utils/app_dialog.dart';
import 'package:fhcs/core/utils/extensions.dart';
import 'package:fhcs/features/auth/presentation/bloc/monthly_contribution/monthly_contribution_cubit.dart';
import 'package:fhcs/features/auth/presentation/controllers/contracts/kyc.dart';
import 'package:fhcs/features/auth/presentation/views/contracts/kyc.dart';

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
                isAmount: true,
                formatter: [controller.formatter],
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
                  isAmount: true,
                ),
              8.h.heightBox,
              CustomSlider(
                max: 100,
                min: 1,
                step: 25,
                maxSlideLimit:
                    50, // Fixed to 50 since savings cannot exceed 50%
                value: controller
                    .percentSavingsController.text.cleanCheckEmptyCurrencyText,
                isSlidingEnabled: controller.monthlyContributionController.text
                        .cleanCheckEmptyCurrencyText >
                    0,
                onChanged: (percent) => controller.allocateContribution(
                  savingPercent: percent,
                  investmentPercent: 100 -
                      percent, // Automatically calculate investment percent
                ),
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
                  isAmount: true,
                ),
              8.h.heightBox,
              CustomSlider(
                max: 99,
                min: 0,
                step: 25,
                maxSlideLimit: 99, // Investment can go up to 99%
                value: controller.percentInvestmentController.text
                    .cleanCheckEmptyCurrencyText,
                isSlidingEnabled: controller.monthlyContributionController.text
                        .cleanCheckEmptyCurrencyText >
                    0,
                onChanged: (percent) => controller.allocateContribution(
                  savingPercent:
                      100 - percent, // Automatically calculate savings percent
                  investmentPercent: percent,
                ),
              ),
            ],
          ).paddingSymmetric(horizontal: 20.w),
        ),
      ),
      bottomNavigationBar:
          BlocListener<MonthlyContributionCubit, MonthlyContributionState>(
        listener: (context, state) {
          state.whenOrNull(
            loading: () => AppDialog.showAppProgressDialog(context),
            failure: (error) {
              context.pop();
              GetIt.I
                  .get<IWidgetHelper>()
                  .showErrorToast(context, message: error);
            },
            success: (response) {
              context.pop();
              // controller.onSuccess(response);
              GetIt.I
                  .get<IWidgetHelper>()
                  .showSuccessToast(context, message: "Success");
              context.pushNamed(RouteConstants.homeRoute);
            },
          );
        },
        child: CustomBottomButtonWrapperWidget(
          "Continue",
          onPressed: controller.monthlyContributionController.text.isEmpty ||
                  controller.percentInvestmentController.text.isEmpty
              ? null
              : () => controller.onContinue(),
        ),
      ),
    );
  }

  double _calculateMaxSavingsLimit(double investmentPercent) {
    // Investment can take up to 99%, so savings must leave at least 1%
    final double maxFromInvestment = 100 - investmentPercent.clamp(1, 99);

    // Savings cannot exceed 50% (your rule)
    return maxFromInvestment.clamp(1, 50);
  }
}
