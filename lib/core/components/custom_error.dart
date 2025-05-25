import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({
    super.key,
    this.assetPath,
    this.errorTitle,
    this.errorSubtitle,
    this.hasPadding = true,
  });
  final String? assetPath;
  final String? errorTitle;
  final String? errorSubtitle;
  final bool hasPadding;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 180.h,
          child: Lottie.asset(
            assetPath ?? "assets/images/empty_loan.json",
            height: 500.h,
          ),
        ),
        AppText(
          errorTitle ?? "No Transactions Yet",
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        4.h.heightBox,
        AppText(
          errorSubtitle ??
              "All your deposits, withdrawals, and other financial activities will be displayed here.",
          fontSize: 12,
          fontWeight: FontWeight.w400,
          softWrap: true,
          textAlign: TextAlign.center,
          color: AppColors.neutral600,
        ).paddingSymmetric(horizontal: hasPadding ? 24.w : 0.w),
      ],
    );
  }
}
