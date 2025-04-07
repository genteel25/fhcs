import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:fhcs/core/components/custom_button.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppSuccessScreen extends StatelessWidget {
  const AppSuccessScreen({
    super.key,
    this.assetName,
    this.title,
    this.subtitle,
    this.buttonLabel,
    this.onContinue,
  });
  final String? assetName;
  final String? title;
  final String? subtitle;
  final String? buttonLabel;
  final VoidCallback? onContinue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: REdgeInsets.symmetric(horizontal: 20),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/${assetName ?? "mark_check"}.png",
              width: 56.sp,
              height: 56.sp,
            ),
            16.h.heightBox,
            AppText(
              title ?? "OTP Verified",
              fontSize: 18,
              textAlign: TextAlign.center,
              fontWeight: FontWeight.w500,
              color: AppColors.neutral800,
            ),
            8.h.heightBox,
            AppText(
              subtitle ?? "Your email address was verified successfully",
              fontSize: 14,
              textAlign: TextAlign.center,
              fontWeight: FontWeight.w400,
              color: AppColors.neutral500,
            ),
            32.h.heightBox,
            SizedBox(
              width: double.infinity,
              height: 44.h,
              child: CustomButtonWidget(
                buttonLabel ?? "Continue",
                onPressed: onContinue == null ? () {} : () => onContinue!(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
