import 'package:elegant_notification/elegant_notification.dart';
import 'package:elegant_notification/resources/arrays.dart';
import 'package:elegant_notification/resources/stacked_options.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/helpers/contracts/iwidget_helper.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class WidgetHelper extends IWidgetHelper {
  @override
  Future<void> showErrorToast(BuildContext context,
      {required String message, String? title}) async {
    ElegantNotification.error(
      width: MediaQuery.sizeOf(context).width - 40.w,
      isDismissable: true,
      animationCurve: Curves.easeInOut,
      showProgressIndicator: false,
      progressBarHeight: 0.h,
      icon: SvgPicture.asset("assets/svgs/toast_error_icon.svg"),
      stackedOptions: StackedOptions(
        key: 'top',
        type: StackedType.same,
        itemOffset: Offset(0, 0),
      ),
      position: Alignment.topCenter,
      background: AppColors.secondary50,
      animation: AnimationType.fromTop,
      title: AppText(
        title ?? 'Error',
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppColors.neutral600,
      ),
      description: AppText(
        message,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.neutral600,
      ),
      progressBarPadding: EdgeInsets.zero,
      onDismiss: () {},
      onNotificationPressed: () {},
      border: Border.all(
        color: AppColors.secondary600,
        width: 1.w,
      ),
      borderRadius: BorderRadius.circular(8.r),
    ).show(context);
  }

  @override
  Future<void> showInfoToast() {
    throw UnimplementedError();
  }

  @override
  Future<void> showSuccessToast(BuildContext context,
      {required String message, String? title}) async {
    ElegantNotification.error(
      width: MediaQuery.sizeOf(context).width - 40.w,
      isDismissable: true,
      animationCurve: Curves.easeInOut,
      showProgressIndicator: false,
      progressBarHeight: 0.h,
      icon: SvgPicture.asset("assets/svgs/success_icon.svg"),
      stackedOptions: StackedOptions(
        key: 'top',
        type: StackedType.same,
        itemOffset: Offset(0, 0),
      ),
      position: Alignment.topCenter,
      background: AppColors.primary100,
      animation: AnimationType.fromTop,
      title: AppText(
        title ?? 'Success',
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppColors.neutral800,
      ),
      description: AppText(
        message,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.neutral600,
      ),
      onDismiss: () {},
      onNotificationPressed: () {},
    ).show(context);
  }

  @override
  Future<void> showWarningToast() {
    // TODO: implement showWarningToast
    throw UnimplementedError();
  }
}
