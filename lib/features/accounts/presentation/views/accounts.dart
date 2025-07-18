import 'package:flutter/material.dart';

import 'package:awesome_extensions/awesome_extensions.dart' hide NavigatorExt;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/router/route_constants.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/features/accounts/presentation/bloc/account_details/account_details_cubit.dart';
import 'package:fhcs/features/accounts/presentation/controllers/contracts/accounts.dart';
import 'package:fhcs/features/accounts/presentation/widget/account_history_item.dart';
import 'package:fhcs/features/home/presentation/bloc/dashboard/dashboard_cubit.dart';
import 'package:fhcs/features/home/presentation/bloc/transactions/transactions_cubit.dart';
import 'package:fhcs/features/home/presentation/bloc/user_profile/user_profile_cubit.dart';
import 'package:fhcs/features/loans/presentation/widgets/asset_card.dart';

import 'contracts/accounts.dart';

class AccountsView extends StatelessWidget implements AccountsViewContract {
  const AccountsView({super.key, required this.controller});
  final AccountsControllerContract controller;
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
                        Row(
                          children: [
                            Container(
                              width: 43.w,
                              height: 43.h,
                              decoration: BoxDecoration(
                                color: AppColors.neutral300,
                                border: Border.all(
                                    width: 3.w, color: AppColors.neutral600),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.person,
                                size: 30.sp,
                                color: AppColors.neutral600,
                              ),
                            ),
                            12.w.widthBox,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BlocBuilder<UserProfileCubit, UserProfileState>(
                                  builder: (context, state) {
                                    return state.whenOrNull(
                                          success: (response) => AppText(
                                            "Hi ${response.user?.firstName ?? ""} ${response.user?.lastName ?? ""}",
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.neutral800,
                                            height: 1,
                                          ),
                                        ) ??
                                        AppText(
                                          "Hi ${controller.fullName ?? ""}",
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.neutral800,
                                          height: 1,
                                        );
                                  },
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
                          ],
                        ).onTap(() => context.pushNamed(
                            RouteConstants.profileRoute,
                            extra: controller.fullName)),
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
                    SizedBox(
                      height: 200.h,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: BlocBuilder<DashboardCubit, DashboardState>(
                              builder: (context, state) {
                                return state.whenOrNull(
                                      success: (response) => AssetCardWidget(
                                        title: "Savings Balance",
                                        balance:
                                            response.totalSavings?.toString() ??
                                                "0",
                                      ),
                                    ) ??
                                    AssetCardWidget(
                                      title: "Savings Balance",
                                      balance: "0",
                                    );
                              },
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: BlocBuilder<DashboardCubit, DashboardState>(
                              builder: (context, state) {
                                return state.whenOrNull(
                                      success: (response) => AssetCardWidget(
                                        balance: response.totalInvestment
                                                ?.toString() ??
                                            "0",
                                        title: "Investment Balance",
                                        gradientColor: [
                                          Color(0xff1E1E31),
                                          Color(0xff070720),
                                        ],
                                      ),
                                    ) ??
                                    AssetCardWidget(
                                      balance: "0",
                                      title: "Investment Balance",
                                      gradientColor: [
                                        Color(0xff1E1E31),
                                        Color(0xff070720),
                                      ],
                                    );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    // 24.h.heightBox,
                  ],
                ),
              ),
            ),
            Container(
              padding: REdgeInsets.symmetric(horizontal: 20, vertical: 10),
              margin: REdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffE5AA08),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.r),
                  bottomRight: Radius.circular(10.r),
                ),
              ),
              child: Row(
                children: [
                  AppText(
                    "Pending debit",
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                  const Spacer(),
                  BlocBuilder<AccountDetailsCubit, AccountDetailsState>(
                    builder: (context, state) {
                      return state.whenOrNull(
                            success: (response) => AppText(
                              response.pendingDebit?.toString() ?? "0",
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              isAmount: true,
                              color: Colors.black,
                            ),
                          ) ??
                          AppText(
                            "0",
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          );
                    },
                  ),
                ],
              ),
            ),
            24.h.heightBox,
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          highlightColor:
                              AppColors.primary100.withValues(alpha: 0.3),
                          splashColor:
                              AppColors.primary100.withValues(alpha: 0.6),
                          borderRadius: BorderRadius.circular(4.r),
                          onTap: () => context
                              .pushNamed(RouteConstants.depositFundRoute),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: REdgeInsets.all(18.5),
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: AppColors.neutral800),
                                  shape: BoxShape.circle,
                                ),
                                child: SvgPicture.asset(
                                  "assets/svgs/add.svg",
                                  height: 15.sp,
                                ),
                              ),
                              8.h.heightBox,
                              AppText(
                                "Fund Account",
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: AppColors.neutral800,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          highlightColor:
                              AppColors.primary100.withValues(alpha: 0.3),
                          splashColor:
                              AppColors.primary100.withValues(alpha: 0.6),
                          borderRadius: BorderRadius.circular(4.r),
                          onTap: () => context
                              .pushNamed(RouteConstants.withdrawFromRoute),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: REdgeInsets.all(18.5),
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: AppColors.neutral800),
                                  shape: BoxShape.circle,
                                ),
                                child: SvgPicture.asset(
                                  "assets/svgs/arrow_right_up.svg",
                                  height: 15.sp,
                                  colorFilter: ColorFilter.mode(
                                    AppColors.neutral800,
                                    BlendMode.srcIn,
                                  ),
                                ),
                              ),
                              8.h.heightBox,
                              AppText(
                                "Withdraw Fund",
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: AppColors.neutral800,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          highlightColor:
                              AppColors.primary100.withValues(alpha: 0.3),
                          splashColor:
                              AppColors.primary100.withValues(alpha: 0.6),
                          borderRadius: BorderRadius.circular(4.r),
                          onTap: () =>
                              context.pushNamed(RouteConstants.statementRoute),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: REdgeInsets.all(18.5),
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: AppColors.neutral800),
                                  shape: BoxShape.circle,
                                ),
                                child: SvgPicture.asset(
                                  "assets/svgs/document.svg",
                                  height: 15.sp,
                                  colorFilter: ColorFilter.mode(
                                    AppColors.neutral800,
                                    BlendMode.srcIn,
                                  ),
                                ),
                              ),
                              8.h.heightBox,
                              AppText(
                                "Acc. Statement",
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: AppColors.neutral800,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ).paddingSymmetric(horizontal: 20.w),
                  24.h.heightBox,
                  SizedBox(
                    height: 36.h,
                    child: TabBar(
                      labelPadding: REdgeInsets.symmetric(horizontal: 6),
                      padding: REdgeInsets.symmetric(horizontal: 16),
                      indicatorPadding: REdgeInsets.only(top: 8),
                      tabAlignment: TabAlignment.start,
                      labelColor: AppColors.neutral800,
                      unselectedLabelColor: AppColors.neutral500,
                      isScrollable: true,
                      labelStyle: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.neutral800,
                      ),
                      unselectedLabelStyle: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.neutral500,
                      ),
                      dividerColor: Colors.transparent,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorWeight: 2.h,
                      indicatorColor: AppColors.primary100,
                      splashFactory: InkRipple.splashFactory,
                      indicator: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                              width: 2.w, color: AppColors.neutral800),
                        ),
                      ),
                      tabs: [
                        Tab(
                          text: "Savings",
                        ),
                        Tab(
                          text: "Investments",
                        ),
                        Tab(
                          text: "History",
                        ),
                      ],
                    ),
                  ),
                  16.h.heightBox,
                  Expanded(
                    child: TabBarView(
                      children: [
                        // AppText(""),
                        BlocBuilder<TransactionsCubit, TransactionsState>(
                          builder: (context, state) {
                            return state.whenOrNull(
                                  success: (response) {
                                    final savingHistory = response
                                        .where((transaction) =>
                                            transaction.accountType ==
                                            "Savings")
                                        .toList();
                                    return ListView.separated(
                                      padding:
                                          REdgeInsets.symmetric(horizontal: 20),
                                      itemCount: savingHistory.length,
                                      shrinkWrap: true,
                                      separatorBuilder:
                                          (BuildContext context, int index) {
                                        return Divider(
                                          height: 0,
                                          color: AppColors.neutral100,
                                        );
                                      },
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return AccountHistoryItemWidget(
                                          transaction: savingHistory[index],
                                        );
                                      },
                                    );
                                  },
                                ) ??
                                const SizedBox.shrink();
                          },
                        ),
                        BlocBuilder<TransactionsCubit, TransactionsState>(
                          builder: (context, state) {
                            return state.whenOrNull(
                                  success: (response) {
                                    final savingHistory = response
                                        .where((transaction) =>
                                            transaction.accountType ==
                                            "Investment")
                                        .toList();
                                    return ListView.separated(
                                      padding:
                                          REdgeInsets.symmetric(horizontal: 20),
                                      itemCount: savingHistory.length,
                                      shrinkWrap: true,
                                      separatorBuilder:
                                          (BuildContext context, int index) {
                                        return Divider(
                                          height: 0,
                                          color: AppColors.neutral100,
                                        );
                                      },
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return AccountHistoryItemWidget(
                                          transaction: savingHistory[index],
                                        );
                                      },
                                    );
                                  },
                                ) ??
                                const SizedBox.shrink();
                          },
                        ),
                        BlocBuilder<TransactionsCubit, TransactionsState>(
                          builder: (context, state) {
                            return state.whenOrNull(
                                  success: (response) {
                                    return ListView.separated(
                                      padding:
                                          REdgeInsets.symmetric(horizontal: 20),
                                      itemCount: response.length,
                                      shrinkWrap: true,
                                      separatorBuilder:
                                          (BuildContext context, int index) {
                                        return Divider(
                                          height: 0,
                                          color: AppColors.neutral100,
                                        );
                                      },
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return AccountHistoryItemWidget(
                                          transaction: response[index],
                                        );
                                      },
                                    );
                                  },
                                ) ??
                                const SizedBox.shrink();
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Expanded(
            //   child:
            //  ListView.separated(
            //   padding: REdgeInsets.symmetric(horizontal: 20),
            //   itemCount: 8,
            //   shrinkWrap: true,
            //   separatorBuilder: (BuildContext context, int index) {
            //     return Divider(
            //       height: 0,
            //       color: AppColors.neutral100,
            //     );
            //   },
            //   itemBuilder: (BuildContext context, int index) {
            //     return Container(
            //       padding: REdgeInsets.all(16),
            //       decoration: BoxDecoration(
            //         color: AppColors.lightest,
            //       ),
            //       child: Row(
            //         children: [
            //           Container(
            //             padding: REdgeInsets.all(12),
            //             decoration: BoxDecoration(
            //               shape: BoxShape.circle,
            //               color: AppColors.secondary100,
            //             ),
            //             child: SvgPicture.asset(
            //                 "assets/svgs/arrow_top_left.svg"),
            //           ),
            //           12.w.widthBox,
            //           Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               AppText(
            //                 "Account debited",
            //                 fontSize: 14,
            //                 fontWeight: FontWeight.w500,
            //                 color: AppColors.neutral800,
            //               ),
            //               6.h.heightBox,
            //               Row(
            //                 children: [
            //                   AppText(
            //                     "Jan 18 2025",
            //                     fontSize: 10,
            //                     fontWeight: FontWeight.w400,
            //                     color: AppColors.neutral500,
            //                   ),
            //                   4.w.widthBox,
            //                   SvgPicture.asset("assets/svgs/dot.svg"),
            //                   4.w.widthBox,
            //                   AppText(
            //                     "Loan Repayment",
            //                     fontSize: 10,
            //                     fontWeight: FontWeight.w400,
            //                     color: AppColors.neutral500,
            //                   ),
            //                 ],
            //               ),
            //             ],
            //           ),
            //           const Spacer(),
            //           AppText(
            //             "-N 19,000",
            //             fontSize: 14,
            //             fontWeight: FontWeight.w500,
            //             color: AppColors.secondary700,
            //           ),
            //         ],
            //       ),
            //     );
            //   },
            // ),
            // ),
          ],
        ),
      ),
    );
  }
}
