import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTransactionCardWidget extends StatelessWidget {
  const HomeTransactionCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.symmetric(horizontal: 8, vertical: 16),
      decoration: BoxDecoration(
        color: AppColors.lightest,
      ),
      child: Row(
        children: [
          Container(
            padding: REdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.primary100,
              borderRadius: BorderRadius.circular(100.r),
            ),
            child: Icon(
              Icons.add,
              color: AppColors.primary700,
              size: 12.sp,
            ),
          ),
          12.w.widthBox,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                "Savings account credited",
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.neutral800,
              ),
              8.h.heightBox,
              AppText(
                "Jan 18 2025",
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: AppColors.neutral500,
              ),
            ],
          ),
          const Spacer(),
          AppText(
            "+N 19,000",
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColors.primary700,
          ),
        ],
      ),
    );
  }
}
