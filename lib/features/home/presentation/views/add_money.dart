import 'package:awesome_extensions/awesome_extensions.dart' hide NavigatorExt;
import 'package:fhcs/core/components/custom_back_button.dart';
import 'package:fhcs/core/components/custom_bottom_button_wrapper.dart';
import 'package:fhcs/core/components/custom_input_label.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/helpers/contracts/iwidget_helper.dart';
import 'package:fhcs/core/router/route_constants.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/core/utils/app_dialog.dart';
import 'package:fhcs/core/utils/app_sheets.dart';
import 'package:fhcs/features/home/presentation/bloc/initiate_funding/initiate_funding_cubit.dart';
import 'package:fhcs/features/home/presentation/bloc/verify_funding/verify_funding_cubit.dart';
import 'package:fhcs/features/home/presentation/controllers/add_money.dart';
import 'package:fhcs/features/home/presentation/controllers/contracts/add_money.dart';
import 'package:fhcs/features/home/presentation/widgets/card_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import 'contracts/add_money.dart';

class AddMoneyView extends StatelessWidget implements AddMoneyViewContract {
  const AddMoneyView({super.key, required this.controller});
  final AddMoneyControllerContract controller;
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
              CustomBackButtonWidget(borderColor: AppColors.neutral200),
            ],
          ),
          centerTitle: false,
          title: AppText(
            "Add Money",
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: AppColors.neutral800,
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            16.h.heightBox,
            CustomInputLabelWidget(
              "How much do you want to deposit?",
              controller: controller.amountController,
              hintText: "N 2,000",
              isAmount: true,
              keyboardType: TextInputType.number,
              formatter: [
                controller.formatter,
              ],
            ),
            10.h.heightBox,
            Container(
              padding: REdgeInsets.symmetric(horizontal: 8, vertical: 12),
              decoration: BoxDecoration(
                color: Color(0xffF0F0F0),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Row(
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomInputLabelWidget(
                        "Savings",
                        controller: controller.savingsAmountController,
                        hintText: "N150,000",
                        fillColor: Color(0xffE8E9EA),
                        isAmount: true,
                        isEnabled: controller.amountController.text.isNotEmpty,
                        keyboardType: TextInputType.number,
                        formatter: [
                          controller.savingsFormatter,
                        ],
                      ),
                      4.h.heightBox,
                      AppText(
                        "${controller.savingsPercent}% contribution",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.neutral400,
                      ),
                    ],
                  )),
                  24.w.widthBox,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomInputLabelWidget(
                          "Investment",
                          controller: controller.investmentAmountController,
                          isEnabled:
                              controller.amountController.text.isNotEmpty,
                          hintText: "N150,000",
                          fillColor: Color(0xffE8E9EA),
                          isReadOnly: true,
                          isAmount: true,
                          keyboardType: TextInputType.number,
                          formatter: [
                            controller.investmentFormatter,
                          ],
                        ),
                        4.h.heightBox,
                        AppText(
                          "${controller.investmentPercent}% contribution",
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.neutral400,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            24.h.heightBox,
            Container(
              width: double.infinity,
              padding: REdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppColors.neutral100,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    "Take note",
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                  8.h.heightBox,
                  AppText(
                    "1.  Enter the amount you want to deposit",
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColors.neutral500,
                  ),
                  4.h.heightBox,
                  AppText(
                    "2. Complete your payment",
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColors.neutral500,
                  ),
                  24.h.heightBox,
                  AppText(
                    "**",
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColors.neutral500,
                  ).paddingOnly(left: 16.w),
                  16.h.heightBox,
                  AppText(
                    "You should be credited within 10 minutes. If deposit doesn’t show up in your balance, please contact you bank",
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColors.neutral500,
                  ).paddingOnly(left: 16.w),
                ],
              ),
            ),
          ],
        ).paddingSymmetric(horizontal: 20.w),
        bottomNavigationBar: MultiBlocListener(
            listeners: [
              BlocListener<InitiateFundingCubit, InitiateFundingState>(
                listener: (context, state) {
                  state.whenOrNull(
                    loading: () => AppDialog.showAppProgressDialog(context),
                    success: (response) {
                      context.pop();
                      controller.payViaCard(
                          refId: response.refId ?? "",
                          amount: (response.amount ?? 0).toString());
                    },
                    failure: (error) {
                      context.pop();
                      GetIt.I
                          .get<IWidgetHelper>()
                          .showErrorToast(context, message: error);
                    },
                  );
                },
              ),
              BlocListener<VerifyFundingCubit, VerifyFundingState>(
                listener: (context, state) {
                  state.whenOrNull(
                    loading: () => AppDialog.showAppProgressDialog(context),
                    success: (response) {
                      context.pop();

                      controller.onVerifyFunding();
                    },
                    failure: (error) {
                      context.pop();
                      GetIt.I
                          .get<IWidgetHelper>()
                          .showErrorToast(context, message: error);
                    },
                  );
                },
                child: Container(),
              )
            ],
            child: CustomBottomButtonWrapperWidget(
              "Continue to deposit",
              onPressed: controller.amountController.text.isEmpty
                  ? null
                  : () => controller.onDeposit(),
            )));
  }
}
