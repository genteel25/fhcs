import 'package:another_flushbar/flushbar.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/helpers/contracts/iwidget_helper.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class WidgetHelper extends IWidgetHelper {
  @override
  Future<void> showErrorToast(BuildContext context,
      {required String message, String? title}) async {
    if (message.isEmpty) return;

    if (message.toLowerCase().contains('<') ||
        message.toLowerCase().contains('>') ||
        message.toLowerCase().contains('dynamic') ||
        message.toLowerCase().contains('map')) {
      //for type or cast errors
      message = 'Something went wrong, please try again';
    }
    Flushbar(
      animationDuration: const Duration(milliseconds: 500),
      borderRadius: BorderRadius.circular(8),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      duration: Duration(seconds: kDebugMode ? 8 : 4),
      margin: const EdgeInsets.only(left: 20, right: 20, top: 8),
      isDismissible: true,
      icon: SvgPicture.asset("assets/svgs/toast_error_icon.svg"),
      borderColor: AppColors.secondary600,
      backgroundColor: AppColors.secondary50,
      borderWidth: 1,
      flushbarPosition: FlushbarPosition.TOP,
      flushbarStyle: FlushbarStyle.FLOATING,
      reverseAnimationCurve: Curves.decelerate,
      forwardAnimationCurve: Curves.easeOut,
      titleText: Text("Error",
          style: GoogleFonts.onest(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.neutral600,
          )),
      messageText: Text(
        toBeginningOfSentenceCase(message) ?? '',
        style: GoogleFonts.onest(
          fontSize: 10.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.neutral500,
        ),
      ),
    ).show(context);
  }

  @override
  Future<void> showInfoToast() {
    throw UnimplementedError();
  }

  @override
  Future<void> showSuccessToast(BuildContext context,
      {required String message, String? title}) async {
    if (message.isEmpty) return;

    if (message.toLowerCase().contains('<') ||
        message.toLowerCase().contains('>') ||
        message.toLowerCase().contains('dynamic') ||
        message.toLowerCase().contains('map')) {
      //for type or cast errors
      message = 'Something went wrong, please try again';
    }
    Flushbar(
      animationDuration: const Duration(milliseconds: 500),
      borderRadius: BorderRadius.circular(8),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      duration: Duration(seconds: kDebugMode ? 8 : 4),
      margin: const EdgeInsets.only(left: 20, right: 20, top: 12),
      isDismissible: true,
      icon: SvgPicture.asset("assets/svgs/success_icon.svg"),
      borderColor: AppColors.primary700,
      backgroundColor: AppColors.primary100,
      borderWidth: 1,
      flushbarPosition: FlushbarPosition.TOP,
      flushbarStyle: FlushbarStyle.FLOATING,
      reverseAnimationCurve: Curves.decelerate,
      forwardAnimationCurve: Curves.easeOut,
      titleText: Text("Success",
          style: GoogleFonts.onest(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.neutral600,
          )),
      messageText: Text(
        toBeginningOfSentenceCase(message) ?? '',
        style: GoogleFonts.onest(
          fontSize: 10.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.neutral500,
        ),
      ),
    ).show(context);
  }

  @override
  Future<void> showWarningToast() {
    // TODO: implement showWarningToast
    throw UnimplementedError();
  }
}

// class AppAlert {
//   static void showSuccess(String message,
//       {Color? backgroundColor, Color? textColor}) {
//     if (message.isEmpty) return;

//     Flushbar(
//       animationDuration: const Duration(milliseconds: 500),
//       padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
//       borderRadius: BorderRadius.circular(8),
//       duration: const Duration(seconds: 4),
//       margin: const EdgeInsets.only(left: 16, right: 16, top: 8),
//       isDismissible: true,
//       icon: Icon(
//         Icons.check_circle,
//         color: AppColors.successGreen,
//       ),
//       borderColor: AppColors.successGreen,
//       backgroundColor: backgroundColor ??
//           (ThemeUtil.isDarkMode
//               ? ColorUtil.fromHexToColor('#05290b')
//               : ColorUtil.fromHexToColor('#d1f5d7')),
//       borderWidth: 1,
//       flushbarPosition: FlushbarPosition.TOP,
//       flushbarStyle: FlushbarStyle.FLOATING,
//       reverseAnimationCurve: Curves.decelerate,
//       forwardAnimationCurve: Curves.easeOut,
//       titleText: Text("Success",
//           style: AppTextStyles.header(
//             AppRouter.currentContext,
//             color: textColor,
//           )),
//       messageText: Text(
//         message,
//         style: AppTextStyles.header(AppRouter.currentContext,
//             fontWeight: FontWeight.w500, color: textColor),
//       ),
//     ).show(AppRouter.currentContext);
//   }

//   static void showInfo() {}

// //   static void showError(String message) {
    
// // }