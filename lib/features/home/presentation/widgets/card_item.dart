import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/core/utils/app_constant.dart';
import 'package:fhcs/core/utils/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CardItemWidget extends StatelessWidget {
  const CardItemWidget({
    super.key,
    required this.onPressed,
    required this.selectedCard,
  });
  final Function onPressed;
  final String selectedCard;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: AppColors.primary100.withValues(alpha: 0.3),
      splashColor: AppColors.primary100.withValues(alpha: 0.8),
      borderRadius: BorderRadius.circular(4.r),
      onTap: () => onPressed(),
      child: Padding(
        padding: REdgeInsets.symmetric(vertical: 16),
        child: Row(
          children: [
            SvgPicture.asset("assets/svgs/${switch (getCardType(selectedCard)) {
              "Visa" => "visa",
              _ => "mastercard",
            }}.svg"),
            20.w.widthBox,
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(
                    formatMaskedCard(creditCards.first),
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
          ],
        ),
      ),
    );
  }
}
