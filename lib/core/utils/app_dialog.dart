import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class AppDialog {
  static Future<dynamic> showAppProgressDialog(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible:
          false, // Prevents dismissing the dialog by tapping outside
      builder: (BuildContext context) {
        return PopScope(
          canPop: false, // Prevents dismissing the dialog with the back button
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
            child: Material(
              color: Colors.transparent,
              child: Center(
                child: Container(
                  height: 105,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color:
                        Colors.white, // Set the background color to transparent
                  ),
                  child: Lottie.asset(
                    "assets/images/fhcs_loader.json",
                    height: 500.h,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
