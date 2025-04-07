import 'package:awesome_extensions/awesome_extensions.dart' hide NavigatorExt;
import 'package:fhcs/core/components/custom_button.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/router/route_constants.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/core/utils/app_sheets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class DepositSheetWidget extends StatelessWidget {
  const DepositSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: REdgeInsets.only(
          top: MediaQuery.of(context).padding.top, left: 20, right: 20),
      decoration: BoxDecoration(
        color: AppColors.lightest,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.r),
          topRight: Radius.circular(24.r),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          47.h.heightBox,
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
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
                child: SvgPicture.asset("assets/svgs/cancel.svg"),
              ).onTap(() => context.pop()),
              16.w.widthBox,
              AppText(
                "Deposit",
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
          28.h.heightBox,
          Container(
            padding: REdgeInsets.symmetric(horizontal: 8, vertical: 21),
            decoration: BoxDecoration(
              color: AppColors.neutral100,
              borderRadius: BorderRadius.circular(4.r),
            ),
            child: Column(
              children: [
                AppText(
                  "Transfer exactly the amount specified to avoid conflicts",
                  fontSize: 14,
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.w500,
                  color: AppColors.neutral800,
                ).paddingSymmetric(horizontal: 26.w),
                15.h.heightBox,
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
                        "BANK NAME",
                        fontSize: 12,
                        color: AppColors.neutral500,
                        fontWeight: FontWeight.w500,
                      ),
                      4.h.heightBox,
                      AppText(
                        "FHCS - Paystack",
                        fontSize: 12,
                        color: AppColors.neutral800,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                ),
                4.h.heightBox,
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
                        "ACCOUNT NUMBER",
                        fontSize: 12,
                        color: AppColors.neutral500,
                        fontWeight: FontWeight.w500,
                      ),
                      4.h.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            "1234567890",
                            fontSize: 12,
                            color: AppColors.neutral800,
                            fontWeight: FontWeight.w500,
                          ),
                          SvgPicture.asset(
                            "assets/svgs/copy.svg",
                            width: 13.sp,
                            height: 13.sp,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                4.h.heightBox,
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
                        "AMOUNT",
                        fontSize: 12,
                        color: AppColors.neutral500,
                        fontWeight: FontWeight.w500,
                      ),
                      4.h.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            "N 20,000",
                            fontSize: 12,
                            color: AppColors.neutral800,
                            fontWeight: FontWeight.w500,
                          ),
                          SvgPicture.asset(
                            "assets/svgs/copy.svg",
                            width: 13.sp,
                            height: 13.sp,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                12.h.heightBox,
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text:
                        "This account is for this transaction only and it expires in ",
                    style: GoogleFonts.onest(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.neutral800,
                    ),
                    children: [
                      TextSpan(
                        text: "14:59",
                        style: GoogleFonts.onest(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.primary700,
                        ),
                      ),
                    ],
                  ),
                ).paddingSymmetric(horizontal: 32.w),
              ],
            ),
          ),
          55.h.heightBox,
          Image.asset("assets/images/primary_logo.png", height: 48.h)
              .animate()
              .slideX(
                  begin: 1,
                  end: 0,
                  duration: const Duration(milliseconds: 200)),
          const Spacer(),
          SizedBox(
            width: double.infinity,
            height: 44.h,
            child: CustomButtonWidget(
              "I've sent the money",
              onPressed: () => AppSheets.depositSuccessfulSheet(context,
                  onPressed: () => context.goNamed(
                        RouteConstants.homeRoute,
                      )),
            ),
          ),
          16.h.heightBox,
          SizedBox(
            width: double.infinity,
            height: 44.h,
            child: OutlinedButton(
              onPressed: () => context.pop(),
              style: OutlinedButton.styleFrom(
                  backgroundColor: AppColors.lightest,
                  side: BorderSide(
                    color: AppColors.neutral300,
                    width: 1.w,
                  )),
              child: AppText(
                "Go back",
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.neutral800,
              ),
            ),
          ),
          24.h.heightBox,
        ],
      ),
    );
  }
}
