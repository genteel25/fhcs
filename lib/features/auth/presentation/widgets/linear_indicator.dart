import 'package:awesome_extensions/awesome_extensions.dart' hide NavigatorExt;
import 'package:fhcs/core/ui/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class LinearIndicatorWidget extends StatefulWidget {
  const LinearIndicatorWidget({
    super.key,
    this.currentIndex = 0,
    required this.firstPercent,
    required this.isFirstPercentComplete,
    required this.secondPercent,
  });
  final int currentIndex;
  final Map<String, dynamic> firstPercent;
  final Map<String, dynamic> secondPercent;
  final bool isFirstPercentComplete;

  @override
  State<LinearIndicatorWidget> createState() => _LinearIndicatorWidgetState();
}

class _LinearIndicatorWidgetState extends State<LinearIndicatorWidget> {
  int currentIndex = 0;
  double firstPercent = 0;
  double secondPercent = 0;
  bool isFirstPercentComplete = false;
  @override
  void initState() {
    super.initState();
    currentIndex = widget.currentIndex;
  }

  void setCurrentIndex() {
    setState(() {
      currentIndex = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: LinearPercentIndicator(
            percent: widget.firstPercent.isEmpty
                ? 0
                : 0.2 * widget.firstPercent.length,
            padding: EdgeInsets.zero,
            barRadius: Radius.circular(100.r),
            fillColor: Colors.transparent,
            backgroundColor: AppColors.primary200,
            progressColor: AppColors.primary700,
            lineHeight: 4.h,
            animation: true,
            animateFromLastPercent: true,
            animationDuration: 2000,
          ),
        ),
        8.w.widthBox,
        Expanded(
          child: LinearPercentIndicator(
            percent: widget.secondPercent.isEmpty
                ? 0
                : 0.1 * (widget.secondPercent.length - 1),
            padding: EdgeInsets.zero,
            barRadius: Radius.circular(100.r),
            fillColor: Colors.transparent,
            backgroundColor: widget.isFirstPercentComplete
                ? AppColors.primary200
                : AppColors.neutral100,
            progressColor: AppColors.primary700,
            lineHeight: 4.h,
            animateFromLastPercent: true,
            // animateToInitialPercent: true,
            animation: true,
            animationDuration: 2000,
          ),
        ),
      ],
    );
  }
}
