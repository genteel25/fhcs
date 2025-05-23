import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomInputLabelWidget extends StatelessWidget {
  const CustomInputLabelWidget(
    this.labelText, {
    super.key,
    this.validator,
    required this.controller,
    this.keyboardType,
    this.textInputAction,
    this.formatter,
    required this.hintText,
    this.obscureText = false,
    this.showSuffix = false,
    this.onTap,
    this.isReadOnly,
    this.prefixAsset,
    this.minLines,
    this.maxLines,
    this.isAmount = false,
  });
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final String? Function(String? value)? validator;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? formatter;
  final bool obscureText;
  final bool showSuffix;
  final Function? onTap;
  final bool? isReadOnly;
  final String? prefixAsset;
  final int? minLines;
  final int? maxLines;
  final bool isAmount;

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
          child: TextFormField(
            cursorColor: AppColors.neutral400,
            obscureText: obscureText,
            cursorHeight: 16.h,
            readOnly: isReadOnly ?? false,
            cursorWidth: 1.w,
            style: isAmount
                ? GoogleFonts.roboto(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.neutral800,
                    height: 1.h,
                  )
                : GoogleFonts.onest(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.neutral800,
                    height: 1.h,
                  ),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: keyboardType ?? TextInputType.text,
            textInputAction: textInputAction ?? TextInputAction.next,
            controller: controller,
            validator: validator,
            minLines: minLines,
            maxLines: maxLines,
            inputFormatters: formatter,
            decoration: InputDecoration(
              isCollapsed: true,
              isDense: true,
              hintText: hintText,
              // prefixIconConstraints: BoxConstraints(
              //     maxHeight: 16.h, minHeight: 16.w, maxWidth: 26.w),
              prefixIcon: prefixAsset != null
                  ? Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        16.w.widthBox,
                        SvgPicture.asset(
                          "assets/svgs/$prefixAsset.svg",
                          width: 13.w,
                          fit: BoxFit.scaleDown,
                        ),
                        // 16.w.widthBox
                      ],
                    )
                  : null,
              suffix: showSuffix
                  ? InkWell(
                      onTap: () {
                        if (onTap != null) onTap!();
                      },
                      child: obscureText
                          ? Icon(
                              Icons.visibility,
                              size: 16,
                              color: AppColors.neutral400,
                            )
                          : Icon(
                              Icons.visibility_off,
                              size: 16,
                              color: AppColors.neutral400,
                            ),
                    )
                  : null,
            ),
          ),
        ),
      ],
    );
  }
}
