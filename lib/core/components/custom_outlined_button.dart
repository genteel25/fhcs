import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../ui/colors.dart';
import 'custom_text.dart';

class CustomOutlinedButtonWidget extends StatelessWidget {
  const CustomOutlinedButtonWidget(
    this.buttonText, {
    super.key,
    this.textColor,
    this.onPressed,
  });
  final String buttonText;
  final Color? textColor;
  final Function? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44.h,
      child: OutlinedButton(
        onPressed: onPressed == null ? null : () => onPressed!(),
        style: OutlinedButton.styleFrom(
            backgroundColor: Colors.transparent,
            side: BorderSide(
              color: AppColors.neutral300,
              width: 1.w,
            )),
        child: AppText(
          buttonText,
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: textColor ?? Color(0xff1E293B),
        ),
      ),
    );
  }
}
