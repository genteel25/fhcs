import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/router/route_constants.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/features/home/presentation/widgets/home_action.dart';
import 'package:fhcs/features/home/presentation/widgets/home_balance_card.dart';
import 'package:fhcs/features/loans/presentation/controllers/contracts/loans.dart';
import 'package:fhcs/features/loans/presentation/views/contracts/loans.dart';
import 'package:fhcs/features/loans/presentation/widgets/loan_application.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LoansView extends StatelessWidget implements LoansViewContract {
  const LoansView({super.key, required this.controller});
  final LoansControllerContract controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F9),
      body: DefaultTabController(
        length: 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xffFFFFFF),
                    Color(0xffADD9C6),
                  ],
                ),
              ),
              child: SafeArea(
                bottom: false,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    16.h.heightBox,
                    Row(
                      children: [
                        Container(
                          width: 43.w,
                          height: 43.h,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1.w,
                              color: AppColors.neutral600,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            "assets/images/tbd/avatar.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        12.w.widthBox,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              "Hi Ajangbadi",
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: AppColors.neutral800,
                              height: 1,
                            ),
                            AppText(
                              "Click to view profile >>",
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColors.neutral500,
                              textDecoration: TextDecoration.underline,
                            ),
                          ],
                        ),
                        const Spacer(),
                        Container(
                          padding: REdgeInsets.all(14),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.primary100,
                          ),
                          child: SvgPicture.asset(
                            "assets/svgs/bell.svg",
                            height: 12,
                          ),
                        )
                      ],
                    ).paddingSymmetric(horizontal: 20.w),
                    24.h.heightBox,
                    Container(
                      height: 108.h,
                      width: double.infinity,
                      margin: REdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        // color: AppColors.primary700,
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
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
                                "Loan balance",
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: AppColors.lightest,
                              ),
                              4.h.heightBox,
                              AppText(
                                "N 1,205,890.00",
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: AppColors.lightest,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            24.h.heightBox,
            Row(
              children: [
                HomeActionWidget(
                  isFilled: true,
                  actionLabel: "Apply for loans",
                  actionAsset: "money_bag",
                  onTap: () {},
                ),
                HomeActionWidget(
                  actionLabel: "Repay loans",
                  actionAsset: "curve",
                  onTap: () {},
                ),
                HomeActionWidget(
                  actionLabel: "Referee request",
                  actionAsset: "person_group",
                  iconSize: 18.sp,
                  onTap: () {},
                ),
              ],
            ).paddingSymmetric(horizontal: 20.w),
            32.h.heightBox,
            SizedBox(
              height: 36.h,
              child: TabBar(
                labelPadding: REdgeInsets.symmetric(horizontal: 6),
                padding: REdgeInsets.symmetric(horizontal: 16),
                indicatorPadding: EdgeInsets.zero,
                tabAlignment: TabAlignment.start,
                labelColor: AppColors.neutral800,
                unselectedLabelColor: AppColors.neutral500,
                isScrollable: true,
                dividerColor: Colors.transparent,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 2.h,
                indicatorColor: AppColors.primary100,
                splashFactory: InkRipple.splashFactory,
                indicator: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 2.w, color: AppColors.neutral800),
                  ),
                ),
                tabs: [
                  Tab(
                    text: "Applications",
                  ),
                  Tab(
                    text: "Active Loan",
                  ),
                  Tab(
                    text: "History",
                  ),
                ],
              ),
            ),
            16.h.heightBox,
            Expanded(
              child: SingleChildScrollView(
                primary: true,
                child: Column(
                  children: [
                    Container(
                      padding: REdgeInsets.symmetric(vertical: 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        // color: AppColors.lightest,
                      ),
                      child: ListView.separated(
                        shrinkWrap: true,
                        primary: false,
                        padding: EdgeInsets.zero,
                        itemBuilder: (context, index) {
                          return LoanApplicationItemWidget();
                        },
                        separatorBuilder: (context, index) {
                          return Divider(
                              color: AppColors.neutral100, height: 0.h);
                        },
                        itemCount: 8,
                      ),
                    ).paddingSymmetric(horizontal: 20.w),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
