import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_validator/form_validator.dart';
import 'package:phone_form_field/phone_form_field.dart';

import 'package:fhcs/core/components/custom_image_picker_card.dart';
import 'package:fhcs/core/components/custom_input_label.dart';
import 'package:fhcs/core/components/custom_phone_field.dart';

class ThreeWordInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // Trim spaces and split by whitespace
    final words = newValue.text.trim().split(RegExp(r'\s+'));

    if (words.length > 3) {
      // If already 3 words, block any additional characters, including spaces
      return oldValue;
    }

    return newValue;
  }
}

class FirstKycInfoWidget extends StatelessWidget {
  const FirstKycInfoWidget({
    super.key,
    required this.emailController,
    required this.fullNameController,
    required this.irNumberController,
    required this.phoneNumberController,
    required this.onPickFile,
    this.pickedFile,
    required this.onClear,
    required this.formKey,
  });
  final TextEditingController fullNameController;
  final PhoneController phoneNumberController;
  final TextEditingController irNumberController;
  final TextEditingController emailController;
  final Function onPickFile;
  final File? pickedFile;
  final Function onClear;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomInputLabelWidget(
            "Full Name",
            controller: fullNameController,
            validator: ValidationBuilder()
                .required()
                .regExp(RegExp(r'^\s*\b(\w+\b\s*){2,3}$'),
                    "Min of 2 names and Max of 3 names")
                .build(),
            formatter: [ThreeWordInputFormatter()],
            hintText: "Enter your full name",
          ),
          16.h.heightBox,
          CustomPhoneFieldWidget(
            "Phone Number",
            controller: phoneNumberController,
            hintText: "Enter your phone number",
          ),
          16.h.heightBox,
          CustomInputLabelWidget(
            "IR Number",
            controller: irNumberController,
            keyboardType: TextInputType.number,
            validator: ValidationBuilder().required().minLength(5).build(),
            hintText: "Enter your IR number",
            formatter: [LengthLimitingTextInputFormatter(5)],
          ),
          16.h.heightBox,
          CustomInputLabelWidget(
            "Email",
            controller: emailController,
            textInputAction: TextInputAction.done,
            validator: ValidationBuilder()
                .required()
                .regExp(
                    RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"),
                    "Invalid email")
                .build(),
            hintText: "Enter your email address",
          ),
          16.h.heightBox,
          CustomImagePickerCardWidget(
            "Upload passport photo",
            onPickFile: () => onPickFile(),
            pickedFile: pickedFile,
            onClear: () => onClear(),
          ),
          16.h.heightBox,
        ],
      ),
    );
  }
}
