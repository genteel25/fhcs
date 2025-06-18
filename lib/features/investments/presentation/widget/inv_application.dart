import 'package:flutter/material.dart';

import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/data/investment.dart';
import 'package:fhcs/core/data/loan.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/core/utils/extensions.dart';
import 'package:fhcs/core/utils/global_variables.dart';
import 'package:fhcs/features/investments/presentation/widget/investment_detail.dart';
import 'package:fhcs/features/loans/presentation/widgets/loan_detail.dart';

class InvestmentApplicationItemWidget extends StatefulWidget {
  const InvestmentApplicationItemWidget({super.key, required this.data});
  final InvestmentData data;

  @override
  State<InvestmentApplicationItemWidget> createState() =>
      _InvestmentApplicationItemWidgetState();
}

class _InvestmentApplicationItemWidgetState
    extends State<InvestmentApplicationItemWidget> {
  bool isExpanded = false;
  void onExpandedChanged(bool value) {
    setState(() {
      isExpanded = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        dividerColor: Colors.transparent,
      ),
      child: ExpansionTile(
        showTrailingIcon: false,
        collapsedBackgroundColor: AppColors.lightest,
        onExpansionChanged: onExpandedChanged,
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
                  color: GlobalVariables.generateColorFromText(
                          widget.data.investmentType?.name ?? "")
                      .withValues(alpha: 0.15),
                ),
                child: SvgPicture.asset(
                  "assets/svgs/money_bag.svg",
                  colorFilter: ColorFilter.mode(
                    GlobalVariables.generateColorFromText(
                        widget.data.investmentType?.name ?? ""),
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
                        widget.data.amount?.toString() ?? "0",
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.neutral800,
                        isAmount: true,
                      ),
                      8.w.widthBox,
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
                          widget.data.investmentType?.name ?? "",
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: GlobalVariables.generateColorFromText(
                              widget.data.investmentType?.name ?? ""),
                        ),
                      ),
                      4.w.widthBox,
                      SvgPicture.asset("assets/svgs/dot.svg"),
                      4.w.widthBox,
                      SvgPicture.asset("assets/svgs/clock.svg"),
                      4.w.widthBox,
                      AppText(
                        widget.data.status ?? "",
                        // switch (widget.data.nextApprovalStep?.loanStatus) {
                        //   LoanStatus.approved => "Approved",
                        //   LoanStatus.rejected => "Rejected",
                        //   _ => "Pending",
                        // },
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: switch (
                            widget.data.nextApprovalStep?.investmentStatus) {
                          InvestmentStatus.approved => AppColors.primary700,
                          InvestmentStatus.rejected => AppColors.secondary700,
                          _ => AppColors.warning500,
                        },
                      ),
                      4.w.widthBox,
                      SvgPicture.asset("assets/svgs/dot.svg"),
                      4.w.widthBox,
                      AppText(
                        widget.data.createdAt?.formattedDate ?? "",
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: AppColors.neutral500,
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  RotatedBox(
                    quarterTurns: isExpanded ? 2 : 0,
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      size: 16.sp,
                      color: AppColors.neutral800,
                    ),
                  ),
                  // 8.h.heightBox,
                  // Container(
                  //   padding: REdgeInsets.symmetric(horizontal: 4, vertical: 1),
                  //   decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(4.r),
                  //       border: Border.all(
                  //           color: AppColors.primary700, width: 1.w)),
                  //   child: Row(
                  //     children: [
                  //       AppText(
                  //         "Edit",
                  //         fontSize: 8.sp,
                  //         fontWeight: FontWeight.w300,
                  //         color: AppColors.primary700,
                  //       ),
                  //       2.w.widthBox,
                  //       Icon(Icons.edit, size: 8.sp),
                  //     ],
                  //   ),
                  // ),
                ],
              )
            ],
          ),
        ),
        children: [
          InvestmentDetailWidget(data: widget.data),
        ],
      ),
    );
  }
}
