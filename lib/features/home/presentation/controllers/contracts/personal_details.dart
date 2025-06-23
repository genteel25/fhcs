import 'package:flutter/material.dart';

import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:phone_form_field/phone_form_field.dart';

abstract class PersonalDetailsControllerContract {
  late GlobalKey<FormState> formKey;
  late String selectedMaritalStatus;
  late String selectedStateOfOrigin;
  late String selectedSalaryGrade;
  late String selectedSalaryStep;
  late bool canEditPhoneNumber;
  late bool employmentStatus;
  late bool canEditFullName;
  late List<String> states;
  late bool canEditEmail;

  //TextControllers
  TextEditingController fullNameController = TextEditingController();
  PhoneController phoneNumberController =
      PhoneController(initialValue: PhoneNumber.parse("+234"));
  TextEditingController irNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController maritalStatusController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController residentialAddressController = TextEditingController();
  TextEditingController permanentAddressController = TextEditingController();
  TextEditingController deploymentOfficeController = TextEditingController();
  TextEditingController officeAddressController = TextEditingController();
  TextEditingController employmentDateController = TextEditingController();
  TextEditingController membershipNoController = TextEditingController();

  late SingleSelectController<String> maritalStatusCustomController;
  late SingleSelectController<String> stateOfOriginCustomController;
  late SingleSelectController<String> salaryStepCustomController;
  late SingleSelectController<String> salaryGradeCustomController;

  //Methods
  void onSelectEmploymentStatus(bool status);
  void onSelectMaritalStatus(String? value);
  void onSelectStateOfOrigin(String? value);
  void onSelectSalaryGrade(String? value);
  void onSelectSalaryStep(String? value);
  void phoneNumberEditStatus();
  void onPickEmploymentDate();
  void fullNameEditStatus();
  void onPickDateOfBirth();
  void emailEditStatus();
  void onSubmit();
}
