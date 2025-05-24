import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:fhcs/core/components/custom_button.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LoanConfirmationSheetWidget extends StatelessWidget {
  const LoanConfirmationSheetWidget({
    super.key,
    required this.isNormaLoan,
    required this.loanInfo,
    required this.applyForLoan,
  });
  final bool isNormaLoan;
  final Map<String, dynamic> loanInfo;
  final Function applyForLoan;

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
        switch (isNormaLoan) {
          false => Container(
              padding: REdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.violet800.withValues(alpha: 0.15),
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(
                "assets/svgs/money_bag.svg",
                height: 26.h,
                colorFilter: ColorFilter.mode(
                  AppColors.violet800,
                  BlendMode.srcIn,
                ),
              ),
            ),
          _ => Container(
              padding: REdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.info700.withValues(alpha: 0.15),
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(
                "assets/svgs/money_bag.svg",
                height: 26.h,
                colorFilter: ColorFilter.mode(
                  AppColors.info700,
                  BlendMode.srcIn,
                ),
              ),
            ),
        },
        16.h.heightBox,
        AppText(
          "Loan application preview",
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: AppColors.neutral800,
        ),
        8.h.heightBox,
        AppText(
          "Kindly review your application before proceeding",
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.neutral500,
        ),
        32.h.heightBox,
        Container(
          padding: REdgeInsets.all(4),
          decoration: BoxDecoration(
            color: AppColors.neutral100,
          ),
          child: ListView.separated(
            padding: EdgeInsets.zero,
            itemCount: loanInfo.entries.length,
            separatorBuilder: (BuildContext context, int index) {
              return 4.h.heightBox;
            },
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: REdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.lightest,
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Row(
                  children: [
                    AppText(
                      loanInfo.entries.toList()[index].key,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.neutral500,
                    ),
                    const Spacer(),
                    switch (loanInfo.entries.toList()[index].key) {
                      "Loan type"
                          when loanInfo.entries.toList()[index].value == true =>
                        Container(
                          padding:
                              REdgeInsets.symmetric(horizontal: 8, vertical: 2),
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.neutral100),
                            borderRadius: BorderRadius.circular(100.r),
                          ),
                          child: AppText(
                            "Normal",
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: AppColors.info700,
                          ),
                        ),
                      "Loan type"
                          when loanInfo.entries.toList()[index].value ==
                              false =>
                        Container(
                          padding:
                              REdgeInsets.symmetric(horizontal: 8, vertical: 2),
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.neutral100),
                            borderRadius: BorderRadius.circular(100.r),
                          ),
                          child: AppText(
                            "Emergency",
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: AppColors.violet800,
                          ),
                        ),
                      "Requested amount" => AppText(
                          loanInfo.entries.toList()[index].value,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColors.neutral800,
                          isAmount: true,
                        ),
                      _ => Row(
                          children: [
                            Container(
                              // padding: REdgeInsets.all(16),
                              width: 20.w,
                              height: 20.h,
                              decoration: BoxDecoration(
                                color: AppColors.neutral300,
                                shape: BoxShape.circle,
                              ),
                            ),
                            8.w.widthBox,
                            AppText(
                              loanInfo.entries.toList()[index].value,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: AppColors.neutral800,
                            ),
                          ],
                        ),
                    }
                  ],
                ),
              );
            },
            shrinkWrap: true,
          ),
        ),
        118.h.heightBox,
        SizedBox(
          height: 44.h,
          width: double.infinity,
          child: CustomButtonWidget(
            "Confirm loan application",
            onPressed: () => applyForLoan(),
          ),
        ),
        32.h.heightBox,
      ],
    ).paddingSymmetric(horizontal: 20.w);
  }
}
