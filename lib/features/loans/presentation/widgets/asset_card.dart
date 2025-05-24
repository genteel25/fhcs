import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AssetCardWidget extends StatelessWidget {
  const AssetCardWidget({
    super.key,
    this.balance,
    this.gradientColor,
    this.title,
  });
  final List<Color>? gradientColor;
  final String? title;
  final String? balance;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 108.h,
      width: double.infinity,
      margin: REdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        // color: AppColors.primary700,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: gradientColor ??
              [
                Color(0xff30A46C),
                Color(0xff193B2D),
              ],
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            "assets/images/home_card_pattern.png",
            fit: BoxFit.fitWidth,
            width: double.infinity,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              AppText(
                title ?? "Loan balance",
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: AppColors.lightest,
              ),
              4.h.heightBox,
              AppText(
                balance ?? "N 1,205,890.00",
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: AppColors.lightest,
                isAmount: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
