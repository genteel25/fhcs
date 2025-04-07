import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:fhcs/core/components/custom_button.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DepositSuccessWidget extends StatelessWidget {
  const DepositSuccessWidget({
    super.key,
    required this.onPressed,
    this.subtitle,
    this.title,
  });
  final VoidCallback onPressed;
  final String? title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          24.h.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: REdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.r),
                  border: Border.all(
                    width: 1.w,
                    color: const Color(0xffE2E8F0),
                  ),
                ),
                child: SvgPicture.asset("assets/svgs/cancel.svg"),
              ).onTap(() => context.pop()),
            ],
          ),
          16.h.heightBox,
          Image.asset(
            "assets/images/mark_check.png",
            width: 56.sp,
            height: 56.sp,
          ),
          16.h.heightBox,
          AppText(
            title ?? "Deposit successful",
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: AppColors.neutral800,
          ),
          8.h.heightBox,
          AppText(
            subtitle ?? "Your funds deposit was done successfully",
            fontSize: 14,
            textAlign: TextAlign.center,
            fontWeight: FontWeight.w400,
            color: AppColors.neutral500,
          ),
          127.h.heightBox,
          SizedBox(
            width: double.infinity,
            height: 44.h,
            child: CustomButtonWidget(
              "Go home",
              onPressed: onPressed,
            ),
          ),
          16.h.heightBox,
        ],
      ).paddingSymmetric(horizontal: 20.w),
    );
  }
}
