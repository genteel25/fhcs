import 'package:awesome_extensions/awesome_extensions.dart' hide NavigatorExt;
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/router/route_constants.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/features/home/presentation/controllers/contracts/home.dart';
import 'package:fhcs/features/home/presentation/views/contracts/home.dart';
import 'package:fhcs/features/home/presentation/widgets/home_action.dart';
import 'package:fhcs/features/home/presentation/widgets/home_balance_card.dart';
import 'package:fhcs/features/home/presentation/widgets/home_transaction_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatelessWidget implements HomeViewContract {
  const HomeView({super.key, required this.controller});
  final HomeControllerContract controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F9),
      body: Column(
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
                                width: 1.w, color: AppColors.neutral600),
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
                    29.h.heightBox,
                    AppText(
                      "Total balance",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.neutral500,
                    ).paddingSymmetric(horizontal: 20.w),
                    4.h.heightBox,
                    AppText(
                      "N1,716,090.00",
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      color: AppColors.neutral800,
                    ).paddingSymmetric(horizontal: 20.w),
                    15.h.heightBox,
                    SizedBox(
                      height: 84.h,
                      child: ListView(
                        padding: REdgeInsets.symmetric(horizontal: 20),
                        scrollDirection: Axis.horizontal,
                        children: [
                          HomeBalanceCardWidget(
                            balance: "N1,205,890.00",
                            balanceTypeLabel: "Savings Balance",
                            gradientColors: [
                              Color(0xff30A46C),
                              Color(0xff193B2D),
                            ],
                          ),
                          8.w.widthBox,
                          HomeBalanceCardWidget(
                            balance: "510,200.00 NGN",
                            balanceTypeLabel: "Investment Balance",
                            gradientColors: [
                              Color(0xff1E1E31),
                              Color(0xff070720),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // 24.h.heightBox,
                  ],
                )),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  19.h.heightBox,
                  Container(
                    padding: REdgeInsets.all(8),
                    margin: REdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: AppColors.gold600,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: AppText(
                      "You have an outstanding balance on your loan financing, which prevents withdrawals until repayment is made",
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.gold800,
                    ),
                  ),
                  22.h.heightBox,
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HomeActionWidget(
                        isFilled: false,
                        actionLabel: "Fund\nAccount",
                        onTap: () =>
                            context.pushNamed(RouteConstants.depositFundRoute),
                      ),
                      HomeActionWidget(
                        actionLabel: "Withdraw\nFunds",
                        actionAsset: "arrow_right_up",
                        onTap: () =>
                            context.pushNamed(RouteConstants.withdrawFromRoute),
                      ),
                      HomeActionWidget(
                        actionLabel: "Apply for\nLoans",
                        actionAsset: "wallet",
                        onTap: () => context
                            .pushNamed(RouteConstants.loanApplicationRoute),
                      ),
                      HomeActionWidget(
                        actionLabel: "Apply for\nInvestments",
                        actionAsset: "chart_line",
                        onTap: () {},
                      ),
                    ],
                  ).paddingSymmetric(horizontal: 20.w),
                  22.h.heightBox,
                  AppText(
                    "Recent transactions".toUpperCase(),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: AppColors.neutral500,
                  ).paddingSymmetric(horizontal: 20.w),
                  8.h.heightBox,
                  ListView.separated(
                    padding: REdgeInsets.symmetric(horizontal: 20),
                    shrinkWrap: true,
                    primary: false,
                    itemBuilder: (context, index) {
                      return HomeTransactionCardWidget();
                    },
                    separatorBuilder: (context, index) {
                      return Divider(color: AppColors.neutral100, height: 1.h);
                    },
                    itemCount: 3,
                  ),
                  24.h.heightBox,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
