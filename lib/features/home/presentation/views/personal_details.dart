import 'package:flutter/material.dart';

import 'package:awesome_extensions/awesome_extensions.dart' hide NavigatorExt;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:fhcs/core/components/custom_animated_dropdown.dart';
import 'package:fhcs/core/components/custom_back_button.dart';
import 'package:fhcs/core/components/custom_bottom_button_wrapper.dart';
import 'package:fhcs/core/components/custom_date_picker.dart';
import 'package:fhcs/core/components/custom_input_label.dart';
import 'package:fhcs/core/components/custom_phone_field.dart';
import 'package:fhcs/core/components/custom_search_dropdown.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/features/home/presentation/controllers/contracts/personal_details.dart';
import 'package:fhcs/features/home/presentation/views/contracts/personal_details.dart';

class PersonalDetailsView extends StatelessWidget
    implements PersonalDetailsViewContract {
  const PersonalDetailsView({super.key, required this.controller});
  final PersonalDetailsControllerContract controller;
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
            CustomBackButtonWidget(borderColor: AppColors.neutral200)
          ],
        ),
        centerTitle: false,
        title: AppText(
          "Personal details",
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: AppColors.neutral800,
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              28.h.heightBox,
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: CustomInputLabelWidget(
                      "Fullname",
                      controller: controller.fullNameController,
                      hintText: "Mallam Abubakar",
                      isEnabled: controller.canEditFullName,
                    ),
                  ),
                  if (!controller.canEditFullName) 16.w.widthBox,
                  if (!controller.canEditFullName)
                    SvgPicture.asset(
                      "assets/svgs/edit_outline.svg",
                      width: 18.sp,
                      height: 18.sp,
                    )
                        .onTap(() => controller.fullNameEditStatus())
                        .paddingOnly(bottom: 16.r),
                ],
              ),
              16.h.heightBox,
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: CustomInputLabelWidget(
                      "Email address",
                      controller: controller.emailController,
                      hintText: "Mallam Abubakar",
                      isEnabled: controller.canEditFullName,
                    ),
                  ),
                  if (!controller.canEditEmail) 16.w.widthBox,
                  if (!controller.canEditEmail)
                    SvgPicture.asset(
                      "assets/svgs/edit_outline.svg",
                      width: 18.sp,
                      height: 18.sp,
                    )
                        .onTap(() => controller.emailEditStatus())
                        .paddingOnly(bottom: 16.r),
                ],
              ),
              16.h.heightBox,
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: CustomPhoneFieldWidget(
                      "Phone number",
                      controller: controller.phoneNumberController,
                      hintText: "8056789364",
                      isEnabled: controller.canEditFullName,
                    ),
                  ),
                  if (!controller.canEditPhoneNumber) 16.w.widthBox,
                  if (!controller.canEditPhoneNumber)
                    SvgPicture.asset(
                      "assets/svgs/edit_outline.svg",
                      width: 18.sp,
                      height: 18.sp,
                    )
                        .onTap(() => controller.phoneNumberEditStatus())
                        .paddingOnly(bottom: 16.r),
                ],
              ),
              16.h.heightBox,
              CustomInputLabelWidget(
                "IR Number",
                controller: controller.irNumberController,
                hintText: "Mallam Abubakar",
                isEnabled: false,
              ),
              16.h.heightBox,
              CustomAnimatedDropdownWidget(
                ["Single", "Married", "Separated", "Divorced", "Widowed"],
                labelText: "Marital Status",
                hintLabel: "Mallam Abubakar",
                controller: controller.maritalStatusCustomController,
                onChanged: controller.onSelectMaritalStatus,
                enabled: false,
              ),
              16.h.heightBox,
              CustomDatePickerWidget(
                "Date of Birth *",
                hintText: "Enter your date of birth",
                controller: controller.dobController,
                onSelectDate: controller.onPickDateOfBirth,
                isEnabled: false,
              ),
              16.h.heightBox,
              CustomInputLabelWidget(
                "Residential Address",
                hintText: "Enter your address",
                controller: controller.residentialAddressController,
                isEnabled: false,
              ),
              16.h.heightBox,
              CustomInputLabelWidget(
                "Permanent Address",
                hintText: "Enter your address",
                controller: controller.permanentAddressController,
                isEnabled: false,
              ),
              16.h.heightBox,
              CustomInputLabelWidget(
                "Deployment/Office",
                hintText: "Enter your deployment/office",
                controller: controller.deploymentOfficeController,
                isEnabled: false,
              ),
              16.h.heightBox,
              CustomInputLabelWidget(
                "Office Address",
                hintText: "Enter your office address",
                controller: controller.officeAddressController,
                isEnabled: false,
              ),
              16.h.heightBox,
              CustomSearchDropdownWidget(
                controller.states,
                hintLabel: "Enter your state",
                labelText: "State of Origin",
                onChanged: controller.onSelectStateOfOrigin,
                controller: controller.stateOfOriginCustomController,
                enabled: false,
              ),
              16.h.heightBox,
              CustomAnimatedDropdownWidget<String>(
                hintLabel: "Enter your salary grade",
                List.generate(19, (index) => (index + 1).toString()).toList(),
                labelText: "Salary Grade",
                onChanged: controller.onSelectSalaryGrade,
                controller: controller.salaryGradeCustomController,
                enabled: false,
              ),
              16.h.heightBox,
              CustomAnimatedDropdownWidget<String>(
                hintLabel: "Enter your salary step",
                List.generate(9, (index) => (index + 1).toString()).toList(),
                labelText: "Salary step",
                onChanged: controller.onSelectSalaryStep,
                controller: controller.salaryStepCustomController,
                enabled: false,
              ),
              16.h.heightBox,
              CustomDatePickerWidget(
                "Employment Date *",
                hintText: "Enter your date",
                controller: controller.employmentDateController,
                onSelectDate: controller.onPickEmploymentDate,
                isEnabled: false,
              ),
              16.h.heightBox,
              AppText(
                "Employment status",
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.neutral800,
              ),
              8.h.heightBox,
              Row(
                children: [
                  AppText(
                    "Are you confirmed",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.neutral400,
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 24.w,
                    height: 24.h,
                    child: FittedBox(
                      child: Radio(
                        value: true,
                        onChanged: (e) =>
                            controller.onSelectEmploymentStatus(true),
                        groupValue: controller.employmentStatus,
                      ),
                    ),
                  ),
                  AppText(
                    "Yes",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.neutral400,
                  ),
                  16.w.widthBox,
                  SizedBox(
                    width: 24.w,
                    height: 24.h,
                    child: FittedBox(
                      child: Radio(
                        value: true,
                        onChanged: (e) =>
                            controller.onSelectEmploymentStatus(false),
                        groupValue: !controller.employmentStatus,
                      ),
                    ),
                  ),
                  AppText(
                    "No",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.neutral400,
                  ),
                ],
              ),
              16.h.heightBox,
            ],
          ).paddingSymmetric(horizontal: 20.r),
        ),
      ),
      bottomNavigationBar: CustomBottomButtonWrapperWidget(
        "Save Changes",
        onPressed: () {},
      ),
    );
  }
}
