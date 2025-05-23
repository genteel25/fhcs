import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText extends StatelessWidget {
  const AppText(
    this.text, {
    super.key,
    this.fontSize,
    this.softWrap,
    this.overflow,
    this.textAlign,
    this.fontWeight,
    this.height,
    this.textDecoration,
    this.color,
    this.maxLines,
    this.isAmount = false,
  });
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextDecoration? textDecoration;
  final double? height;
  final bool? softWrap;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final Color? color;
  final int? maxLines;
  final bool isAmount;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: isAmount
          ? GoogleFonts.roboto(
              fontSize: fontSize?.sp,
              fontWeight: fontWeight,
              decoration: textDecoration,
              height: height,
              color: color,
            )
          : GoogleFonts.onest(
              fontSize: fontSize?.sp,
              fontWeight: fontWeight,
              decoration: textDecoration,
              height: height,
              color: color,
            ),
      softWrap: softWrap,
      overflow: overflow,
      textAlign: textAlign,
      maxLines: maxLines,
      textScaler: TextScaler.linear(1.0),
    );
  }
}
