import 'package:awesome_extensions/awesome_extensions.dart' hide NavigatorExt;
import 'package:fhcs/core/components/custom_bottom_button_wrapper.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/router/route_constants.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/features/auth/presentation/controllers/contracts/membership_breakdown.dart';
import 'package:fhcs/features/auth/presentation/views/contracts/membership_breakdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class MembershipBreakdownView extends StatelessWidget
    implements MembershipBreakdownViewContract {
  const MembershipBreakdownView({super.key, required this.controller});
  final MembershipBreakdownControllerContract controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            16.h.heightBox,
            Image.asset("assets/images/primary_logo.png", height: 48.h)
                .animate()
                .slideX(
                    begin: 1,
                    end: 0,
                    duration: const Duration(milliseconds: 200)),
            24.h.heightBox,
            AppText(
              "Membership Payment",
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: AppColors.neutral800,
            ),
            4.h.heightBox,
            AppText(
              "To access the cooperative’s benefits, please complete your membership fee payment.",
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: AppColors.neutral500,
            ),
            24.h.heightBox,
            Container(
              width: double.infinity,
              padding: REdgeInsets.symmetric(horizontal: 8, vertical: 10),
              decoration: BoxDecoration(
                color: AppColors.neutral100,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: REdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      color: AppColors.lightest,
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          "AMOUNT TO PAY",
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: AppColors.neutral500,
                        ),
                        4.h.heightBox,
                        AppText(
                          controller.paymentInfo?.amount?.toString() ?? "",
                          isAmount: true,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ],
                    ),
                  ),
                  12.h.heightBox,
                  AppText(
                    "This is a one-time fee and you will not be charged for it in the future",
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: AppColors.neutral800,
                  ),
                ],
              ),
            ),
          ],
        ).paddingSymmetric(horizontal: 20.r),
      ),
      bottomNavigationBar: CustomBottomButtonWrapperWidget(
        "Continue",
        onPressed: () {
          context.pushNamed(
            RouteConstants.membershipPaymentRoute,
            extra: (
              amount: controller.paymentInfo?.amount?.toString(),
              ref: controller.paymentInfo?.refId
            ),
          );
          // controller.onSubmitBankInfo();
        },
      ),
    );
  }
}
