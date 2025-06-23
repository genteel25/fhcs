import 'package:flutter/material.dart';

import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/data/transaction.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/core/utils/extensions.dart';

class HomeTransactionCardWidget extends StatelessWidget {
  const HomeTransactionCardWidget({super.key, required this.data});
  final TransactionData data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.symmetric(horizontal: 8, vertical: 16),
      decoration: BoxDecoration(
        color: AppColors.lightest,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: REdgeInsets.all(10),
            decoration: BoxDecoration(
              color: switch (data.type) {
                TransactionType.debit => AppColors.secondary50,
                TransactionType.lien => AppColors.neutral200,
                _ => AppColors.primary100,
              },
              borderRadius: BorderRadius.circular(100.r),
            ),
            child: switch (data.type) {
              TransactionType.debit => Icon(
                  Icons.remove,
                  color: AppColors.secondary700,
                  size: 12.sp,
                ),
              TransactionType.lien => Icon(
                  Icons.remove,
                  color: AppColors.neutral800,
                  size: 12.sp,
                ),
              TransactionType.credit => Icon(
                  Icons.add,
                  color: AppColors.primary700,
                  size: 12.sp,
                ),
            },
          ),
          12.w.widthBox,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  switch (data.accountType?.toLowerCase()) {
                    "savings" when data.type == TransactionType.credit =>
                      "Savings account credited",
                    "savings" when data.type == TransactionType.debit =>
                      "Savings account debited",
                    "investment" when data.type == TransactionType.credit =>
                      "Investment account credited",
                    "investment" when data.type == TransactionType.debit =>
                      "Investment account debited",
                    _
                        when data.type == TransactionType.lien &&
                            data.operationType?.toLowerCase() == "withdrawal" =>
                      "Withdrawal is pending",
                    _ => "Transaction",
                  },
                  // "Savings account credited",
                  softWrap: true,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.neutral800,
                ),
                8.h.heightBox,
                AppText(
                  data.createdAt?.formattedDate ?? "",
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: AppColors.neutral500,
                ),
              ],
            ),
          ),
          // const Spacer(),
          8.w.widthBox,
          AppText(
            data.amount.toString(),
            fontSize: 14,
            fontWeight: FontWeight.w500,
            isAmount: true,
            color: switch (data.type) {
              TransactionType.debit => AppColors.secondary700,
              TransactionType.lien => AppColors.neutral800,
              _ => AppColors.primary700,
            },
            hasPrefix: true,
            prefix: switch (data.type) {
              TransactionType.debit => "-",
              TransactionType.lien => "",
              _ => "+",
            },
          ),
        ],
      ),
    );
  }
}
