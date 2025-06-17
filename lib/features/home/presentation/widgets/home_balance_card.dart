import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBalanceCardWidget extends StatelessWidget {
  const HomeBalanceCardWidget({
    super.key,
    required this.balance,
    required this.balanceTypeLabel,
    required this.gradientColors,
  });
  final List<Color> gradientColors;
  final String balanceTypeLabel;
  final String balance;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 238.w,
      decoration: BoxDecoration(
        // color: AppColors.primary700,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: gradientColors,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Stack(
        children: [
          Image.asset(
            "assets/images/home_card_pattern.png",
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Container(
            padding: REdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  balanceTypeLabel,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColors.lightest,
                ),
                const Spacer(),
                AppText(
                  balance,
                  fontSize: 20,
                  isAmount: true,
                  fontWeight: FontWeight.w500,
                  color: AppColors.lightest,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
