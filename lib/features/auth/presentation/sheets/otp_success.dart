import 'package:awesome_extensions/awesome_extensions.dart' hide NavigatorExt;
import 'package:fhcs/core/components/custom_button.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class OtpSuccessWidget extends StatelessWidget {
  const OtpSuccessWidget(
      {super.key,
      required this.onContinue,
      required this.nextStepsData,
      this.subtitle,
      this.title});
  final Function onContinue;
  final List<String> nextStepsData;
  final String? title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
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
          title ?? "OTP Verified",
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: AppColors.neutral800,
        ),
        8.h.heightBox,
        AppText(
          subtitle ?? "Your email address was verified successfully",
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.neutral500,
        ),
        32.h.heightBox,
        Container(
          padding: REdgeInsets.all(4),
          decoration: BoxDecoration(
            color: AppColors.neutral100,
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Column(
            children: [
              AppText("Next Steps")
                  .paddingOnly(left: 16.w, top: 12.h, bottom: 6.h)
                  .alignAtCenterLeft(),
              6.h.heightBox,
              Column(
                children: List.generate(nextStepsData.length, (index) {
                  return Container(
                    padding: REdgeInsets.all(16),
                    margin: REdgeInsets.only(
                        bottom: index != nextStepsData.length - 1 ? 4 : 0),
                    decoration: BoxDecoration(
                      color: AppColors.lightest,
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.keyboard_arrow_right,
                          size: 20.sp,
                          color: AppColors.neutral400,
                        ),
                        13.w.widthBox,
                        AppText(
                          nextStepsData[index],
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColors.neutral800,
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
        96.h.heightBox,
        SizedBox(
          width: double.infinity,
          height: 44.h,
          child: CustomButtonWidget(
            "Continue",
            onPressed: () => onContinue(),
          ),
        ),
        44.h.heightBox,
      ],
    ).paddingSymmetric(horizontal: 20.w);
  }
}
