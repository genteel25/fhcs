import 'package:awesome_extensions/awesome_extensions.dart' hide NavigatorExt;
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/router/route_constants.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/features/home/presentation/controllers/add_money.dart';
import 'package:fhcs/features/loans/presentation/controllers/contracts/cash_injection.dart';
import 'package:fhcs/features/loans/presentation/views/contracts/cash_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class CashInjectionView extends StatelessWidget
    implements CashInjectionViewContract {
  const CashInjectionView({super.key, required this.controller});
  final CashInjectionControllerContract controller;
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
          "Cash Injection",
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: AppColors.neutral800,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          44.h.heightBox,
          ListTile(
            contentPadding: REdgeInsets.symmetric(horizontal: 20, vertical: 16),
            visualDensity: const VisualDensity(vertical: -4),
            leading: SvgPicture.asset(
              "assets/svgs/merchant.svg",
              width: 32.w,
              height: 32.h,
            ),
            title: AppText(
              "Via bank transfer",
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.neutral800,
            ).paddingOnly(bottom: 8.h),
            subtitle: AppText(
              "Transfer to a virtual account number",
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: AppColors.neutral500,
            ),
            onTap: () => context.pushNamed(RouteConstants.addMoneyRoute),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 12.sp,
              color: AppColors.neutral800,
            ),
          ),
          Divider(height: 0.h, color: AppColors.neutral100, thickness: 1.h),
          ListTile(
            contentPadding: REdgeInsets.symmetric(horizontal: 20, vertical: 16),
            visualDensity: const VisualDensity(vertical: -4),
            leading: SvgPicture.asset(
              "assets/svgs/merchant.svg",
              width: 32.w,
              height: 32.h,
            ),
            title: AppText(
              "Via Card",
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.neutral800,
            ).paddingOnly(bottom: 8.h),
            subtitle: AppText(
              "Deposit directly with your debit card",
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: AppColors.neutral500,
            ),
            onTap: () => context.pushNamed(
              RouteConstants.addMoneyRoute,
              extra: (mode: FundingMode.card, hasCreditCard: true),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 12.sp,
              color: AppColors.neutral800,
            ),
          ),
        ],
      ),
    );
  }
}
