import 'package:awesome_extensions/awesome_extensions.dart' hide NavigatorExt;
import 'package:fhcs/core/components/custom_bottom_button_wrapper.dart';
import 'package:fhcs/core/components/custom_input_label.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/router/route_constants.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/core/utils/app_sheets.dart';
import 'package:fhcs/features/home/presentation/controllers/contracts/withdraw_funds.dart';
import 'package:fhcs/features/home/presentation/views/contracts/withdraw_funds.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class WithdrawFundView extends StatelessWidget
    implements WithdrawFundViewContract {
  const WithdrawFundView({super.key, required this.controller});
  final WithdrawFundControllerContract controller;
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
          "Withdraw funds",
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: AppColors.neutral800,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          28.h.heightBox,
          CustomInputLabelWidget(
            "You Withdraw",
            controller: controller.withdrawalAmountController,
            hintText: "N 200,000",
            formatter: [
              controller.formatter,
            ],
          ),
          Container(
            height: 16.h,
            margin: REdgeInsets.only(left: 18),
            child: VerticalDivider(
              color: AppColors.neutral300,
            ),
          ),
          Container(
            padding: REdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.r),
              border: Border.all(
                width: 1.w,
                color: AppColors.neutral200,
              ),
            ),
            child: AppText(
              "Savings balance: N1,205,890.00",
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: AppColors.neutral800,
            ),
          ),
          Container(
            height: 16.h,
            margin: REdgeInsets.only(left: 18),
            child: VerticalDivider(
              color: AppColors.neutral300,
            ),
          ),
          Container(
            padding: REdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.r),
              border: Border.all(
                width: 1.w,
                color: AppColors.neutral200,
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset("assets/svgs/database.svg"),
                6.w.widthBox,
                AppText(
                  "Fee: -N10",
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: AppColors.neutral800,
                ),
              ],
            ),
          ),
          Container(
            height: 16.h,
            margin: REdgeInsets.only(left: 18),
            child: VerticalDivider(
              color: AppColors.neutral300,
            ),
          ),
          CustomInputLabelWidget(
            "You Receive",
            controller: controller.amountReceivedController,
            hintText: "N 199,990",
            formatter: [
              controller.formatter,
            ],
          ),
          16.h.heightBox,
          CustomInputLabelWidget(
            "Description (Optional)",
            controller: controller.descriptionController,
            hintText: "Add a description",
          ),
        ],
      ).paddingSymmetric(horizontal: 20.w),
      bottomNavigationBar: CustomBottomButtonWrapperWidget(
        "Continue",
        onPressed: () => AppSheets.depositSuccessfulSheet(
          context,
          onPressed: () => context.goNamed(RouteConstants.homeRoute),
          title: "Withdrawal request successful",
          subtitle:
              "Your funds withdrawal request has been submitted successfully",
        ),
      ),
    );
  }
}
