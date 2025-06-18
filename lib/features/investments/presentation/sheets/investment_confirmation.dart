import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:fhcs/core/components/custom_button.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/core/utils/global_variables.dart';
import 'package:fhcs/features/investments/presentation/bloc/investment_type/investment_type_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class InvestmentConfirmationSheetWidget extends StatelessWidget {
  const InvestmentConfirmationSheetWidget({
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
    return Expanded(
      child: Column(
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
          Container(
            padding: REdgeInsets.all(16),
            decoration: BoxDecoration(
              color:
                  GlobalVariables.generateColorFromText(loanInfo['Loan type'])
                      .withValues(alpha: 0.15),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(
              "assets/svgs/database.svg",
              width: 24.sp,
              height: 26.h,
              colorFilter: ColorFilter.mode(
                GlobalVariables.generateColorFromText(loanInfo['Loan type']),
                BlendMode.srcIn,
              ),
            ),
          ),
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
          Expanded(
            child: Container(
              padding: REdgeInsets.all(4),
              decoration: BoxDecoration(
                color: AppColors.neutral100,
              ),
              child: ListView.separated(
                padding: EdgeInsets.zero,
                primary: false,
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
                          "Loan type" => Container(
                              padding: REdgeInsets.symmetric(
                                  horizontal: 8, vertical: 2),
                              decoration: BoxDecoration(
                                border: Border.all(color: AppColors.neutral200),
                                borderRadius: BorderRadius.circular(100.r),
                              ),
                              child: AppText(
                                loanInfo.entries.toList()[index].value,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: context
                                    .read<InvestmentTypeCubit>()
                                    .state
                                    .whenOrNull(
                                      success: (response) =>
                                          GlobalVariables.generateColorFromText(
                                              loanInfo.entries
                                                  .toList()[index]
                                                  .value),
                                    ),
                              ),
                            ),
                          "Seller/Vendor name" => AppText(
                              loanInfo.entries.toList()[index].value,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: AppColors.neutral800,
                            ),
                          "Seller/Vendor contact" => AppText(
                              loanInfo.entries.toList()[index].value,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: AppColors.neutral800,
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
          ),
          54.h.heightBox,
          // const Spacer(),
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
      ).paddingSymmetric(horizontal: 20.w),
    );
  }
}
