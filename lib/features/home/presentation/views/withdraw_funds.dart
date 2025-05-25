import 'package:awesome_extensions/awesome_extensions.dart' hide NavigatorExt;
import 'package:fhcs/core/components/custom_back_button.dart';
import 'package:fhcs/core/components/custom_bottom_button_wrapper.dart';
import 'package:fhcs/core/components/custom_input_label.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/helpers/contracts/iwidget_helper.dart';
import 'package:fhcs/core/router/route_constants.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/core/utils/app_sheets.dart';
import 'package:fhcs/core/utils/extensions.dart';
import 'package:fhcs/features/home/presentation/bloc/dashboard/dashboard_cubit.dart';
import 'package:fhcs/features/home/presentation/bloc/initiate_withdrawal/initiate_withdrawal_cubit.dart';
import 'package:fhcs/features/home/presentation/bloc/transactions/transactions_cubit.dart';
import 'package:fhcs/features/home/presentation/controllers/contracts/withdraw_funds.dart';
import 'package:fhcs/features/home/presentation/controllers/withdraw_funds.dart';
import 'package:fhcs/features/home/presentation/views/contracts/withdraw_funds.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:loader_overlay/loader_overlay.dart';

class WithdrawFundView extends StatelessWidget
    implements WithdrawFundViewContract {
  const WithdrawFundView({super.key, required this.controller});
  final WithdrawFundControllerContract controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F9),
      appBar: AppBar(
        toolbarHeight: 36.h,
        leadingWidth: 56.w,
        backgroundColor: Color(0xffF8F8F9),
        surfaceTintColor: Color(0xffF8F8F9),
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            20.w.widthBox,
            CustomBackButtonWidget(borderColor: AppColors.neutral200),
          ],
        ),
        centerTitle: false,
        title: AppText(
          "Withdraw funds",
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: AppColors.neutral800,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          28.h.heightBox,
          CustomInputLabelWidget(
            "You Withdraw",
            controller: controller.withdrawalAmountController,
            hintText: "N 200,000",
            formatter: [
              controller.formatter,
            ],
            isAmount: true,
          ),
          Container(
            height: 16.h,
            margin: REdgeInsets.only(left: 18),
            child: VerticalDivider(
              color: AppColors.neutral300,
            ),
          ),
          Container(
            padding: REdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.r),
              border: Border.all(
                width: 1.w,
                color: AppColors.neutral200,
              ),
            ),
            child: BlocBuilder<DashboardCubit, DashboardState>(
              builder: (context, state) {
                return state.whenOrNull(
                      success: (response) => AppText(
                        controller.withdrawalAccount ==
                                WithdrawalAccount.savings
                            ? response.totalSavings?.toString() ?? "0"
                            : response.totalInvestment?.toString() ?? "0",
                        isAmount: true,
                        hasPrefix: true,
                        prefix: controller.withdrawalAccount ==
                                WithdrawalAccount.savings
                            ? "Savings balance: "
                            : "Investment balance: ",
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: AppColors.neutral800,
                      ),
                    ) ??
                    AppText(
                      "0",
                      isAmount: true,
                      hasPrefix: true,
                      prefix: "Savings balance: ",
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: AppColors.neutral800,
                    );
              },
            ),
          ),
          Container(
            height: 16.h,
            margin: REdgeInsets.only(left: 18),
            child: VerticalDivider(color: AppColors.neutral300),
          ),
          Container(
            padding: REdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.r),
              border: Border.all(
                width: 1.w,
                color: AppColors.neutral200,
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset("assets/svgs/database.svg"),
                6.w.widthBox,
                AppText(
                  "Fee: -N0",
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: AppColors.neutral800,
                ),
              ],
            ),
          ),
          Container(
            height: 16.h,
            margin: REdgeInsets.only(left: 18),
            child: VerticalDivider(
              color: AppColors.neutral300,
            ),
          ),
          CustomInputLabelWidget(
            "You Receive",
            controller: controller.amountReceivedController,
            hintText: "N 199,990",
            formatter: [
              controller.formatter,
            ],
          ),
          16.h.heightBox,
          CustomInputLabelWidget(
            "Description (Optional)",
            controller: controller.descriptionController,
            hintText: "Add a description",
          ),
        ],
      ).paddingSymmetric(horizontal: 20.w),
      bottomNavigationBar:
          BlocListener<InitiateWithdrawalCubit, InitiateWithdrawalState>(
        listener: (context, state) {
          state.whenOrNull(
            loading: () => AppDialog.showAppProgressDialog(context),
            success: (response) {
              context.pop();
              AppSheets.depositSuccessfulSheet(
                context,
                onPressed: () {
                  context.goNamed(RouteConstants.homeRoute);
                  context.read<DashboardCubit>().fetchDashboardData();
                  context.read<TransactionsCubit>().fetchTransactions();
                },
                title: "Withdrawal request successful",
                subtitle:
                    "Your funds withdrawal request has been submitted successfully",
              );
            },
            failure: (error) {
              context.pop();
              GetIt.I
                  .get<IWidgetHelper>()
                  .showErrorToast(context, message: error);
            },
          );
        },
        child: CustomBottomButtonWrapperWidget("Continue",
            onPressed: controller.withdrawalAmountController.text.isEmpty
                ? null
                : () => controller.onContiune()),
      ),
    );
  }
}
