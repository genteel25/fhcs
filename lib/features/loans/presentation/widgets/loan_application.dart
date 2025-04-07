import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LoanApplicationItemWidget extends StatelessWidget {
  const LoanApplicationItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        dividerColor: Colors.transparent,
      ),
      child: ExpansionTile(
        showTrailingIcon: false,
        collapsedBackgroundColor: AppColors.lightest,

        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        expandedAlignment: Alignment.centerLeft,
        visualDensity: const VisualDensity(vertical: -4),
        dense: true,
        tilePadding: EdgeInsets.zero,
        childrenPadding: EdgeInsets.zero,
        enableFeedback: false,
        // childrenPadding: REdgeInsets.only(left: 0, right: 0, bottom: 0),
        // backgroundColor: AppColors.lightest,
        title: Container(
          padding: REdgeInsets.symmetric(horizontal: 8, vertical: 8),
          color: AppColors.lightest,
          child: Row(
            children: [
              Container(
                padding: REdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.info700.withValues(alpha: 0.15),
                ),
                child: SvgPicture.asset(
                  "assets/svgs/money_bag.svg",
                  colorFilter: ColorFilter.mode(
                    AppColors.info700,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              12.w.widthBox,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AppText(
                        "N 19,000",
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.neutral800,
                      ),
                      8.w.widthBox,
                      Container(
                        padding:
                            REdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.neutral100),
                          borderRadius: BorderRadius.circular(100.r),
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset("assets/svgs/profile_success.svg"),
                            5.w.widthBox,
                            SvgPicture.asset("assets/svgs/profile_error.svg"),
                          ],
                        ),
                      ),
                    ],
                  ),
                  8.h.heightBox,
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
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
                      4.w.widthBox,
                      SvgPicture.asset("assets/svgs/dot.svg"),
                      4.w.widthBox,
                      SvgPicture.asset("assets/svgs/clock.svg"),
                      4.w.widthBox,
                      AppText(
                        "Pending",
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: AppColors.warning500,
                      ),
                      4.w.widthBox,
                      SvgPicture.asset("assets/svgs/dot.svg"),
                      4.w.widthBox,
                      AppText(
                        "Jan 18 2025",
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: AppColors.neutral500,
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              Icon(
                Icons.keyboard_arrow_down,
                size: 16.sp,
                color: AppColors.neutral800,
              ),
            ],
          ),
        ),
        children: [
          Container(
            width: double.infinity,
            padding: REdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: AppColors.lightest,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    AppText(
                      "Referee 1",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.neutral500,
                    ),
                    const Spacer(),
                    AppText(
                      "N 19,000",
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.neutral800,
                    ),
                  ],
                ),
                Divider(
                  height: 32.h,
                  color: AppColors.neutral100,
                  thickness: 1.h,
                ),
                Row(
                  children: [
                    AppText(
                      "Referee 2",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.neutral500,
                    ),
                    const Spacer(),
                    AppText(
                      "N 19,000",
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.neutral800,
                    ),
                  ],
                ),
                Divider(
                  height: 32.h,
                  color: AppColors.neutral100,
                  thickness: 1.h,
                ),
                Row(
                  children: [
                    AppText(
                      "Application Date",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.neutral500,
                    ),
                    const Spacer(),
                    AppText(
                      "24-February-2025",
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.neutral800,
                    ),
                  ],
                ),
                Divider(
                  height: 32.h,
                  color: AppColors.neutral100,
                  thickness: 1.h,
                ),
                Row(
                  children: [
                    AppText(
                      "Granted Date",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.neutral500,
                    ),
                    const Spacer(),
                    AppText(
                      "24-March-2025",
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.neutral800,
                    ),
                  ],
                ),
                Divider(
                  height: 32.h,
                  color: AppColors.neutral100,
                  thickness: 1.h,
                ),
                Row(
                  children: [
                    AppText(
                      "Annual Salary",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.neutral500,
                    ),
                    const Spacer(),
                    AppText(
                      "N 1,200,000",
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.neutral800,
                    ),
                  ],
                ),
                Divider(
                  height: 32.h,
                  color: AppColors.neutral100,
                  thickness: 1.h,
                ),
                Row(
                  children: [
                    AppText(
                      "Loan Purpose",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.neutral500,
                    ),
                    // const Spacer(),
                    32.w.widthBox,
                    Expanded(
                      child: AppText(
                        "I want to do something with funds but from the look of things in this...",
                        softWrap: true,
                        maxLines: 2,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColors.neutral800,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
