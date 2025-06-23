import 'package:flutter/material.dart';

import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fhcs/core/components/custom_animated_dropdown.dart';
import 'package:fhcs/core/components/custom_date_picker.dart';
import 'package:fhcs/core/components/custom_input_label.dart';
import 'package:fhcs/core/components/custom_search_dropdown.dart';

import '../../../../core/components/custom_text.dart';
import '../../../../core/ui/colors.dart';

class SecondKycInfoWidget extends StatefulWidget {
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
    required this.onSelectSalaryStep,
    required this.states,
    required this.maritalStatusCustomController,
    required this.salaryGradeCustomController,
    required this.salaryStepCustomController,
    required this.stateOfOriginCustomController,
  });
  final GlobalKey<FormState> formKey;
  final Function(String? value)? onSelectMaritalStatus;
  final Function(String? value)? onSelectStateOfOrigin;
  final Function(String? value)? onSelectSalaryGrade;
  final Function(String? value)? onSelectSalaryStep;
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
  final List<String> states;
  final SingleSelectController<String> maritalStatusCustomController;
  final SingleSelectController<String> stateOfOriginCustomController;
  final SingleSelectController<String> salaryStepCustomController;
  final SingleSelectController<String> salaryGradeCustomController;

  @override
  State<SecondKycInfoWidget> createState() => _SecondKycInfoWidgetState();
}

class _SecondKycInfoWidgetState extends State<SecondKycInfoWidget>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return Form(
        key: widget.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAnimatedDropdownWidget<String>(
              hintLabel: "Enter your marital status",
              [
                'Single',
                'Married',
                'Divorced',
                'Widowed',
                'Separated',
              ],
              labelText: "Marital Status",
              onChanged: widget.onSelectMaritalStatus,
              controller: widget.maritalStatusCustomController,
            ),
            16.h.heightBox,
            CustomDatePickerWidget(
              "Date of Birth *",
              hintText: "Enter your date of birth",
              controller: widget.dobController,
              onSelectDate: widget.onPickDate,
            ),
            16.h.heightBox,
            CustomInputLabelWidget(
              "Residential Address",
              hintText: "Enter your address",
              controller: widget.residentialAddressController,
            ),
            16.h.heightBox,
            CustomInputLabelWidget(
              "Permanent Address",
              hintText: "Enter your address",
              controller: widget.permanentAddressController,
            ),
            16.h.heightBox,
            CustomInputLabelWidget(
              "Deployment/Office",
              hintText: "Enter your deployment/office",
              controller: widget.deploymentOfficeController,
            ),
            16.h.heightBox,
            CustomInputLabelWidget(
              "Office Address",
              hintText: "Enter your office address",
              controller: widget.officeAddressController,
            ),
            16.h.heightBox,
            CustomSearchDropdownWidget(
              widget.states,
              hintLabel: "Enter your state",
              labelText: "State of Origin",
              onChanged: widget.onSelectStateOfOrigin,
              controller: widget.stateOfOriginCustomController,
            ),
            16.h.heightBox,
            CustomAnimatedDropdownWidget<String>(
              hintLabel: "Enter your salary grade",
              List.generate(19, (index) => (index + 1).toString()).toList(),
              labelText: "Salary Grade",
              onChanged: widget.onSelectSalaryGrade,
              controller: widget.salaryGradeCustomController,
            ),
            16.h.heightBox,
            CustomAnimatedDropdownWidget<String>(
              hintLabel: "Enter your salary step",
              List.generate(9, (index) => (index + 1).toString()).toList(),
              labelText: "Salary step",
              onChanged: widget.onSelectSalaryStep,
              controller: widget.salaryStepCustomController,
            ),
            16.h.heightBox,
            CustomDatePickerWidget(
              "Employment Date *",
              hintText: "Enter your date",
              controller: widget.employmentDateController,
              onSelectDate: () => widget.onPickEmploymentDate(),
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
                      onChanged: (e) => widget.onSelectEmploymentStatus(true),
                      groupValue: widget.employmentStatus,
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
                      onChanged: (e) => widget.onSelectEmploymentStatus(false),
                      groupValue: !widget.employmentStatus,
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

  @override
  bool get wantKeepAlive => true;
}
