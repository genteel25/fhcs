import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    super.key,
    this.padding = 8,
  });

  final double padding;

  @override
  Widget build(BuildContext context) {
    return LoadingIndicator(
      indicatorType: Indicator.circleStrokeSpin,
      colors: [AppColors.primary700],
      strokeWidth: 1,
    ).alignAtCenter().paddingAll(padding);
  }
}
