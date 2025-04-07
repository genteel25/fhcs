import 'package:awesome_extensions/awesome_extensions.dart' hide NavigatorExt;
import 'package:fhcs/core/components/custom_bottom_button_wrapper.dart';
import 'package:fhcs/core/components/custom_radio.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/router/route_constants.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/features/home/presentation/controllers/contracts/withdraw_from.dart';
import 'package:fhcs/features/home/presentation/views/contracts/withdraw_from.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class WithdrawFromView extends StatelessWidget
    implements WithdrawFromViewContract {
  const WithdrawFromView({super.key, required this.controller});
  final WithdrawFromControllerContract controller;
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
            Container(
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
          AppText(
            "WITHDRAW FROM",
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: AppColors.neutral500,
          ).paddingSymmetric(horizontal: 20.w),
          8.h.heightBox,
          ListTile(
            contentPadding: REdgeInsets.symmetric(horizontal: 20, vertical: 16),
            visualDensity: const VisualDensity(vertical: -4),
            leading: SvgPicture.asset(
              "assets/svgs/savings.svg",
              fit: BoxFit.scaleDown,
              width: 32.w,
              height: 32.h,
            ),
            title: AppText(
              "Saving account",
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.neutral800,
            ).paddingOnly(bottom: 8.h),
            subtitle: AppText(
              "Withdraw from your savings account",
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: AppColors.neutral500,
            ),
            onTap: () => controller.onSelectWithdrawMode(true),
            trailing: CustomRadio(
              value: controller.isSavingAccount,
              groupValue: true,
              onChanged: (e) => controller.onSelectWithdrawMode(true),
            ),
          ),
          Divider(height: 0.h, color: AppColors.neutral100, thickness: 1.h),
          ListTile(
            contentPadding: REdgeInsets.symmetric(horizontal: 20, vertical: 16),
            visualDensity: const VisualDensity(vertical: -4),
            leading: SvgPicture.asset(
              "assets/svgs/savings.svg",
              fit: BoxFit.scaleDown,
              width: 32.w,
              height: 32.h,
            ),
            title: AppText(
              "Investment account",
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.neutral800,
            ).paddingOnly(bottom: 8.h),
            subtitle: AppText(
              "Withdraw from your investment account",
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: AppColors.neutral500,
            ),
            onTap: () => controller.onSelectWithdrawMode(false),
            trailing: CustomRadio(
              value: controller.isSavingAccount,
              groupValue: false,
              onChanged: (e) => controller.onSelectWithdrawMode(false),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomButtonWrapperWidget(
        "Continue",
        onPressed: controller.isSavingAccount != null
            ? () => context.pushNamed(RouteConstants.withdrawFundRoute)
            : null,
      ),
    );
  }
}
