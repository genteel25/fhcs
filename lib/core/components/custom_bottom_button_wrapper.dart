import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_button.dart';

class CustomBottomButtonWrapperWidget extends StatelessWidget {
  const CustomBottomButtonWrapperWidget(
    this.labelText, {
    super.key,
    this.isSecondary = false,
    required this.onPressed,
  });
  final VoidCallback? onPressed;
  final String labelText;
  final bool isSecondary;

  @override
  Widget build(BuildContext context) {
    return isSecondary
        ? Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              8.h.heightBox,
              Container(
                padding: REdgeInsets.only(left: 20, right: 20),
                height: 44.h,
                width: double.infinity,
                child: CustomButtonWidget(
                  labelText,
                  onPressed: onPressed,
                ),
              ),
              if (!isSecondary) 24.h.heightBox,
            ],
          )
        : Padding(
            padding: MediaQuery.viewInsetsOf(context),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                8.h.heightBox,
                Container(
                  padding: REdgeInsets.only(left: 20, right: 20),
                  height: 44.h,
                  width: double.infinity,
                  child: CustomButtonWidget(
                    labelText,
                    onPressed: onPressed,
                  ),
                ),
                if (!isSecondary) 24.h.heightBox,
              ],
            ),
          );
  }
}
