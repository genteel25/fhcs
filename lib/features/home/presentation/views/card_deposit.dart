import 'package:awesome_extensions/awesome_extensions.dart' hide NavigatorExt;
import 'package:fhcs/core/components/custom_bottom_button_wrapper.dart';
import 'package:fhcs/core/components/custom_input_label.dart';
import 'package:fhcs/core/components/custom_switch.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/router/route_constants.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/core/utils/app_sheets.dart';
import 'package:fhcs/core/utils/global_variables.dart';
import 'package:fhcs/features/home/presentation/controllers/contracts/card_deposit.dart';
import 'package:fhcs/features/home/presentation/views/contracts/card_deposit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class CardDepositView extends StatelessWidget
    implements CardDepositViewContract {
  const CardDepositView({super.key, required this.controller});
  final CardDepositControllerContract controller;
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
          "Deposit",
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
            "Card number",
            controller: controller.cardNumberController,
            hintText: "0000 0000 0000 0000",
            prefixAsset: "credit_card",
            formatter: [
              CreditCardNumberInputFormatter(),
            ],
          ),
          16.h.heightBox,
          Row(
            children: [
              Expanded(
                child: CustomInputLabelWidget(
                  "Expiry ",
                  controller: controller.expiryController,
                  hintText: "MM/YY",
                  prefixAsset: "credit_card",
                  formatter: [
                    CreditCardExpirationDateFormatter(),
                  ],
                ),
              ),
              16.w.widthBox,
              Expanded(
                child: CustomInputLabelWidget(
                  "CVV ",
                  controller: controller.cvvController,
                  hintText: "123",
                  prefixAsset: "lock",
                  formatter: [
                    CreditCardCvcInputFormatter(),
                  ],
                ),
              ),
            ],
          ),
          24.h.heightBox,
          Row(
            children: [
              CustomSwitch(
                value: controller.saveCardForLater,
                onChanged: controller.onSaveCardForLater,
                width: 46.w,
                height: 24.h,
                thumbSize: 16.sp,
              ),
              12.w.widthBox,
              AppText(
                "Save card for later",
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.neutral800,
              ),
            ],
          ),
        ],
      ).paddingSymmetric(horizontal: 20.w),
      bottomNavigationBar: CustomBottomButtonWrapperWidget(
        "Pay ${controller.depositAmount.toCurrencyString(
          leadingSymbol: GlobalVariables.nairaCurrencySymbol,
          mantissaLength: 0,
        )}",
        onPressed: () => AppSheets.depositSuccessfulSheet(
          context,
          onPressed: () => context.goNamed(
            RouteConstants.homeRoute,
          ),
        ),
      ),
    );
  }
}
