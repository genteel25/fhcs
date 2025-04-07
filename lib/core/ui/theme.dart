import 'package:fhcs/core/ui/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.lightest,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary700,
          textStyle: GoogleFonts.onest(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.lightest,
          ),
          disabledBackgroundColor: AppColors.primary200,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: Colors.transparent,
          textStyle: GoogleFonts.onest(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.primary700,
          ),
          foregroundColor: AppColors.primary700,
          disabledBackgroundColor: AppColors.primary100,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.transparent),
          side: WidgetStateBorderSide.resolveWith((state) {
            if (state.contains(WidgetState.disabled)) {
              // WidgetStatePropertyAll(
              return BorderSide(color: Color(0xff9CA3AF), width: 1.w);
            } else {
              // WidgetStatePropertyAll(
              return BorderSide(color: AppColors.primary700, width: 1.w);
            }
          }),
          textStyle: WidgetStateTextStyle.resolveWith((state) {
            if (state.contains(WidgetState.disabled)) {
              return TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: Color(0xff9CA3AF),
              );
            } else {
              return TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.primary700,
              );
            }
          }),
          overlayColor: WidgetStatePropertyAll(
              AppColors.primary700.withValues(alpha: 0.1)),
          shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r))),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.neutral50,
        contentPadding: REdgeInsets.symmetric(horizontal: 16, vertical: 16),
        hintStyle: GoogleFonts.onest(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.neutral400,
          height: 1.h,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: AppColors.neutral300, width: 1.w),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: AppColors.primary700, width: 1.w),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: AppColors.neutral100, width: 1.w),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: Colors.red, width: 1.w),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: Colors.red, width: 1.w),
        ),
      ),
      // radioTheme: RadioThemeData(
      //   fillColor: WidgetStateProperty.resolveWith<Color>((states) {
      //     if (states.contains(WidgetState.selected)) {
      //       return Colors.green; // Selected color
      //     }
      //     return Colors.grey; // Default border color
      //   }),
      // ),
      checkboxTheme: CheckboxThemeData(
        checkColor: WidgetStatePropertyAll(AppColors.lightest),
        side: WidgetStateBorderSide.resolveWith((state) {
          if (state.contains(WidgetState.selected)) {
            return BorderSide(width: 1.w, color: AppColors.primary700);
          } else {
            return BorderSide(width: 1.w, color: AppColors.neutral300);
          }
        }),
        fillColor: WidgetStateColor.resolveWith(
          (state) {
            if (state.contains(WidgetState.selected)) {
              return AppColors.primary700;
            } else {
              return Colors.white;
            }
          },
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.r),
          side: BorderSide(width: 1.w),
        ),
      ),
      // expansionTileTheme: ExpansionTileThemeData(
      //   tilePadding: REdgeInsets.symmetric(horizontal: 0),
      //   childrenPadding: REdgeInsets.symmetric(horizontal: 0, vertical: 8),
      //   shape: RoundedRectangleBorder(side: BorderSide.none),
      //   expansionAnimationStyle: AnimationStyle(),
      //   expandedAlignment: Alignment.centerLeft,
      // ),
      // tabBarTheme: TabBarTheme(
      //   labelStyle: GoogleFonts.roboto(
      //     fontSize: 14.sp,
      //     fontWeight: FontWeight.w600,
      //     color: AppColors.darkest,
      //   ),
      //   unselectedLabelStyle: GoogleFonts.roboto(
      //     fontSize: 14.sp,
      //     fontWeight: FontWeight.w600,
      //     color: Color(0xff857A7A),
      //   ),
      //   indicatorSize: TabBarIndicatorSize.tab,
      //   indicator: BoxDecoration(
      //     color: Colors.white,
      //     borderRadius: BorderRadius.circular(100.r),
      //   ),
      // ),
      // listTileTheme: ListTileThemeData(),
      // switchTheme: SwitchThemeData(
      //   trackColor: WidgetStateColor.resolveWith((widgetState) =>
      //       widgetState.contains(WidgetState.selected)
      //           ? AppColors.brandColor100
      //           : AppColors.lightTint),
      //   trackOutlineWidth: WidgetStatePropertyAll(0),
      //   trackOutlineColor: WidgetStatePropertyAll(Colors.transparent),
      //   thumbColor:
      //       WidgetStateColor.resolveWith((widgetState) => Colors.white),
      // ));
    );
  }
}
