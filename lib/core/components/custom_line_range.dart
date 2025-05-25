import 'package:fhcs/core/ui/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomLineRangeWidget extends StatelessWidget {
  const CustomLineRangeWidget(
      {super.key, required this.amountRepaid, required this.originalAmount});
  final double amountRepaid;
  final double originalAmount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        40,
        (index) => Container(
          width: 4.w,
          height: 12.h,
          // margin: REdgeInsets.only(right: 4),
          decoration: BoxDecoration(
            color: (amountRepaid / originalAmount * 40) > index
                ? AppColors.primary700
                : AppColors.neutral200,
            borderRadius: BorderRadius.circular(100.r),
          ),
        ),
      ),
    );
  }
}
