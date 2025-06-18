import 'package:fhcs/core/ui/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomBackButtonWidget extends StatelessWidget {
  const CustomBackButtonWidget(
      {super.key, this.onPressed, this.backgroundColor, this.borderColor});
  final Color? backgroundColor;
  final Color? borderColor;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed ?? () => Navigator.of(context).pop(),
      borderRadius: BorderRadius.circular(100.r),
      child: Container(
        width: 36.w,
        height: 36.h,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundColor ?? AppColors.lightest,
          border: Border.all(
            color: borderColor ?? AppColors.primary200,
            width: 1.w,
          ),
        ),
        child: SvgPicture.asset(
          "assets/svgs/back.svg",
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
