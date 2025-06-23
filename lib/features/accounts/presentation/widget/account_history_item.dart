import 'package:flutter/material.dart';

import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:fhcs/core/components/custom_text.dart' show AppText;
import 'package:fhcs/core/data/transaction.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/core/utils/extensions.dart';

class AccountHistoryItemWidget extends StatelessWidget {
  const AccountHistoryItemWidget({super.key, required this.transaction});
  final TransactionData transaction;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.lightest,
      ),
      child: Row(
        children: [
          Container(
            padding: REdgeInsets.all(12),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: switch (transaction.type) {
                TransactionType.debit => AppColors.secondary50,
                TransactionType.lien => AppColors.neutral200,
                _ => AppColors.primary100,
              },
            ),
            child: RotatedBox(
              quarterTurns: transaction.transactionType == "Credit" ? 2 : 0,
              child: SvgPicture.asset(
                "assets/svgs/arrow_top_left.svg",
                colorFilter: ColorFilter.mode(
                    switch (transaction.type) {
                      TransactionType.debit => AppColors.secondary700,
                      TransactionType.lien => AppColors.neutral800,
                      TransactionType.credit => AppColors.primary700,
                    },
                    BlendMode.srcIn),
              ),
            ),
          ),
          12.w.widthBox,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  switch (transaction.accountType?.toLowerCase()) {
                    "savings" when transaction.type == TransactionType.credit =>
                      "Savings account credited",
                    "savings" when transaction.type == TransactionType.debit =>
                      "Savings account debited",
                    "investment"
                        when transaction.type == TransactionType.credit =>
                      "Investment account credited",
                    "investment"
                        when transaction.type == TransactionType.debit =>
                      "Investment account debited",
                    _
                        when transaction.type == TransactionType.lien &&
                            transaction.operationType?.toLowerCase() ==
                                "withdrawal" =>
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
                6.h.heightBox,
                Row(
                  children: [
                    AppText(
                      transaction.createdAt?.formattedDate ?? "",
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: AppColors.neutral500,
                    ),
                    4.w.widthBox,
                    SvgPicture.asset("assets/svgs/dot.svg"),
                    4.w.widthBox,
                    AppText(
                      transaction.operationType ?? "",
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: AppColors.neutral500,
                    ),
                  ],
                ),
              ],
            ),
          ),
          // const Spacer(),
          AppText(
            transaction.amount.toString(),
            fontSize: 14,
            fontWeight: FontWeight.w500,
            isAmount: true,
            color: switch (transaction.type) {
              TransactionType.debit => AppColors.secondary700,
              TransactionType.lien => AppColors.neutral800,
              _ => AppColors.primary700,
            },
            hasPrefix: true,
            prefix: switch (transaction.type) {
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
