import 'package:flutter/material.dart';

abstract class IWidgetHelper {
  Future<void> showErrorToast(BuildContext context,
      {required String message, String? title});
  Future<void> showSuccessToast(BuildContext context,
      {required String message, String? title});
  Future<void> showWarningToast();
  Future<void> showInfoToast();
}
