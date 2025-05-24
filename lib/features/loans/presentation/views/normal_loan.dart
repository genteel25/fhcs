import 'package:awesome_extensions/awesome_extensions.dart' hide NavigatorExt;
import 'package:fhcs/core/components/custom_animated_dropdown.dart';
import 'package:fhcs/core/components/custom_bottom_button_wrapper.dart';
import 'package:fhcs/core/components/custom_input_label.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/router/route_constants.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/core/utils/app_sheets.dart';
import 'package:fhcs/features/loans/presentation/controllers/contracts/normal_loan.dart';
import 'package:fhcs/features/loans/presentation/views/contracts/normal_loan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class NormalLoanView extends StatelessWidget implements NormalLoanViewContract {
  const NormalLoanView({super.key, required this.controller});
  final NormalLoanControllerContract controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 36.h,
        leadingWidth: 56.w,
        backgroundColor: Color(0xffF8F8F9),
        surfaceTintColor: Color(0xffF8F8F9),
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
          "Normal loan",
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: AppColors.neutral800,
        ),
      ),
      backgroundColor: Color(0xffF8F8F9),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            24.h.heightBox,
            AppText(
              "Loan details",
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: AppColors.neutral800,
            ),
            16.h.heightBox,
            CustomInputLabelWidget(
              "Loan amount",
              controller: controller.loanAmountController,
              hintText: "N 2000",
              formatter: [
                controller.formatter,
              ],
            ),
            8.h.heightBox,
            AppText(
              "For normal loans, You can access up to 2x your savings balance.",
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: AppColors.neutral500,
            ),
            16.h.heightBox,
            CustomInputLabelWidget(
              "Loan purpose",
              controller: controller.loanPurposeController,
              hintText: "Enter the purpose of the loan",
              minLines: 3,
            ),
            16.h.heightBox,
            CustomInputLabelWidget(
              "Annual salary",
              controller: controller.annualSalaryController,
              hintText: "Enter your annual salary",
            ),
            16.h.heightBox,
            CustomAnimatedDropdownWidget(
              controller.durations,
              controller: controller.loanDuration,
              labelText: "Loan duration",
            ),
            16.h.heightBox,
            AppText(
              "Upload payslip",
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.neutral800,
            ),
            8.h.heightBox,
            InkWell(
              onTap: () => AppSheets.filePickerSheet(context,
                  selectedFile: controller.selectedDocument,
                  onPickFile: controller.onPickDocument),
              child: Container(
                width: double.infinity,
                padding: REdgeInsets.symmetric(vertical: 24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Column(
                  children: [
                    if (controller.selectedDocument == null) ...[
                      Container(
                        padding: REdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: AppColors.primary100,
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset(
                          "assets/svgs/money_bag.svg",
                          colorFilter: ColorFilter.mode(
                            AppColors.primary700,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                      8.h.heightBox,
                      AppText(
                        "Click here to upload payslip",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColors.primary700,
                      ),
                      AppText(
                        "PNG or JPG (Max. 10mb)",
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: AppColors.neutral500,
                      ),
                    ] else ...[
                      Padding(
                        padding: REdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 32.w,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(4.r),
                              child: Image.file(
                                controller.selectedDocument!,
                                fit: BoxFit.scaleDown,
                                width: 48.w,
                              ),
                            ),
                            InkWell(
                              onTap: () => AppSheets.filePickerSheet(context,
                                  selectedFile: controller.selectedDocument,
                                  onPickFile: controller.onPickDocument),
                              child: Container(
                                padding: REdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.warning500
                                      .withValues(alpha: 0.2),
                                ),
                                child: Icon(
                                  Icons.refresh,
                                  color: AppColors.warning500,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () => controller.onPickDocument(null),
                              child: Container(
                                padding: REdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.red.withValues(alpha: 0.1),
                                ),
                                child: Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ],
                ),
              ),
            ),
          ],
        ).paddingSymmetric(horizontal: 20.w),
      ),
      bottomNavigationBar: CustomBottomButtonWrapperWidget(
        "Continue to add referees",
        onPressed: controller.selectedDocument != null
            ? () => context.pushNamed(
                  RouteConstants.selectRefereeRoute,
                  extra: controller.isNormalLoan,
                  queryParameters: {
                    'amount': controller.formatter
                        .formatString(controller.loanAmountController.text),
                  },
                )
            : null,
      ),
    );
  }
}
