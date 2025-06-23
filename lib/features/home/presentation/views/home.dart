import 'package:flutter/material.dart';

import 'package:awesome_extensions/awesome_extensions.dart' hide NavigatorExt;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import 'package:fhcs/core/components/custom_error.dart';
import 'package:fhcs/core/components/custom_loader.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/router/route_constants.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/features/home/presentation/bloc/dashboard/dashboard_cubit.dart';
import 'package:fhcs/features/home/presentation/bloc/transactions/transactions_cubit.dart';
import 'package:fhcs/features/home/presentation/bloc/user_profile/user_profile_cubit.dart';
import 'package:fhcs/features/home/presentation/controllers/contracts/home.dart';
import 'package:fhcs/features/home/presentation/views/contracts/home.dart';
import 'package:fhcs/features/home/presentation/widgets/home_action.dart';
import 'package:fhcs/features/home/presentation/widgets/home_balance_card.dart';
import 'package:fhcs/features/home/presentation/widgets/home_transaction_card.dart';

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
                    ).paddingSymmetric(horizontal: 20.r),
                    29.h.heightBox,
                    AppText(
                      "Total balance",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.neutral500,
                    ).paddingSymmetric(horizontal: 20.w),
                    4.h.heightBox,
                    BlocBuilder<DashboardCubit, DashboardState>(
                      builder: (context, state) {
                        return state.whenOrNull(
                              success: (response) => AppText(
                                ((response.totalInvestment ?? 0) +
                                        (response.totalSavings ?? 0))
                                    .toString(),
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                                color: AppColors.neutral800,
                                isAmount: true,
                              ),
                            ) ??
                            AppText(
                              "0",
                              isAmount: true,
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                              color: AppColors.neutral800,
                            );
                      },
                    ).paddingSymmetric(horizontal: 20.w),
                    15.h.heightBox,
                    SizedBox(
                      height: 84.h,
                      child: ListView(
                        padding: REdgeInsets.symmetric(horizontal: 20),
                        scrollDirection: Axis.horizontal,
                        children: [
                          BlocBuilder<DashboardCubit, DashboardState>(
                            builder: (context, state) {
                              return state.whenOrNull(
                                    success: (response) =>
                                        HomeBalanceCardWidget(
                                      balance: (response.totalSavings ?? 0)
                                          .toString(),
                                      balanceTypeLabel: "Savings Balance",
                                      gradientColors: [
                                        Color(0xff30A46C),
                                        Color(0xff193B2D),
                                      ],
                                    ),
                                  ) ??
                                  HomeBalanceCardWidget(
                                    balance: "0",
                                    balanceTypeLabel: "Savings Balance",
                                    gradientColors: [
                                      Color(0xff30A46C),
                                      Color(0xff193B2D),
                                    ],
                                  );
                            },
                          ),
                          8.w.widthBox,
                          BlocBuilder<DashboardCubit, DashboardState>(
                            builder: (context, state) {
                              return state.whenOrNull(
                                    success: (response) =>
                                        HomeBalanceCardWidget(
                                      balance: (response.totalInvestment ?? 0)
                                          .toString(),
                                      balanceTypeLabel: "Investment Balance",
                                      gradientColors: [
                                        Color(0xff1E1E31),
                                        Color(0xff070720),
                                      ],
                                    ),
                                  ) ??
                                  HomeBalanceCardWidget(
                                    balance: "0",
                                    balanceTypeLabel: "Investment Balance",
                                    gradientColors: [
                                      Color(0xff1E1E31),
                                      Color(0xff070720),
                                    ],
                                  );
                            },
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
                  BlocBuilder<DashboardCubit, DashboardState>(
                    builder: (context, state) {
                      return state.whenOrNull(
                            success: (response) =>
                                (response.loanBalance ?? 0) > 0
                                    ? Column(
                                        children: [
                                          19.h.heightBox,
                                          Container(
                                            padding: REdgeInsets.all(8),
                                            margin: REdgeInsets.symmetric(
                                                horizontal: 20),
                                            decoration: BoxDecoration(
                                              color: AppColors.gold600,
                                              borderRadius:
                                                  BorderRadius.circular(8.r),
                                            ),
                                            child: AppText(
                                              "You have an outstanding balance on your loan financing, which prevents withdrawals until repayment is made",
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: AppColors.gold800,
                                            ),
                                          ),
                                        ],
                                      )
                                    : const SizedBox.shrink(),
                          ) ??
                          const SizedBox.shrink();
                    },
                  ),
                  22.h.heightBox,
                  Row(
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
                  BlocBuilder<TransactionsCubit, TransactionsState>(
                    builder: (context, state) {
                      return state.whenOrNull(
                            loading: () => CustomLoaderWidget(),
                            success: (response) => response.isEmpty
                                ? CustomErrorWidget(
                                    assetPath: "assets/images/empty_box.json",
                                  ).paddingSymmetric(horizontal: 20.w)
                                : ListView.separated(
                                    padding:
                                        REdgeInsets.symmetric(horizontal: 20),
                                    shrinkWrap: true,
                                    primary: false,
                                    itemBuilder: (context, index) {
                                      return HomeTransactionCardWidget(
                                        data: response[index],
                                      );
                                    },
                                    separatorBuilder: (context, index) {
                                      return Divider(
                                          color: AppColors.neutral100,
                                          height: 1.h);
                                    },
                                    itemCount: response.length,
                                  ),
                          ) ??
                          const SizedBox.shrink();
                    },
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

  Future<LottieComposition?> customDecoder(List<int> bytes) {
    return LottieComposition.decodeZip(bytes, filePicker: (files) {
      return files.firstWhere(
          (f) => f.name.startsWith('animations/') && f.name.endsWith('.json'));
    });
  }
}
