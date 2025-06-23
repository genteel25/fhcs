import 'package:flutter/material.dart';

import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ui/colors.dart';

import 'custom_text.dart';

class CustomDatePickerWidget extends StatelessWidget {
  const CustomDatePickerWidget(
    this.labelText, {
    super.key,
    required this.hintText,
    required this.controller,
    required this.onSelectDate,
    this.isEnabled = true,
  });

  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final Function onSelectDate;
  final bool isEnabled;

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
        GestureDetector(
          onTap: isEnabled ? () => onSelectDate() : () {},
          child: AbsorbPointer(
            child: MediaQuery(
              data: MediaQuery.of(context)
                  .copyWith(textScaler: TextScaler.noScaling),
              child: TextFormField(
                cursorColor: AppColors.neutral400,
                cursorHeight: 16.h,
                enabled: isEnabled,
                cursorWidth: 1.w,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: controller,
                style: GoogleFonts.onest(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.neutral800,
                ),
                decoration: InputDecoration(
                  hintText: hintText,
                  suffixIcon: SvgPicture.asset(
                    "assets/svgs/calendar.svg",
                    fit: BoxFit.none,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
