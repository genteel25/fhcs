import 'package:flutter/material.dart';

import 'package:awesome_extensions/awesome_extensions.dart' hide NavigatorExt;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import 'package:fhcs/core/components/custom_error.dart';
import 'package:fhcs/core/components/custom_loader.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/router/route_constants.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/features/home/presentation/bloc/dashboard/dashboard_cubit.dart';
import 'package:fhcs/features/home/presentation/bloc/user_profile/user_profile_cubit.dart';
import 'package:fhcs/features/home/presentation/widgets/home_action.dart';
import 'package:fhcs/features/loans/presentation/bloc/loan_history/loan_history_cubit.dart';
import 'package:fhcs/features/loans/presentation/controllers/contracts/loans.dart';
import 'package:fhcs/features/loans/presentation/views/contracts/loans.dart';
import 'package:fhcs/features/loans/presentation/widgets/active_loan.dart';
import 'package:fhcs/features/loans/presentation/widgets/asset_card.dart';
import 'package:fhcs/features/loans/presentation/widgets/loan_application.dart';

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
                    24.h.heightBox,
                    BlocBuilder<DashboardCubit, DashboardState>(
                      builder: (context, state) {
                        return state.whenOrNull(
                              success: (response) => AssetCardWidget(
                                balance: response.totalLoanTaken?.toString(),
                              ),
                            ) ??
                            AssetCardWidget(balance: "0");
                      },
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
                  onTap: () =>
                      context.pushNamed(RouteConstants.loanApplicationRoute),
                ),
                HomeActionWidget(
                  actionLabel: "Repay loans",
                  actionAsset: "curve",
                  onTap: () => context.pushNamed(RouteConstants.repayLoanRoute),
                ),
                HomeActionWidget(
                  actionLabel: "Referee request",
                  actionAsset: "person_group",
                  iconSize: 18.sp,
                  onTap: () => context.pushNamed(
                      RouteConstants.refereeRequestRoute,
                      extra: false),
                ),
              ],
            ).paddingSymmetric(horizontal: 20.w),
            32.h.heightBox,
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
              child: TabBarView(
                // physics: const NeverScrollableScrollPhysics(),
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          padding: REdgeInsets.symmetric(vertical: 0),
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            // color: AppColors.lightest,
                          ),
                          child: BlocBuilder<LoanApplicationsCubit,
                              LoanApplicationsState>(
                            builder: (context, state) {
                              return state.whenOrNull(
                                    loading: () =>
                                        CustomLoaderWidget(hasPadding: false),
                                    success: (response) => response.isEmpty
                                        ? CustomErrorWidget(
                                            errorTitle: "No Loans On Record",
                                            errorSubtitle:
                                                "You haven't submitted any loan applications. Let's get yours started!",
                                          )
                                        : ListView.separated(
                                            shrinkWrap: true,
                                            primary: false,
                                            padding: EdgeInsets.zero,
                                            itemBuilder: (context, index) {
                                              return LoanApplicationItemWidget(
                                                data: response[index],
                                              );
                                            },
                                            separatorBuilder: (context, index) {
                                              return Divider(
                                                  color: AppColors.neutral100,
                                                  height: 0.h);
                                            },
                                            itemCount: response.length,
                                          ),
                                  ) ??
                                  const SizedBox.shrink();
                            },
                          ),
                        ).paddingSymmetric(horizontal: 20.w),
                        8.h.heightBox,
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          padding: REdgeInsets.symmetric(vertical: 0),
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            // color: AppColors.lightest,
                          ),
                          child:
                              BlocBuilder<ActiveLoansCubit, ActiveLoansState>(
                            builder: (context, state) {
                              return state.whenOrNull(
                                    loading: () =>
                                        CustomLoaderWidget(hasPadding: false),
                                    success: (response) => response.isEmpty
                                        ? CustomErrorWidget(
                                            errorTitle: "No Active Loans",
                                            errorSubtitle:
                                                "It looks like you don't have any loans currently in progress. Apply for a new loan to get started!",
                                          )
                                        : ListView.separated(
                                            shrinkWrap: true,
                                            primary: false,
                                            padding: EdgeInsets.zero,
                                            itemBuilder: (context, index) {
                                              return ActiveLoanWidget(
                                                  data: response[index]);
                                            },
                                            separatorBuilder: (context, index) {
                                              return Divider(
                                                  color: AppColors.neutral100,
                                                  height: 0.h);
                                            },
                                            itemCount: response.length,
                                          ),
                                  ) ??
                                  const SizedBox.shrink();
                            },
                          ),
                        ).paddingSymmetric(horizontal: 20.w),
                        8.h.heightBox,
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          padding: REdgeInsets.symmetric(vertical: 0),
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            // color: AppColors.lightest,
                          ),
                          child:
                              BlocBuilder<LoanHistoryCubit, LoanHistoryState>(
                            builder: (context, state) {
                              return state.whenOrNull(
                                    loading: () =>
                                        CustomLoaderWidget(hasPadding: false),
                                    success: (response) => response.isEmpty
                                        ? CustomErrorWidget(
                                            errorTitle: "No Past Loans Found",
                                            errorSubtitle:
                                                "This section is dedicated to your completed or past loan activities. Apply for a loan to begin your history.",
                                          )
                                        : ListView.separated(
                                            shrinkWrap: true,
                                            primary: false,
                                            padding: EdgeInsets.zero,
                                            itemBuilder: (context, index) {
                                              return ActiveLoanWidget(
                                                data: response[index],
                                                isActive: false,
                                              );
                                            },
                                            separatorBuilder: (context, index) {
                                              return 10.h.heightBox;
                                            },
                                            itemCount: response.length,
                                          ),
                                  ) ??
                                  const SizedBox.shrink();
                            },
                          ),
                        ).paddingSymmetric(horizontal: 20.w),
                        8.h.heightBox,
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
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
