import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget(
    this.buttonText, {
    super.key,
    this.textColor,
    this.backgroundColor,
    this.onPressed,
  });
  final String buttonText;
  final Color? textColor;
  final Color? backgroundColor;
  final Function? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44.h,
      child: ElevatedButton(
        onPressed: onPressed == null
            ? null
            : () {
                FocusManager.instance.primaryFocus?.unfocus();
                onPressed!();
              },
        style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            shadowColor: AppColors.neutral800.withValues(alpha: 0.1)),
        child: AppText(
          buttonText,
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: textColor ?? AppColors.lightest,
        ),
      ),
    );
  }
}
