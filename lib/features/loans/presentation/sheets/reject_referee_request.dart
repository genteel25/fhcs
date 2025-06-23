import 'package:flutter/material.dart';

import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:fhcs/core/components/custom_button.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/core/utils/global_variables.dart';
import 'package:fhcs/features/investments/presentation/bloc/investment_type/investment_type_cubit.dart';

class RejectRefereeRequestSheetWidget extends StatelessWidget {
  const RejectRefereeRequestSheetWidget({super.key, required this.onReject});
  final Function onReject;

  @override
  Widget build(BuildContext context) {
    return Column(
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
        SvgPicture.asset(
          "assets/svgs/user_cancel.svg",
          width: 56.sp,
          height: 56.sp,
        ),
        16.h.heightBox,
        AppText(
          "Reject request",
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: AppColors.neutral800,
        ),
        8.h.heightBox,
        AppText(
          "Are you sure you want to reject this referee request?",
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.neutral500,
          textAlign: TextAlign.center,
        ).paddingSymmetric(horizontal: 32.r),
        51.h.heightBox,
        SizedBox(
          height: 44.h,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              context.pop();
              onReject();
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.secondary700),
            child: AppText(
              "Yes, Reject",
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.lightest,
            ),
          ),
        ),
        16.h.heightBox,
        SizedBox(
          height: 44.h,
          width: double.infinity,
          child: OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: AppColors.neutral300, width: 1.w),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            child: AppText(
              "Cancel",
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.neutral800,
            ),
          ),
        ),
        50.h.heightBox,
      ],
    ).paddingSymmetric(horizontal: 20.w);
  }
}
