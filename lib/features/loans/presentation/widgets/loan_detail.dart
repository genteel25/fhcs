import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/data/loan.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/core/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoanDetailWidget extends StatelessWidget {
  const LoanDetailWidget({super.key, required this.data});
  final LoanData data;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: REdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.lightest,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        children: [
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  AppText(
                    "Referee ${index + 1}",
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColors.neutral500,
                  ),
                  const Spacer(),
                  AppText(
                    "${data.referees?[index].user?.firstName} ${data.referees?[index].user?.lastName}",
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: AppColors.neutral800,
                  ),
                ],
              ).paddingSymmetric(horizontal: 16.w);
            },
            separatorBuilder: (context, index) {
              return Divider(
                height: 32.h,
                color: AppColors.neutral100,
                thickness: 1.h,
              );
            },
            itemCount: data.referees?.length ?? 0,
            shrinkWrap: true,
          ),
          if (data.referees?.isNotEmpty ?? false)
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
                data.createdAt?.loanFormattedDate ?? "",
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: AppColors.neutral800,
              ),
            ],
          ).paddingSymmetric(horizontal: 16.w),
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
                data.updatedAt?.loanFormattedDate ?? "",
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: AppColors.neutral800,
              ),
            ],
          ).paddingSymmetric(horizontal: 16.w),
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
                data.annualSalary?.toString() ?? "0",
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: AppColors.neutral800,
                isAmount: true,
              ),
            ],
          ).paddingSymmetric(horizontal: 16.w),
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
                  data.description ?? "",
                  softWrap: true,
                  maxLines: 2,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: AppColors.neutral800,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.end,
                ),
              ),
            ],
          ).paddingSymmetric(horizontal: 16.w),
        ],
      ),
    );
  }
}
