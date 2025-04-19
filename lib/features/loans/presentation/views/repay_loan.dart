import 'package:awesome_extensions/awesome_extensions.dart' hide NavigatorExt;
import 'package:fhcs/core/components/custom_bottom_button_wrapper.dart';
import 'package:fhcs/core/components/custom_input_label.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/router/route_constants.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/features/loans/presentation/controllers/contracts/repay_loan.dart';
import 'package:fhcs/features/loans/presentation/views/contracts/repay_loan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class RepayLoanView extends StatelessWidget implements RepayLoanViewContract {
  const RepayLoanView({super.key, required this.controller});
  final RepayLoanControllerContract controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F9),
      appBar: AppBar(
        toolbarHeight: 36.h,
        leadingWidth: 56.w,
        backgroundColor: Color(0xffF8F8F9),
        surfaceTintColor: Color(0xffF8F8F9),
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            20.w.widthBox,
            InkWell(
              onTap: () => context.pop(),
              borderRadius: BorderRadius.circular(100.r),
              child: Container(
                width: 36.w,
                height: 36.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColors.neutral200,
                    width: 1.w,
                  ),
                ),
                child: SvgPicture.asset(
                  "assets/svgs/back.svg",
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
          ],
        ),
        centerTitle: false,
        title: AppText(
          "Repay Loan",
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: AppColors.neutral800,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          44.h.heightBox,
          CustomInputLabelWidget(
            "Amount to repay",
            controller: controller.amountToRepayController,
            hintText: "N 2,000",
            keyboardType: TextInputType.number,
            formatter: [controller.formatter],
          ),
          4.h.heightBox,
          Container(
            padding: REdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.neutral200, width: 1.w),
              borderRadius: BorderRadius.circular(100.r),
            ),
            child: AppText(
              "Loan balance: - N1,205,890.00",
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: AppColors.neutral800,
            ),
          ),
          16.h.heightBox,
          AppText(
            "Repay from",
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppColors.neutral800,
          ),
          16.h.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RepayFromCardWidget(
                isSelected: controller.repayFrom.contains('Savings'),
                subtitle: "N329,878.00",
                title: "Savings",
                onTap: () => controller.onSelectRepayFrom("Savings"),
              ),
              12.w.widthBox,
              RepayFromCardWidget(
                isSelected: controller.repayFrom.contains('Investment'),
                subtitle: "N329,878.00",
                title: "Investment",
                onTap: () => controller.onSelectRepayFrom("Investment"),
              ),
              12.w.widthBox,
              RepayFromCardWidget(
                isSelected: controller.repayFrom.contains('Direct'),
                subtitle: "Cash injection",
                title: "Direct",
                onTap: () => controller.onSelectRepayFrom("Direct"),
              ),
            ],
          ),
        ],
      ).paddingSymmetric(horizontal: 20.w),
      bottomNavigationBar: CustomBottomButtonWrapperWidget(
        "Continue to payment",
        onPressed: () => context.pushNamed(RouteConstants.cashInjectionRoute),
      ),
    );
  }
}

class RepayFromCardWidget extends StatelessWidget {
  const RepayFromCardWidget({
    super.key,
    required this.isSelected,
    required this.subtitle,
    required this.title,
    required this.onTap,
  });
  final String title;
  final String subtitle;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: REdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(
              color: isSelected ? AppColors.primary700 : AppColors.neutral300,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                title,
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: AppColors.neutral800,
              ),
              6.h.heightBox,
              AppText(
                subtitle,
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: AppColors.neutral500,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
