import 'package:flutter/material.dart';

import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';

import 'package:fhcs/core/components/custom_error.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/data/referee_request.dart';
import 'package:fhcs/core/helpers/contracts/iwidget_helper.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/core/utils/app_dialog.dart';
import 'package:fhcs/core/utils/app_sheets.dart';
import 'package:fhcs/core/utils/extensions.dart';
import 'package:fhcs/core/utils/global_variables.dart';
import 'package:fhcs/features/loans/presentation/bloc/referee_request/referee_request_cubit.dart';
import 'package:fhcs/features/loans/presentation/bloc/request_status/request_status_cubit.dart';
import 'package:fhcs/features/loans/presentation/controllers/contracts/referee_request.dart';
import 'package:fhcs/features/loans/presentation/views/contracts/referee_request.dart';

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
        body: BlocListener<RequestStatusCubit, RequestStatusState>(
          listener: (context, state) {
            state.whenOrNull(
              loading: () => AppDialog.showAppProgressDialog(context),
              success: (response) {
                context.pop();
                GetIt.I
                    .get<IWidgetHelper>()
                    .showSuccessToast(context, message: "Approval successful");
                context.read<LoanRefereeRequestCubit>().fetchRefereeRequest();
                context
                    .read<InvestmentRefereeRequestCubit>()
                    .fetchRefereeRequest();
                context.read<RefereeRequestCubit>().fetchRefereeRequest();
              },
              failure: (error) {
                context.pop();
                GetIt.I
                    .get<IWidgetHelper>()
                    .showErrorToast(context, message: error);
              },
            );
          },
          child: DefaultTabController(
            length: 3,
            initialIndex: controller.isInvestment ? 1 : 0,
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
                                success: (response) => response.isEmpty
                                    ? CustomErrorWidget(
                                        errorTitle: "No Loan Request",
                                        errorSubtitle:
                                            "It looks like you don't have any loans request at the moment. They'd show up here when you have one or more",
                                      )
                                    : ListView.separated(
                                        padding: REdgeInsets.only(
                                            left: 20, right: 20, bottom: 20),
                                        itemBuilder: (context, index) {
                                          return RequestCardWidget(
                                            data: response[index],
                                          );
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
                                success: (response) => response.isEmpty
                                    ? CustomErrorWidget(
                                        errorTitle: "No Investment Request",
                                        errorSubtitle:
                                            "It looks like you don't have any investments request at the moment. They'd show up here when you have one or more",
                                      )
                                    : ListView.separated(
                                        padding: REdgeInsets.only(
                                            left: 20, right: 20, bottom: 20),
                                        itemBuilder: (context, index) {
                                          return RequestCardWidget(
                                            data: response[index],
                                          );
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
                                success: (response) => response.isEmpty
                                    ? CustomErrorWidget(
                                        errorTitle: "No Request History",
                                        errorSubtitle:
                                            "It looks like you don't have any request history at the moment. They'd show up here when you have one or more",
                                      )
                                    : ListView.separated(
                                        padding: REdgeInsets.only(
                                            left: 20, right: 20, bottom: 20),
                                        itemBuilder: (context, index) {
                                          return RequestCardWidget(
                                            data: response[index],
                                          );
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
          ),
        ));
  }
}

class RequestCardWidget extends StatelessWidget {
  const RequestCardWidget({super.key, required this.data});
  final RefereeRequestData data;

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
                      "${data.investment?.user?.firstName ?? data.loan?.user?.firstName ?? ""} ${data.investment?.user?.lastName ?? data.loan?.user?.lastName ?? ""}",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.neutral800,
                    ),
                    8.h.heightBox,
                    Row(
                      children: [
                        AppText(
                          data.investment?.iid ?? data.loan?.lid ?? "",
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: AppColors.neutral500,
                        ),
                        const Spacer(),
                        AppText(
                          data.investment?.createdAt?.formattedDate ??
                              DateTime.now().formattedDate,
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
                switch (data.loan) {
                  null => "Investment type",
                  _ => "Loan type",
                },
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: AppColors.neutral500,
              ),
              const Spacer(),
              switch (data.loan) {
                null => Container(
                    padding: REdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.neutral100),
                      borderRadius: BorderRadius.circular(100.r),
                    ),
                    child: AppText(
                      data.investment?.investmentType?.name ?? "",
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: GlobalVariables.generateColorFromText(
                          data.investment?.investmentType?.name ?? ""),
                    ),
                  ),
                _ => Container(
                    padding: REdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.neutral100),
                      borderRadius: BorderRadius.circular(100.r),
                    ),
                    child: AppText(
                      data.loan?.loanType ?? "",
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: switch (data.loan?.loanType) {
                        "Emergency" => AppColors.violet800,
                        _ => AppColors.info700,
                      },
                    ),
                  )
              },
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
                "${data.loan?.duration ?? data.investment?.tenure?.duration} ${(data.loan?.duration ?? 0) > 1 || (data.investment?.tenure?.duration ?? 0) > 1 ? "Months" : "Month"} ",
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
                (data.loan?.amount ?? data.investment?.amount ?? 0).toString(),
                fontSize: 12,
                isAmount: true,
                fontWeight: FontWeight.w500,
                color: AppColors.neutral800,
              ),
            ],
          ).paddingSymmetric(horizontal: 16.w),
          // if ((data.loan?.canApprove ?? data.investment?.canApprove ?? false) ==
          //     true)
          16.h.heightBox,
          // if ((data.loan?.canApprove ?? data.investment?.canApprove ?? false) ==
          //     true)
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: (data.loan?.canApprove ??
                              data.investment?.canApprove ??
                              false) ==
                          true
                      ? () {
                          AppSheets.rejectRefereeRequestSheet(context,
                              onReject: () {
                            final payload = {"status": "Reject"};
                            context
                                .read<RequestStatusCubit>()
                                .changeRequestStatus(data.id?.toString() ?? "0",
                                    payload: payload);
                          });
                        }
                      : () {
                          GetIt.I.get<IWidgetHelper>().showErrorToast(context,
                              message:
                                  "Request cannot be rejected at the moment");
                        },
                  child: Container(
                    alignment: Alignment.center,
                    padding: REdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      color: (data.loan?.canApprove ??
                                  data.investment?.canApprove ??
                                  false) ==
                              true
                          ? AppColors.secondary50
                          : AppColors.neutral200,
                    ),
                    child: AppText(
                      "Reject",
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: (data.loan?.canApprove ??
                                  data.investment?.canApprove ??
                                  false) ==
                              true
                          ? AppColors.secondary600
                          : AppColors.neutral400,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: (data.loan?.canApprove ??
                              data.investment?.canApprove ??
                              false) ==
                          true
                      ? () {
                          AppSheets.approveRefereeRequestSheet(context,
                              onApprove: () {
                            final payload = {"status": "Approve"};
                            context
                                .read<RequestStatusCubit>()
                                .changeRequestStatus(data.id?.toString() ?? "0",
                                    payload: payload);
                          });
                        }
                      : () {
                          GetIt.I.get<IWidgetHelper>().showErrorToast(context,
                              message:
                                  "Request cannot be approved at the moment");
                        },
                  splashColor: AppColors.secondary50,
                  highlightColor: AppColors.secondary50,
                  child: Container(
                    alignment: Alignment.center,
                    padding: REdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      color: (data.loan?.canApprove ??
                                  data.investment?.canApprove ??
                                  false) ==
                              true
                          ? AppColors.primary700
                          : AppColors.primary200,
                    ),
                    child: AppText(
                      "Accept",
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: (data.loan?.canApprove ??
                                  data.investment?.canApprove ??
                                  false) ==
                              true
                          ? AppColors.lightest
                          : AppColors.neutral200,
                    ),
                  ),
                ),
              ),
            ],
          ),
          // if ((data.loan?.canApprove ?? data.investment?.canApprove ?? false) ==
          //     false)
          //   16.h.heightBox,
        ],
      ),
    );
  }

  // void onApproveRequest(String requestId) {
  //   final payload = {"status": "Approve"};

  //   context
  //       .read<RequestStatusCubit>()
  //       .changeRequestStatus(requestId, payload: payload);
  // }

  // @override
  // void onRejectRequest(String requestId) {
  //   final payload = {"status": "Reject"};

  //   context
  //       .read<RequestStatusCubit>()
  //       .changeRequestStatus(requestId, payload: payload);
  // }
}
