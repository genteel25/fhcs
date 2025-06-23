import 'package:flutter/material.dart';

import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';

import 'package:fhcs/core/components/custom_bottom_button_wrapper.dart';
import 'package:fhcs/core/components/custom_checkbox.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/helpers/contracts/iwidget_helper.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/core/utils/app_dialog.dart';
import 'package:fhcs/core/utils/app_sheets.dart';
import 'package:fhcs/features/home/presentation/bloc/verify_funding/verify_funding_cubit.dart';
import 'package:fhcs/features/loans/presentation/bloc/loan_request/loan_request_cubit.dart';
import 'package:fhcs/features/loans/presentation/bloc/referees/referees_cubit.dart';
import 'package:fhcs/features/loans/presentation/controllers/contracts/select_referee.dart';
import 'package:fhcs/features/loans/presentation/views/contracts/select_referee.dart';

class SelectRefereeView extends StatelessWidget
    implements SelectRefereeViewContract {
  const SelectRefereeView({super.key, required this.controller});
  final SelectRefereeControllerContract controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 36.h,
          leadingWidth: 58.w,
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
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
            "Select Referees",
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: AppColors.neutral800,
          ),
        ),
        backgroundColor: Color(0xffF8F8F9),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // padding: REdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(color: AppColors.neutral200, width: 1.w),
                ),
              ),
              child: Column(
                children: [
                  24.h.heightBox,
                  AppText(
                    "Selected referees will be notified to accept or decline your request",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.neutral500,
                  ).paddingSymmetric(horizontal: 20.w),
                  16.h.heightBox,
                  TextField(
                    onChanged: (e) =>
                        context.read<RefereesCubit>().searchReferee(e),
                    decoration: InputDecoration(
                      contentPadding:
                          REdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      hintText: "Search by name or IR number",
                      prefixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          16.w.widthBox,
                          SvgPicture.asset("assets/svgs/search.svg",
                              width: 18.sp),
                        ],
                      ),
                    ),
                  ).paddingSymmetric(horizontal: 20.w),
                  16.h.heightBox,
                  if (controller.selectedReferees.isNotEmpty) ...[
                    SizedBox(
                      height: 28.h,
                      child: ListView.separated(
                        padding: REdgeInsets.symmetric(horizontal: 20),
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.selectedReferees.length,
                        separatorBuilder: (BuildContext context, int index) {
                          return 8.w.widthBox;
                        },
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () => controller.onSelectReferee(
                                controller.selectedReferees[index]),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  padding: REdgeInsets.symmetric(
                                      horizontal: 8, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: AppColors.primary100,
                                    borderRadius: BorderRadius.circular(100.r),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        // padding: REdgeInsets.all(16),
                                        width: 20.w,
                                        height: 20.h,
                                        decoration: BoxDecoration(
                                          color: AppColors.neutral300,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      8.w.widthBox,
                                      AppText(
                                        "${controller.selectedReferees[index].firstName} ${controller.selectedReferees[index].lastName}",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.neutral800,
                                      ),
                                      8.w.widthBox,
                                      SvgPicture.asset(
                                          "assets/svgs/cancel_circle.svg"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    16.h.heightBox,
                  ],
                ],
              ),
            ),
            Expanded(
              child: BlocBuilder<RefereesCubit, RefereesState>(
                builder: (context, state) {
                  return state.whenOrNull(
                        success: (response) => ListView.separated(
                          padding:
                              REdgeInsets.only(left: 20, right: 20, top: 16),
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () =>
                                  controller.onSelectReferee(response[index]),
                              child: Row(
                                children: [
                                  Container(
                                    padding: REdgeInsets.all(16),
                                    decoration: BoxDecoration(
                                      color: AppColors.neutral300,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  12.w.widthBox,
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AppText(
                                        "${response[index].firstName} ${response[index].lastName}",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.neutral800,
                                      ),
                                      4.h.heightBox,
                                      AppText(
                                        "IR-${response[index].irNumber}",
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.neutral500,
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  CustomCheckbox(
                                    value: controller.selectedReferees
                                        .contains(response[index]),
                                    onChanged: (e) => controller
                                        .onSelectReferee(response[index]),
                                  ),
                                ],
                              ),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return 24.h.heightBox;
                          },
                          itemCount: response.length,
                          shrinkWrap: true,
                        ),
                      ) ??
                      const SizedBox.shrink();
                },
              ),
            ),
          ],
        ),
        bottomNavigationBar: MultiBlocListener(
          listeners: [
            BlocListener<LoanRequestCubit, LoanRequestState>(
              listener: (context, state) {
                state.whenOrNull(
                  loading: () => AppDialog.showAppProgressDialog(context),
                  success: (response) {
                    controller.payViaCard(
                        refId: response.refId ?? "",
                        amount: response.amount?.toString() ?? "0");
                    context.pop();
                  },
                  failure: (error) {
                    context.pop();
                    GetIt.I
                        .get<IWidgetHelper>()
                        .showErrorToast(context, message: error);
                  },
                );
              },
            ),
            BlocListener<VerifyFundingCubit, VerifyFundingState>(
              listener: (context, state) {
                state.whenOrNull(
                  loading: () => AppDialog.showAppProgressDialog(context),
                  success: (response) {
                    context.pop();
                    controller.onVerifyFunding();
                  },
                  failure: (error) {
                    context.pop();
                    GetIt.I
                        .get<IWidgetHelper>()
                        .showErrorToast(context, message: error);
                  },
                );
              },
            ),
          ],
          child: CustomBottomButtonWrapperWidget(
            "Continue",
            onPressed: controller.selectedReferees.isEmpty
                ? null
                : controller.investmentData != null
                    ? () => controller.onSelectWitness()
                    : () => AppSheets.loanConfirmationSheet(context,
                            isNormalLoan: controller.isNormalLoan,
                            applyForLoan: () => controller.onRequestLoan(),
                            loanInfo: {
                              "Loan type": controller.isNormalLoan,
                              "Requested amount": controller.loanAmount,
                              for (var referee = 0;
                                  referee < controller.selectedReferees.length;
                                  referee++)
                                "Referee ${referee + 1}":
                                    "${controller.selectedReferees[referee].firstName} ${controller.selectedReferees[referee].lastName}",
                            }),
          ),
        ));
  }
}
