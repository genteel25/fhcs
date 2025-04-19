import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:fhcs/core/components/custom_bottom_button_wrapper.dart';
import 'package:fhcs/core/components/custom_checkbox.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/core/utils/app_sheets.dart';
import 'package:fhcs/features/loans/presentation/controllers/contracts/select_referee.dart';
import 'package:fhcs/features/loans/presentation/views/contracts/select_referee.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SelectRefereeView extends StatelessWidget
    implements SelectRefereeViewContract {
  const SelectRefereeView({super.key, required this.controller});
  final SelectRefereeControllerContract controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 36.h,
        leadingWidth: 56.w,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            20.w.widthBox,
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
                                      controller.referees[index]['name'],
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
            child: ListView.separated(
              padding: REdgeInsets.only(left: 20, right: 20, top: 16),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () =>
                      controller.onSelectReferee(controller.referees[index]),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(
                            controller.referees[index]['name'],
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColors.neutral800,
                          ),
                          4.h.heightBox,
                          AppText(
                            "IR-${controller.referees[index]['ir_number']}",
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: AppColors.neutral500,
                          ),
                        ],
                      ),
                      const Spacer(),
                      CustomCheckbox(
                        value: controller.selectedReferees
                            .contains(controller.referees[index]),
                        onChanged: (e) => controller
                            .onSelectReferee(controller.referees[index]),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return 24.h.heightBox;
              },
              itemCount: controller.referees.length,
              shrinkWrap: true,
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomButtonWrapperWidget(
        "Continue",
        onPressed: () => AppSheets.loanConfirmationSheet(context,
            isNormalLoan: controller.isNormalLoan,
            loanInfo: {
              "Loan type": controller.isNormalLoan,
              "Requested amount": controller.loanAmount,
              for (var referee = 0;
                  referee < controller.selectedReferees.length;
                  referee++)
                "Referee ${referee + 1}": controller.selectedReferees[referee]
                    ['name'],
            }),
      ),
    );
  }
}
