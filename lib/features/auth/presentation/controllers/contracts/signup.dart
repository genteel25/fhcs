import 'dart:io';

import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';

import 'package:phone_form_field/phone_form_field.dart';

import 'package:fhcs/core/data/auth_info.dart';

abstract class SignUpControllerContract {
  late int currentIndex;
  late Map<String, dynamic> firstPercent;
  late Map<String, dynamic> secondPercent;
  late bool isFirstPercentComplete;
  late GlobalKey<FormState> formKey;
  late GlobalKey<FormState> secondFormKey;
  late String selectedMaritalStatus;
  late String selectedStateOfOrigin;
  late String selectedSalaryGrade;
  late bool employmentStatus;
  late String selectedSalaryStep;
  late List<String> states;
  File? pickedImagePath;

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
  late SingleSelectController<String> maritalStatusCustomController;
  late SingleSelectController<String> stateOfOriginCustomController;
  late SingleSelectController<String> salaryStepCustomController;
  late SingleSelectController<String> salaryGradeCustomController;

  //Methods
  void residentialAddressControllerListener();
  void onSelectEmploymentStatus(bool status);
  void permanentAddressControllerListener();
  void deploymentOfficeControllerListener();
  void onSelectMaritalStatus(String? value);
  void onSelectStateOfOrigin(String? value);
  void onSelectSalaryGrade(String? value);
  void onSelectSalaryStep(String? value);
  void officeAddressControllerListener();
  void phoneNumberControllerListener();
  void fullNameControllerListener();
  void irNumberControllerListener();
  void emailControllerListener();
  void onPickEmploymentDate();
  void onPickDateOfBirth();
  void onSecondContinue(AuthInfoData? data);
  void uploadPassport();
  void onClearPassport();
  void onContinue();
  void onSubmit();
  void onGoBack();
}
