import 'package:awesome_extensions/awesome_extensions.dart' hide NavigatorExt;
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/router/route_constants.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/features/loans/presentation/controllers/contracts/loan_application.dart';
import 'package:fhcs/features/loans/presentation/views/contracts/loan_application.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class LoanApplicationView extends StatelessWidget
    implements LoanApplicationViewContract {
  const LoanApplicationView({super.key, required this.controller});
  final LoanApplicationControllerContract controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 36.h,
        leadingWidth: 58.w,
        backgroundColor: Color(0xffF8F8F9),
        surfaceTintColor: Color(0xffF8F8F9),
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            20.sp.widthBox,
            InkWell(
              borderRadius: BorderRadius.circular(100.r),
              onTap: () => context.pop(),
              child: Container(
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
            ),
          ],
        ),
        centerTitle: false,
        title: AppText(
          "Apply for loan",
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: AppColors.neutral800,
        ),
      ),
      backgroundColor: Color(0xffF8F8F9),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          16.h.heightBox,
          ListTile(
            leading: Container(
              padding: REdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.info700.withValues(alpha: 0.15),
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(
                "assets/svgs/money_bag.svg",
                colorFilter: ColorFilter.mode(
                  AppColors.info700,
                  BlendMode.srcIn,
                ),
              ),
            ),
            visualDensity: const VisualDensity(vertical: -4),
            contentPadding: REdgeInsets.symmetric(horizontal: 20, vertical: 16),
            title: AppText(
              "Conventional loan",
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.neutral800,
            ).paddingOnly(bottom: 4.h),
            subtitle: AppText(
              "Up to 2x your savings balance for planned expenses.",
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: AppColors.neutral500,
            ),
            onTap: () =>
                context.pushNamed(RouteConstants.normalLoanRoute, extra: true),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 14.sp,
            ),
          ),
          ListTile(
            leading: Container(
              padding: REdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.violet800.withValues(alpha: 0.15),
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(
                "assets/svgs/money_bag.svg",
                colorFilter: ColorFilter.mode(
                  AppColors.violet800,
                  BlendMode.srcIn,
                ),
              ),
            ),
            visualDensity: const VisualDensity(vertical: -4),
            contentPadding: REdgeInsets.symmetric(horizontal: 20, vertical: 16),
            title: AppText(
              "Emergency loan",
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.neutral800,
            ).paddingOnly(bottom: 4.h),
            subtitle: AppText(
              "Up to 35% of your savings balance for unplanned needs.",
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: AppColors.neutral500,
            ),
            onTap: () =>
                context.pushNamed(RouteConstants.normalLoanRoute, extra: false),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 14.sp,
            ),
          ),
        ],
      ),
    );
  }
}
