import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:fhcs/core/components/custom_button.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BankTransferSuccessWidget extends StatelessWidget {
  const BankTransferSuccessWidget(
      {super.key, this.onContinue, required this.paymentInfo});
  final VoidCallback? onContinue;
  final Map<String, dynamic> paymentInfo;

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
          "Payment successful",
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: AppColors.neutral800,
        ),
        8.h.heightBox,
        AppText(
          "Your membership request has been received successfully. You’ll get a message confirming your membership within 24 hours.",
          fontSize: 14,
          textAlign: TextAlign.center,
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
              Column(
                children: List.generate(paymentInfo.length, (index) {
                  return Container(
                    padding: REdgeInsets.all(16),
                    margin: REdgeInsets.only(
                        bottom: index != paymentInfo.length - 1 ? 4 : 0),
                    decoration: BoxDecoration(
                      color: AppColors.lightest,
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText(
                          paymentInfo.keys.toList()[index],
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.neutral500,
                        ),
                        // 13.w.widthBox,
                        AppText(
                          paymentInfo.values.toList()[index],
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
            onPressed: onContinue == null ? null : () => onContinue!(),
          ),
        ),
        44.h.heightBox,
      ],
    ).paddingSymmetric(horizontal: 20.w);
  }
}
