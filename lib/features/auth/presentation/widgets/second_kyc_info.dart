import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:fhcs/core/components/custom_animated_dropdown.dart';
import 'package:fhcs/core/components/custom_date_picker.dart';
import 'package:fhcs/core/components/custom_input_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/components/custom_text.dart';
import '../../../../core/ui/colors.dart';

class SecondKycInfoWidget extends StatelessWidget {
  const SecondKycInfoWidget({
    super.key,
    required this.formKey,
    this.onSelectMaritalStatus,
    this.onSelectSalaryGrade,
    this.onSelectStateOfOrigin,
    required this.onPickDate,
    required this.dobController,
    required this.residentialAddressController,
    required this.permanentAddressController,
    required this.deploymentOfficeController,
    required this.officeAddressController,
    required this.onPickEmploymentDate,
    required this.employmentDateController,
    required this.employmentStatus,
    required this.onSelectEmploymentStatus,
  });
  final GlobalKey<FormState> formKey;
  final Function(String? value)? onSelectMaritalStatus;
  final Function(String? value)? onSelectStateOfOrigin;
  final Function(String? value)? onSelectSalaryGrade;
  final Function onPickDate;
  final TextEditingController dobController;
  final TextEditingController residentialAddressController;
  final TextEditingController permanentAddressController;
  final TextEditingController deploymentOfficeController;
  final TextEditingController officeAddressController;
  final TextEditingController employmentDateController;
  final Function onPickEmploymentDate;
  final bool employmentStatus;
  final Function onSelectEmploymentStatus;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAnimatedDropdownWidget<String>(
              hintLabel: "Enter your marital status",
              ['Single', 'Married', 'Divorce'],
              labelText: "Marital Status",
              onChanged: onSelectMaritalStatus,
            ),
            16.h.heightBox,
            CustomDatePickerWidget(
              "Date of Birth *",
              hintText: "Enter your date of birth",
              controller: dobController,
              onSelectDate: onPickDate,
            ),
            16.h.heightBox,
            CustomInputLabelWidget(
              "Residential Address",
              hintText: "Enter your address",
              controller: residentialAddressController,
            ),
            16.h.heightBox,
            CustomInputLabelWidget(
              "Permanent Address",
              hintText: "Enter your address",
              controller: permanentAddressController,
            ),
            16.h.heightBox,
            CustomInputLabelWidget(
              "Deployment/Office",
              hintText: "Enter your deployment/office",
              controller: deploymentOfficeController,
            ),
            16.h.heightBox,
            CustomInputLabelWidget(
              "Office Address",
              hintText: "Enter your office address",
              controller: officeAddressController,
            ),
            16.h.heightBox,
            CustomAnimatedDropdownWidget(
              hintLabel: "Enter your state",
              ['Oyo', 'Lagos', 'Abuja', "Port harcourt"],
              labelText: "State of Origin",
              onChanged: onSelectStateOfOrigin,
            ),
            16.h.heightBox,
            CustomAnimatedDropdownWidget(
              hintLabel: "Enter your salary grade",
              ['Senior', 'Intern', 'Graduate', "Analyst"],
              labelText: "Salary Grade",
              onChanged: onSelectSalaryGrade,
            ),
            16.h.heightBox,
            CustomDatePickerWidget(
              "Employment Date *",
              hintText: "Enter your date",
              controller: employmentDateController,
              onSelectDate: () => onPickEmploymentDate(),
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
                      onChanged: (e) => onSelectEmploymentStatus(true),
                      groupValue: employmentStatus,
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
                      onChanged: (e) => onSelectEmploymentStatus(false),
                      groupValue: !employmentStatus,
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
        ));
  }
}
