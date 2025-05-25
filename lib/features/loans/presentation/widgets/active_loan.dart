import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:fhcs/core/components/custom_line_range.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/data/loan.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/core/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ActiveLoanWidget extends StatelessWidget {
  const ActiveLoanWidget({super.key, required this.data, this.isActive = true});
  final LoanData data;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: AppColors.lightest,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: REdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: switch (data.isNormalLoan) {
                    false => AppColors.violet800.withValues(alpha: 0.15),
                    _ => AppColors.info700.withValues(alpha: 0.15),
                  },
                ),
                child: SvgPicture.asset(
                  "assets/svgs/money_bag.svg",
                  colorFilter: ColorFilter.mode(
                    switch (data.isNormalLoan) {
                      false => AppColors.violet800,
                      _ => AppColors.info700
                    },
                    BlendMode.srcIn,
                  ),
                ),
              ),
              12.w.widthBox,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    "Loan amount",
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: AppColors.neutral500,
                  ),
                  4.h.heightBox,
                  AppText(
                    data.amount?.toString() ?? "0",
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: AppColors.neutral800,
                    isAmount: true,
                  ),
                ],
              ),
              const Spacer(),
              if (isActive) ...[
                Container(
                  padding: REdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.neutral100),
                    borderRadius: BorderRadius.circular(100.r),
                  ),
                  child: AppText(
                    switch (data.isNormalLoan) {
                      false => "Emergency",
                      _ => "Normal",
                    },
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: switch (data.isNormalLoan) {
                      false => AppColors.violet800,
                      _ => AppColors.info700,
                    },
                  ),
                ),
              ] else ...[
                Icon(
                  Icons.arrow_forward_ios,
                  size: 10.sp,
                  color: AppColors.neutral800,
                ),
              ],
            ],
          ).paddingSymmetric(horizontal: 16.w),
          // if (isActive)
          12.h.heightBox,
          Divider(
            height: 0.h,
            color: AppColors.neutral100,
          ),
          if (isActive)
            Row(
              children: [
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                        color: AppColors.neutral100,
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      12.h.heightBox,
                      AppText(
                        "Loan ID",
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: AppColors.neutral500,
                      ),
                      4.h.heightBox,
                      FittedBox(
                        child: AppText(
                          data.lid?.toString() ?? "0",
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColors.neutral800,
                        ),
                      ),
                      12.h.heightBox,
                    ],
                  ),
                )),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    12.h.heightBox,
                    AppText(
                      "Loan Duration",
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: AppColors.neutral500,
                    ),
                    4.h.heightBox,
                    AppText(
                      "${data.duration?.toString() ?? "0"} ${(data.duration ?? 0) > 1 ? "Months" : "Month"}",
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.neutral800,
                    ),
                    12.h.heightBox,
                  ],
                )),
              ],
            ).paddingSymmetric(horizontal: 16.w),
          Divider(
            height: 0.h,
            color: AppColors.neutral100,
          ),
          Row(
            children: [
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(
                      color: AppColors.neutral100,
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    12.h.heightBox,
                    AppText(
                      "Start date",
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: AppColors.neutral500,
                    ),
                    4.h.heightBox,
                    FittedBox(
                      child: AppText(
                        data.updatedAt?.loanFormattedDate ?? "",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColors.neutral800,
                      ),
                    ),
                    12.h.heightBox,
                  ],
                ),
              )),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(
                      color: AppColors.neutral100,
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    12.h.heightBox,
                    FittedBox(
                      child: AppText(
                        "Monthly repayment",
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: AppColors.neutral500,
                      ),
                    ),
                    4.h.heightBox,
                    FittedBox(
                      child: AppText(
                        data.monthlyRepayment?.toString() ?? "0",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColors.neutral800,
                        isAmount: true,
                      ),
                    ),
                    12.h.heightBox,
                  ],
                ),
              )),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  12.h.heightBox,
                  AppText(
                    "End date",
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: AppColors.neutral500,
                  ),
                  4.h.heightBox,
                  FittedBox(
                    child: AppText(
                      (data.updatedAt ?? DateTime.now())
                          .add(const Duration(days: 30))
                          .loanFormattedDate,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.neutral800,
                    ),
                  ),
                  12.h.heightBox,
                ],
              )),
            ],
          ).paddingSymmetric(horizontal: 16.w),
          Divider(
            height: 0.h,
            color: AppColors.neutral100,
          ),
          12.h.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    "Amount paid",
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: AppColors.neutral500,
                  ),
                  4.h.heightBox,
                  AppText(
                    data.amountRePaid?.toString() ?? "0",
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: AppColors.neutral800,
                    isAmount: true,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  AppText(
                    "Outstanding amount",
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: AppColors.neutral500,
                  ),
                  4.h.heightBox,
                  AppText(
                    (data.amountRePaid?.toString() ?? "0")
                        .calculateOutstandingAmount(
                            data.amountDisbursed?.toString() ?? "0"),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: AppColors.neutral800,
                    isAmount: true,
                  ),
                ],
              ),
            ],
          ).paddingSymmetric(horizontal: 16.w),
          8.h.heightBox,
          CustomLineRangeWidget(
            amountRepaid: data.amountRePaid ?? 0,
            originalAmount: data.amountDisbursed ?? 0,
          ).paddingSymmetric(horizontal: 16.w),
        ],
      ),
    );
  }
}
