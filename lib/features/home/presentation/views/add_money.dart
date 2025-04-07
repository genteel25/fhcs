import 'package:awesome_extensions/awesome_extensions.dart' hide NavigatorExt;
import 'package:fhcs/core/components/custom_bottom_button_wrapper.dart';
import 'package:fhcs/core/components/custom_input_label.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/router/route_constants.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/core/utils/app_sheets.dart';
import 'package:fhcs/features/home/presentation/controllers/add_money.dart';
import 'package:fhcs/features/home/presentation/controllers/contracts/add_money.dart';
import 'package:fhcs/features/home/presentation/widgets/card_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
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
        leadingWidth: 56.w,
        backgroundColor: Color(0xffF8F8F9),
        surfaceTintColor: Color(0xffF8F8F9),
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            20.w.widthBox,
            Container(
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
            "How much do want to deposit?",
            controller: controller.amountController,
            hintText: "N 2,000",
            keyboardType: TextInputType.number,
            formatter: [
              controller.formatter,
            ],
          ),
          if (controller.mode == FundingMode.bankTransfer) ...[
            40.h.heightBox,
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
                    "Payment steps",
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: AppColors.neutral800,
                  ),
                  8.h.heightBox,
                  Row(
                    children: [
                      AppText(
                        "1. ",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.neutral500,
                      ),
                      AppText(
                        "Enter the amount you want to deposit",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.neutral500,
                      ),
                    ],
                  ),
                  2.h.heightBox,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(
                        "2. ",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.neutral500,
                      ),
                      Expanded(
                        child: AppText(
                          "Enter the percentage to be deposited into your savings and investment account and click continue",
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.neutral500,
                        ),
                      ),
                    ],
                  ),
                  2.h.heightBox,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(
                        "3. ",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.neutral500,
                      ),
                      Expanded(
                        child: AppText(
                          "You’ll be given an account number to transfer to.",
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.neutral500,
                        ),
                      ),
                    ],
                  ),
                  2.h.heightBox,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(
                        "4. ",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.neutral500,
                      ),
                      Expanded(
                        child: AppText(
                          "After transfer has been made, You should be credited within 10 minutes. If deposit doesn’t show up in your balance, please contact you bank.",
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.neutral500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
          if (controller.mode == FundingMode.card &&
              controller.hasCreditCard == true) ...[
            60.h.heightBox,
            AppText(
              "PAYMENT METHOD",
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: AppColors.neutral500,
            ),
            8.h.heightBox,
            CardItemWidget(
              selectedCard: controller.selectedCard,
              onPressed: () => AppSheets.paymentMethodSheet(
                context,
                onPressed: () {},
                selectedCard: controller.selectedCard,
                onSelectCard: (card) => controller.onSelectCard(card),
              ),
            ),
          ],
        ],
      ).paddingSymmetric(horizontal: 20.w),
      bottomNavigationBar: CustomBottomButtonWrapperWidget(
        controller.mode == FundingMode.bankTransfer
            ? "Continue to deposit"
            : controller.mode == FundingMode.card &&
                    controller.hasCreditCard == true
                ? "Pay now"
                : "Continue to add card",
        onPressed: () => switch (controller.mode) {
          FundingMode.card when controller.hasCreditCard != true =>
            context.pushNamed(RouteConstants.cardDepositRoute,
                extra: controller.amountController.text),
          FundingMode.bankTransfer =>
            AppSheets.depositSheet(context, onPressed: () {}),
          _ => AppSheets.depositSuccessfulSheet(context, onPressed: () {}),
        },
      ),
    );
  }
}
