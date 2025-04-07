import 'dart:io';

import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'custom_text.dart';

class CustomImagePickerCardWidget extends StatelessWidget {
  const CustomImagePickerCardWidget(
    this.labelText, {
    super.key,
    required this.onPickFile,
    this.pickedFile,
    required this.onClear,
  });
  final String labelText;
  final Function onPickFile;
  final File? pickedFile;
  final Function onClear;

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
        Container(
          width: double.infinity,
          padding: pickedFile == null
              ? REdgeInsets.symmetric(horizontal: 50, vertical: 24)
              : null,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            border: Border.all(width: 1.w, color: AppColors.neutral100),
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: pickedFile == null
              ? Column(
                  children: [
                    SvgPicture.asset("assets/svgs/profile_green_circle.svg"),
                    8.h.heightBox,
                    AppText(
                      "Click here to upload passport photo",
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primary700,
                    ),
                    2.h.heightBox,
                    AppText(
                      "PNG or JPG (Max. 10mb)",
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: AppColors.neutral500,
                    ),
                  ],
                )
              : Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 124.h,
                      child: Image.file(pickedFile!, fit: BoxFit.fill),
                    ),
                    Positioned(
                        right: 8,
                        top: 8,
                        child: Container(
                          padding: REdgeInsets.all(4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.r),
                            color: AppColors.neutral800.withValues(alpha: 0.5),
                          ),
                          child: Icon(
                            Icons.clear,
                            color: AppColors.lightest,
                            size: 14.sp,
                          ),
                        ).onTap(() => onClear()))
                  ],
                ),
        ).onTap(() => onPickFile()),
      ],
    );
  }
}
