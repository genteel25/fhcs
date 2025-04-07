import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:fhcs/core/components/custom_button.dart';
import 'package:fhcs/core/components/custom_checkbox.dart';
import 'package:fhcs/core/components/custom_input_label.dart';
import 'package:fhcs/core/components/custom_switch.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/core/utils/app_constant.dart';
import 'package:fhcs/core/utils/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/formatters/credit_card_cvc_input_formatter.dart';
import 'package:flutter_multi_formatter/formatters/credit_card_expiration_input_formatter.dart';
import 'package:flutter_multi_formatter/formatters/credit_card_number_input_formatter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodSheetWidget extends StatefulWidget {
  const PaymentMethodSheetWidget({
    super.key,
    required this.onPressed,
    required this.onSelectCard,
    required this.selectedCard,
  });
  final VoidCallback onPressed;
  final String selectedCard;
  final Function(String) onSelectCard;

  @override
  State<PaymentMethodSheetWidget> createState() =>
      _PaymentMethodSheetWidgetState();
}

class _PaymentMethodSheetWidgetState extends State<PaymentMethodSheetWidget> {
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController cvcController = TextEditingController();
  TextEditingController expiryController = TextEditingController();

  bool saveCardForLater = false;

  void onSaveCardForLater(bool value) {
    setState(() {
      saveCardForLater = value;
    });
  }

  late String selectedCard;
  bool isSelect = true;
  @override
  void initState() {
    super.initState();
    selectedCard = widget.selectedCard;
  }

  void onToggleMode(bool value) {
    setState(() {
      isSelect = value;
    });
  }

  void onSelectCard(String card) {
    setState(() {
      selectedCard = card;
    });
    widget.onSelectCard(card);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          24.h.heightBox,
          if (isSelect) ...[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  "Payment Method",
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: AppColors.neutral800,
                ),
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
            ListView.separated(
              shrinkWrap: true,
              itemCount: creditCards.length,
              separatorBuilder: (BuildContext context, int index) {
                return Divider(
                  height: 0.h,
                  thickness: 1.h,
                  color: AppColors.neutral100,
                );
              },
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  highlightColor: AppColors.primary100.withValues(alpha: 0.3),
                  splashColor: AppColors.primary100.withValues(alpha: 0.8),
                  borderRadius: BorderRadius.circular(4.r),
                  onTap: () => onSelectCard(creditCards[index]),
                  child: Container(
                    padding: REdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      children: [
                        CustomCheckbox(
                          value: creditCards[index] == selectedCard,
                          width: 20.w,
                          height: 20.h,
                          onChanged: (e) => onSelectCard(creditCards[index]),
                          iconSize: 12.sp,
                        ),
                        20.w.widthBox,
                        SvgPicture.asset(
                            "assets/svgs/${switch (getCardType(creditCards[index])) {
                          "Visa" => "visa",
                          _ => "mastercard",
                        }}.svg"),
                        20.w.widthBox,
                        AppText(
                          formatMaskedCard(creditCards[index]),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.neutral800,
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 14,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            Divider(
              height: 0.h,
              thickness: 1.h,
              color: AppColors.neutral100,
            ),
            12.h.heightBox,
            InkWell(
              highlightColor: AppColors.primary100.withValues(alpha: 0.3),
              splashColor: AppColors.primary100.withValues(alpha: 0.8),
              borderRadius: BorderRadius.circular(4.r),
              onTap: () => onToggleMode(false),
              child: Container(
                padding: REdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.neutral200,
                  ),
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Row(
                  children: [
                    AppText(
                      "Add a new card",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.neutral800,
                    ),
                    const Spacer(),
                    Icon(
                      Icons.add,
                      size: 12,
                    ),
                  ],
                ),
              ),
            ),
            // const Spacer(),
            224.h.heightBox,
          ] else ...[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
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
                      child: Icon(Icons.arrow_back_ios, size: 14),
                    ).onTap(() => onToggleMode(true)),
                    16.w.widthBox,
                    AppText(
                      "Add new card",
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: AppColors.neutral800,
                    ),
                  ],
                ),
                const Spacer(),
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
            CustomInputLabelWidget(
              "Card number",
              controller: cardNumberController,
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
                    controller: expiryController,
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
                    controller: cvcController,
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
                  value: saveCardForLater,
                  onChanged: onSaveCardForLater,
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
            272.h.heightBox,
          ],
          SizedBox(
            width: double.infinity,
            height: 44.h,
            child: CustomButtonWidget(
              isSelect ? "Confirm" : "Save and Confirm",
              onPressed: () => context.pop(),
            ),
          ),
          16.h.heightBox,
        ],
      ).paddingSymmetric(horizontal: 20.w),
    );
  }
}
