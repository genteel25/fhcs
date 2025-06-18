import 'dart:ui';

import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
                  padding: REdgeInsets.symmetric(vertical: 12, horizontal: 24),
                  // height: 105,
                  // width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color:
                        Colors.white, // Set the background color to transparent
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(
                            "assets/svgs/raw_logo.svg",
                            fit: BoxFit.contain,
                          )
                              .animate(
                                delay: 100
                                    .ms, // this delay only happens once at the very start
                                onPlay: (controller) => controller.repeat(),
                              )
                              .fade(
                                begin: 1,
                                end: 0.3,
                                duration: const Duration(seconds: 2),
                              ),
                          4.h.heightBox,
                          AppText(
                            "Loading...",
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: AppColors.neutral500,
                          ),
                        ],
                      ),
                      Positioned(
                        // widthFactor: 24.sp,
                        // heightFactor: 24.sp,

                        child: Container(
                          height: 24.h,
                          width: 24.w,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColors.neutral800.withValues(alpha: 0.2),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: CupertinoActivityIndicator(),
                        ),
                      )
                    ],
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
