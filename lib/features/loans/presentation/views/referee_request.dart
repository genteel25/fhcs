import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/features/loans/presentation/bloc/referee_request/referee_request_cubit.dart';
import 'package:fhcs/features/loans/presentation/controllers/contracts/referee_request.dart';
import 'package:fhcs/features/loans/presentation/views/contracts/referee_request.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class RefereeRequestView extends StatelessWidget
    implements RefereeRequestViewContract {
  const RefereeRequestView({super.key, required this.controller});
  final RefereeRequestControllerContract controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF8F8F9),
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
                onTap: () => context.pop(),
                borderRadius: BorderRadius.circular(100.r),
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
            "Referee request",
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: AppColors.neutral800,
          ),
        ),
        body: DefaultTabController(
          length: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              16.h.heightBox,
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
                      bottom:
                          BorderSide(width: 2.w, color: AppColors.neutral800),
                    ),
                  ),
                  tabs: [
                    Tab(
                      text: "Loans",
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
                    BlocBuilder<LoanRefereeRequestCubit,
                        LoanRefereeRequestState>(
                      builder: (context, state) {
                        return state.whenOrNull(
                              success: (response) => ListView.separated(
                                padding: REdgeInsets.only(
                                    left: 20, right: 20, bottom: 20),
                                itemBuilder: (context, index) {
                                  return RequestCardWidget();
                                },
                                separatorBuilder: (context, index) {
                                  return 16.h.heightBox;
                                },
                                itemCount: response.length,
                                shrinkWrap: true,
                              ),
                            ) ??
                            const SizedBox.shrink();
                      },
                    ),
                    BlocBuilder<InvestmentRefereeRequestCubit,
                        InvestmentRefereeRequestState>(
                      builder: (context, state) {
                        return state.whenOrNull(
                              success: (response) => ListView.separated(
                                padding: REdgeInsets.only(
                                    left: 20, right: 20, bottom: 20),
                                itemBuilder: (context, index) {
                                  return RequestCardWidget();
                                },
                                separatorBuilder: (context, index) {
                                  return 16.h.heightBox;
                                },
                                itemCount: response.length,
                                shrinkWrap: true,
                              ),
                            ) ??
                            const SizedBox.shrink();
                      },
                    ),
                    BlocBuilder<RefereeRequestCubit, RefereeRequestState>(
                      builder: (context, state) {
                        return state.whenOrNull(
                              success: (response) => ListView.separated(
                                padding: REdgeInsets.only(
                                    left: 20, right: 20, bottom: 20),
                                itemBuilder: (context, index) {
                                  return RequestCardWidget();
                                },
                                separatorBuilder: (context, index) {
                                  return 16.h.heightBox;
                                },
                                itemCount: response.length,
                                shrinkWrap: true,
                              ),
                            ) ??
                            const SizedBox.shrink();
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class RequestCardWidget extends StatelessWidget {
  const RequestCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.only(top: 16),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        color: AppColors.lightest,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 32.w,
                height: 32.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.neutral300,
                ),
              ),
              12.w.widthBox,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      "Ajangbadi Abdulmateen",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.neutral800,
                    ),
                    8.h.heightBox,
                    Row(
                      children: [
                        AppText(
                          "#5276387387",
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: AppColors.neutral500,
                        ),
                        const Spacer(),
                        AppText(
                          "Jan 18 2025",
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: AppColors.neutral500,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ).paddingSymmetric(horizontal: 16.w),
          Divider(height: 16.h, color: AppColors.neutral100, thickness: 1.h)
              .paddingSymmetric(horizontal: 16.w),
          Row(
            children: [
              AppText(
                "Loan type",
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: AppColors.neutral500,
              ),
              const Spacer(),
              Container(
                padding: REdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.neutral100),
                  borderRadius: BorderRadius.circular(100.r),
                ),
                child: AppText(
                  "Normal",
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: AppColors.info700,
                ),
              ),
            ],
          ).paddingSymmetric(horizontal: 16.w),
          8.h.heightBox,
          Row(
            children: [
              AppText(
                "Duration",
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: AppColors.neutral500,
              ),
              const Spacer(),
              AppText(
                "1 year",
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: AppColors.neutral800,
              ),
            ],
          ).paddingSymmetric(horizontal: 16.w),
          8.h.heightBox,
          Row(
            children: [
              AppText(
                "Requested amount",
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: AppColors.neutral500,
              ),
              const Spacer(),
              AppText(
                "N 200,000",
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: AppColors.neutral800,
              ),
            ],
          ).paddingSymmetric(horizontal: 16.w),
          16.h.heightBox,
          Row(
            children: [
              Expanded(
                child: InkWell(
                  child: Container(
                    alignment: Alignment.center,
                    padding: REdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      color: AppColors.secondary50,
                    ),
                    child: AppText(
                      "Reject",
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.secondary600,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {},
                  splashColor: AppColors.secondary50,
                  highlightColor: AppColors.secondary50,
                  child: Container(
                    alignment: Alignment.center,
                    padding: REdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      color: AppColors.primary700,
                    ),
                    child: AppText(
                      "Accept",
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.lightest,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
