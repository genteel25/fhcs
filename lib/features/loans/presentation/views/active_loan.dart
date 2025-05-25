import 'package:awesome_extensions/awesome_extensions.dart' hide NavigatorExt;
import 'package:fhcs/core/components/custom_back_button.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/router/route_constants.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/features/home/presentation/controllers/add_money.dart';
import 'package:fhcs/features/loans/presentation/controllers/contracts/active_loan.dart';
import 'package:fhcs/features/loans/presentation/controllers/contracts/cash_injection.dart';
import 'package:fhcs/features/loans/presentation/views/contracts/active_loan.dart';
import 'package:fhcs/features/loans/presentation/views/contracts/cash_injection.dart';
import 'package:fhcs/features/loans/presentation/widgets/active_loan.dart';
import 'package:fhcs/features/loans/presentation/widgets/loan_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class ActiveLoanView extends StatelessWidget implements ActiveLoanViewContract {
  const ActiveLoanView({super.key, required this.controller});
  final ActiveLoanControllerContract controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F9),
      appBar: AppBar(
        toolbarHeight: 36.h,
        leadingWidth: 56.w,
        backgroundColor: Color(0xffF8F8F9),
        surfaceTintColor: Color(0xffF8F8F9),
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            20.w.widthBox,
            CustomBackButtonWidget(borderColor: AppColors.neutral200),
          ],
        ),
        centerTitle: false,
        title: AppText(
          "Active Loan",
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: AppColors.neutral800,
        ),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            16.h.heightBox,
            ActiveLoanWidget(
              data: controller.loanData,
              hasGesture: false,
            ),
            24.h.heightBox,
            SizedBox(
              height: 36.h,
              child: TabBar(
                labelPadding: REdgeInsets.symmetric(horizontal: 6),
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
                    text: "Details",
                  ),
                  Tab(
                    text: "Repayments",
                  ),
                ],
              ),
            ),
            16.h.heightBox,
            Expanded(
              child: TabBarView(
                children: [
                  SingleChildScrollView(
                    child: LoanDetailWidget(data: controller.loanData),
                  ),
                  AppText("text"),
                ],
              ),
            ),
          ],
        ).paddingSymmetric(horizontal: 20.w),
      ),
    );
  }
}
