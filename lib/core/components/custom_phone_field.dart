import 'dart:ui';

import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phone_form_field/phone_form_field.dart';

import '../ui/colors.dart';
import 'custom_text.dart';

class CustomPhoneFieldWidget extends StatelessWidget {
  const CustomPhoneFieldWidget(this.labelText,
      {super.key, required this.controller, required this.hintText});
  final String labelText;
  final String hintText;
  final PhoneController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          labelText,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.neutral800,
        ),
        4.h.heightBox,
        MediaQuery(
          data:
              MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling),
          child: PhoneFormField(
            isCountryButtonPersistent: true,
            isCountrySelectionEnabled: false,
            controller: controller,
            cursorColor: AppColors.neutral400,
            cursorHeight: 16.h,
            textInputAction: TextInputAction.next,
            cursorWidth: 1.w,
            selectionWidthStyle: BoxWidthStyle.tight,
            style: GoogleFonts.onest(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.neutral800,
              height: 1.h,
            ),
            countryButtonStyle: CountryButtonStyle(
              flagSize: 16.sp,
              textStyle: GoogleFonts.onest(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
              padding: REdgeInsets.only(left: 16, right: 8, top: 0, bottom: 0),
              showDropdownIcon: false,
            ),
            validator: PhoneValidator.compose([
              PhoneValidator.required(context,
                  errorText: "You must enter a value"),
              PhoneValidator.validMobile(context),
              // ..
            ]),
            decoration: InputDecoration(
                hintText: hintText,
                contentPadding:
                    REdgeInsets.symmetric(horizontal: 16, vertical: 16)),
          ),
        ),
      ],
    );
  }
}
