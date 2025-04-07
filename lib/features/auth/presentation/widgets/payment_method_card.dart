import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodCardWidget extends StatelessWidget {
  const PaymentMethodCardWidget({
    super.key,
    required this.assetName,
    required this.paymentMethod,
    required this.paymentInfo,
    this.onTap,
  });
  final String assetName;
  final String paymentMethod;
  final List<String> paymentInfo;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? () {},
      child: Container(
        width: double.infinity,
        padding: REdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: AppColors.lightest,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.08),
              blurRadius: 24.r,
              spreadRadius: 6.r,
              offset: Offset(0, 6),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset("assets/svgs/$assetName.svg"),
            8.h.heightBox,
            AppText(
              paymentMethod,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
            8.h.heightBox,
            Column(
              children: List.generate(
                paymentInfo.length,
                (index) => Row(
                  children: [
                    _buildDot(),
                    8.w.widthBox,
                    AppText(
                      paymentInfo[index],
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: AppColors.neutral500,
                    ),
                  ],
                ).paddingOnly(bottom: index == paymentInfo.length - 1 ? 0 : 8),
              ),
            ),
            // Row(
            //   children: [
            //     _buildDot(),
            //     8.w.widthBox,
            //     AppText(
            //       "Transfer to a virtual account number",
            //       fontSize: 10,
            //       fontWeight: FontWeight.w400,
            //       color: AppColors.neutral500,
            //     ),
            //   ],
            // ),
            // 4.h.heightBox,
            // Row(
            //   children: [
            //     _buildDot(),
            //     8.w.widthBox,
            //     AppText(
            //       "Payment will be verified within 24 hours",
            //       fontSize: 10,
            //       fontWeight: FontWeight.w400,
            //       color: AppColors.neutral500,
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }

  Widget _buildDot() {
    return Container(
      width: 4.sp,
      height: 4.sp,
      decoration: BoxDecoration(
        color: AppColors.primary200,
        shape: BoxShape.circle,
      ),
    );
  }
}
