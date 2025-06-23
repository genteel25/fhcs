import 'package:flutter/material.dart';

import 'package:awesome_extensions/awesome_extensions.dart' hide NavigatorExt;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import 'package:fhcs/core/components/custom_animated_dropdown.dart';
import 'package:fhcs/core/components/custom_bottom_button_wrapper.dart';
import 'package:fhcs/core/components/custom_input_label.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/helpers/email_marker_helper.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/features/accounts/presentation/controllers/contracts/statement.dart';
import 'package:fhcs/features/accounts/presentation/views/contracts/statement.dart';
import 'package:fhcs/features/home/presentation/bloc/user_profile/user_profile_cubit.dart';

class StatementView extends StatelessWidget implements StatementViewContract {
  const StatementView({super.key, required this.controller});
  final StatementControllerContract controller;
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
          "Request statement",
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: AppColors.neutral800,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          16.h.heightBox,
          CustomAnimatedDropdownWidget<String>(
            ['Savings', 'Investment', 'Loan'],
            onChanged: controller.onSelectAccount,
            hintLabel: "Select account",
          ),
          16.h.heightBox,
          InkWell(
            onTap: controller.onPickStartDate,
            child: AbsorbPointer(
              child: CustomInputLabelWidget(
                "Start date",
                controller: controller.startDateController,
                hintText: "29, January, 2024",
                prefixAsset: "calendar",
              ),
            ),
          ),
          16.h.heightBox,
          InkWell(
            onTap: controller.onPickEndDate,
            child: AbsorbPointer(
              child: CustomInputLabelWidget(
                "End date",
                controller: controller.endDateController,
                hintText: "29, January, 2024",
                prefixAsset: "calendar",
              ),
            ),
          ),
        ],
      ).paddingSymmetric(horizontal: 20.w),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BlocBuilder<UserProfileCubit, UserProfileState>(
            builder: (context, state) {
              return state.whenOrNull(
                    success: (response) => AppText(
                      "Your account(s) statement will be forwarded to your email address “${EmailMasker.maskEmail(response.user?.email ?? "@gmail.com")} in few minutes",
                      textAlign: TextAlign.center,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.neutral500,
                    ),
                  ) ??
                  AppText(
                    "You need to be authenticated to get your statement",
                    textAlign: TextAlign.center,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColors.neutral500,
                  );
            },
          ).paddingSymmetric(horizontal: 16.w),
          Padding(
            padding: MediaQuery.viewInsetsOf(context),
            child: CustomBottomButtonWrapperWidget(
              "Continue",
              onPressed: () {},
              isSecondary: true,
            ),
          ),
          30.h.heightBox,
        ],
      ),
    );
  }
}
