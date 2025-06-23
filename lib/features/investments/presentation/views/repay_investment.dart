import 'package:flutter/material.dart';

import 'package:awesome_extensions/awesome_extensions.dart' hide NavigatorExt;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import 'package:fhcs/core/components/custom_bottom_button_wrapper.dart';
import 'package:fhcs/core/components/custom_input_label.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/helpers/contracts/iwidget_helper.dart';
import 'package:fhcs/core/router/route_constants.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/core/utils/app_dialog.dart';
import 'package:fhcs/features/home/presentation/bloc/dashboard/dashboard_cubit.dart';
import 'package:fhcs/features/investments/presentation/bloc/repay_investment.dart/repay_investment_cubit.dart';
import 'package:fhcs/features/investments/presentation/controllers/contracts/repay_investment.dart';
import 'package:fhcs/features/investments/presentation/views/contracts/repay_investment.dart';
import 'package:fhcs/features/loans/presentation/bloc/loan_history/loan_history_cubit.dart';
import 'package:fhcs/features/loans/presentation/bloc/loan_repayment/loan_repayment_cubit.dart';
import 'package:fhcs/features/loans/presentation/controllers/contracts/repay_loan.dart';
import 'package:fhcs/features/loans/presentation/views/contracts/repay_loan.dart';

class RepayInvestmentView extends StatelessWidget
    implements RepayInvestmentViewContract {
  const RepayInvestmentView({super.key, required this.controller});
  final RepayInvestmentControllerContract controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F9),
      appBar: AppBar(
        toolbarHeight: 36.h,
        leadingWidth: 58.w,
        backgroundColor: Color(0xffF8F8F9),
        surfaceTintColor: Color(0xffF8F8F9),
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            20.sp.widthBox,
            InkWell(
              onTap: () => context.pop(),
              borderRadius: BorderRadius.circular(100.r),
              child: Container(
                width: 36.w,
                height: 36.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColors.neutral200,
                    width: 1.w,
                  ),
                ),
                child: SvgPicture.asset(
                  "assets/svgs/back.svg",
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
          ],
        ),
        centerTitle: false,
        title: AppText(
          "Repay Investment",
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: AppColors.neutral800,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          44.h.heightBox,
          CustomInputLabelWidget(
            "Amount to repay",
            controller: controller.amountToRepayController,
            hintText: "N 2,000",
            keyboardType: TextInputType.number,
            isAmount: true,
            formatter: [controller.formatter],
          ),
          4.h.heightBox,
          Container(
            padding: REdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.neutral200, width: 1.w),
              borderRadius: BorderRadius.circular(100.r),
            ),
            child: BlocBuilder<DashboardCubit, DashboardState>(
              builder: (context, state) {
                return state.whenOrNull(
                      success: (response) => AppText(
                        response.totalLoanTaken?.toString() ?? "0",
                        hasPrefix: true,
                        isAmount: true,
                        prefix: "Loan balance: - ",
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: AppColors.neutral800,
                      ),
                    ) ??
                    AppText(
                      "0",
                      hasPrefix: true,
                      isAmount: true,
                      prefix: "Loan balance: - ",
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: AppColors.neutral800,
                    );
              },
            ),
          ),
          16.h.heightBox,
          AppText(
            "Repay from",
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppColors.neutral800,
          ),
          16.h.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BlocBuilder<DashboardCubit, DashboardState>(
                builder: (context, state) {
                  return state.whenOrNull(
                        success: (response) => RepayFromCardWidget(
                          isSelected: controller.repayFrom.contains('Savings'),
                          subtitle: response.totalSavings?.toString() ?? "0",
                          title: "Savings",
                          onTap: () => controller.onSelectRepayFrom("Savings"),
                        ),
                      ) ??
                      RepayFromCardWidget(
                        isSelected: controller.repayFrom.contains('Savings'),
                        subtitle: "0",
                        title: "Savings",
                        onTap: () => controller.onSelectRepayFrom("Savings"),
                      );
                },
              ),
              12.w.widthBox,
              BlocBuilder<DashboardCubit, DashboardState>(
                builder: (context, state) {
                  return state.whenOrNull(
                        success: (response) => RepayFromCardWidget(
                          isSelected:
                              controller.repayFrom.contains('Investment'),
                          subtitle: response.totalInvestment?.toString() ?? "0",
                          title: "Investment",
                          onTap: () =>
                              controller.onSelectRepayFrom("Investment"),
                        ),
                      ) ??
                      RepayFromCardWidget(
                        isSelected: controller.repayFrom.contains('Investment'),
                        subtitle: "0",
                        title: "Investment",
                        onTap: () => controller.onSelectRepayFrom("Investment"),
                      );
                },
              ),
              12.w.widthBox,
              RepayFromCardWidget(
                isSelected: controller.repayFrom.contains('Direct'),
                subtitle: "Cash injection",
                isAmount: false,
                title: "Direct",
                onTap: () => controller.onSelectRepayFrom("Direct"),
              ),
            ],
          ),
        ],
      ).paddingSymmetric(horizontal: 20.w),
      bottomNavigationBar:
          BlocListener<RepayInvestmentCubit, RepayInvestmentState>(
        listener: (context, state) {
          state.whenOrNull(
            loading: () => AppDialog.showAppProgressDialog(context),
            success: (response) {
              context.read<DashboardCubit>().fetchDashboardData();
            },
            failure: (error) {
              context.pop();
              GetIt.I
                  .get<IWidgetHelper>()
                  .showErrorToast(context, message: error);
            },
          );
        },
        child: CustomBottomButtonWrapperWidget(
          "Continue to payment",
          onPressed: () => controller.onRepayLoan(),
        ),
      ),
    );
  }
}

class RepayFromCardWidget extends StatelessWidget {
  const RepayFromCardWidget({
    super.key,
    required this.isSelected,
    required this.subtitle,
    required this.title,
    required this.onTap,
    this.isAmount = true,
  });
  final String title;
  final String subtitle;
  final bool isSelected;
  final VoidCallback onTap;
  final bool isAmount;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8.r),
        child: Container(
          padding: REdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(
              color: isSelected ? AppColors.primary700 : AppColors.neutral300,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                title,
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: AppColors.neutral800,
              ),
              6.h.heightBox,
              AppText(
                subtitle,
                fontSize: 10,
                isAmount: isAmount,
                fontWeight: FontWeight.w400,
                color: AppColors.neutral500,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
