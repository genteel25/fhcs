import 'package:fhcs/core/ui/colors.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSlider extends StatefulWidget {
  final double min;
  final double max;
  final double step;
  final double? value;
  final ValueChanged<double> onChanged;
  final bool isSlidingEnabled;
  final double maxSlideLimit;

  const CustomSlider({
    super.key,
    required this.min,
    required this.max,
    required this.step,
    this.value,
    required this.onChanged,
    this.isSlidingEnabled = true,
    this.maxSlideLimit = double.infinity,
  });

  @override
  CustomSliderState createState() => CustomSliderState();
}

class CustomSliderState extends State<CustomSlider> {
  late double _value;

  @override
  void initState() {
    super.initState();
    // Sanitize min and max before clamping initial value
    // Provide fallback values if min/max are NaN or Infinity
    final double safeMin =
        widget.min.isNaN || widget.min.isInfinite ? 0.0 : widget.min;
    final double safeMax =
        widget.max.isNaN || widget.max.isInfinite ? 100.0 : widget.max;

    // Initialize _value, ensuring it's within safe bounds
    _value = (widget.value ?? safeMin).clamp(safeMin, safeMax);
  }

  @override
  void didUpdateWidget(covariant CustomSlider oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Sanitize min and max before clamping updated value
    final double safeMin =
        widget.min.isNaN || widget.min.isInfinite ? 0.0 : widget.min;
    final double safeMax =
        widget.max.isNaN || widget.max.isInfinite ? 100.0 : widget.max;

    // Update _value if widget.value changes and is not null
    if (widget.value != null && widget.value != oldWidget.value) {
      setState(() {
        // Clamp the new value to the safe min and max
        _value = (widget.value!).clamp(safeMin, safeMax);
      });
    }
  }

  void _updateValue(Offset localPosition, double width) {
    if (!widget.isSlidingEnabled) return;

    // --- Input Validation and Sanitization ---

    // 1. Ensure track width is not zero to prevent division by zero or NaN
    if (width == 0 || width.isNaN || width.isInfinite) {
      debugPrint(
          'CustomSlider Warning: Slider track width is invalid ($width). Cannot update value.');
      return;
    }

    // 2. Calculate initial raw new value based on position
    double rawNewValue =
        widget.min + (localPosition.dx / width) * (widget.max - widget.min);

    // 3. Sanitize widget.step to prevent division issues
    double effectiveStep = widget.step;
    if (effectiveStep == 0 || effectiveStep.isNaN || effectiveStep.isInfinite) {
      // Fallback to a safe step, e.g., 1.0 or a small fraction of the range
      effectiveStep = (widget.max - widget.min) /
          100.0; // Use 1% of the range as a fallback
      if (effectiveStep == 0)
        effectiveStep = 1.0; // Ensure it's not zero even if range is zero
      debugPrint(
          'CustomSlider Warning: widget.step is invalid (${widget.step}). Using $effectiveStep as fallback.');
    }

    // 4. Sanitize widget.min, widget.max, and widget.maxSlideLimit
    // Provide fallback values if they are NaN or Infinity
    final double safeMin =
        widget.min.isNaN || widget.min.isInfinite ? 0.0 : widget.min;
    final double safeMax =
        widget.max.isNaN || widget.max.isInfinite ? 100.0 : widget.max;
    double effectiveMaxSlideLimit = widget.maxSlideLimit;
    if (effectiveMaxSlideLimit.isNaN || effectiveMaxSlideLimit.isInfinite) {
      // Default to widget.max if maxSlideLimit is invalid
      effectiveMaxSlideLimit = safeMax;
      debugPrint(
          'CustomSlider Warning: widget.maxSlideLimit is invalid (${widget.maxSlideLimit}). Using widget.max ($safeMax) as fallback.');
    }

    // --- Value Calculation ---

    // Calculate the stepped value
    double steppedValue;
    // Check if the division result itself is NaN or Infinity before rounding
    final double divisionResult = rawNewValue / effectiveStep;
    if (divisionResult.isNaN || divisionResult.isInfinite) {
      // If division leads to NaN/Infinity, use the raw value for now
      steppedValue = rawNewValue;
      debugPrint(
          'CustomSlider Warning: (rawNewValue / effectiveStep) resulted in NaN/Infinity. Using rawNewValue.');
    } else {
      steppedValue = divisionResult.round() * effectiveStep;
    }

    // Clamp the value within the valid range and maxSlideLimit
    // math.min will correctly handle cases where one argument is finite and the other is Infinity,
    // but we've already sanitized `effectiveMaxSlideLimit` to prevent `NaN` here.
    double finalNewValue =
        steppedValue.clamp(safeMin, math.min(safeMax, effectiveMaxSlideLimit));

    // --- Update State and Notify Listener ---
    setState(() {
      _value = finalNewValue;
    });
    widget.onChanged(_value);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Ensure trackWidth is at least 0
        double trackWidth = math.max(0.0, constraints.maxWidth - 30);

        // Ensure denominator is not zero for thumbPosition calculation
        double range = widget.max - widget.min;
        double thumbPosition;
        if (range == 0 || range.isNaN || range.isInfinite) {
          thumbPosition = 0; // If range is invalid, position thumb at start
        } else {
          thumbPosition = (trackWidth * ((_value - widget.min) / range));
        }

        return GestureDetector(
          onPanUpdate: widget.isSlidingEnabled
              ? (details) => _updateValue(details.localPosition, trackWidth)
              : null,
          child: Stack(
            children: [
              CustomPaint(
                size: Size(trackWidth + 30, 40),
                painter: SliderPainter(
                    value: _value,
                    min: widget.min,
                    max: widget.max,
                    step: widget.step),
              ),
              Positioned(
                left: thumbPosition,
                top: 0,
                bottom: 0,
                child: CustomThumb(isActive: _value > widget.min),
              ),
            ],
          ),
        );
      },
    );
  }
}

class SliderPainter extends CustomPainter {
  final double value;
  final double min;
  final double max;
  final double step;

  SliderPainter(
      {required this.value,
      required this.min,
      required this.max,
      required this.step});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint trackPaint = Paint()
      ..color = AppColors.neutral50
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 10.h;

    final Paint progressPaint = Paint()
      ..color = AppColors.neutral800
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 10.h;

    // Sanitize min and max for painter calculations
    final double safeMin = min.isNaN || min.isInfinite ? 0.0 : min;
    final double safeMax = max.isNaN || max.isInfinite ? 100.0 : max;
    final double safeValue =
        value.clamp(safeMin, safeMax); // Clamp value to safe range

    final double range = safeMax - safeMin;
    double progressWidth;
    if (range == 0 || range.isNaN || range.isInfinite) {
      progressWidth = 0; // If range is invalid, no progress
    } else {
      progressWidth = (safeValue - safeMin) / range * (size.width - 30);
    }

    canvas.drawLine(Offset(15, size.height / 2),
        Offset(size.width - 15, size.height / 2), trackPaint);
    canvas.drawLine(Offset(15, size.height / 2),
        Offset(15 + progressWidth, size.height / 2), progressPaint);

    // Draw step circles
    // Sanitize step for the loop
    final double effectiveStep = step.isNaN || step.isInfinite || step == 0
        ? (safeMax - safeMin) / 10.0
        : step;
    if (effectiveStep == 0) return; // Avoid infinite loop if step is still zero

    for (double i = safeMin; i <= safeMax; i += effectiveStep) {
      double dx;
      if (range == 0 || range.isNaN || range.isInfinite) {
        dx = 15; // If range is invalid, all steps at start
      } else {
        dx = 15 + ((i - safeMin) / range) * (size.width - 30);
      }

      final Paint stepPaint = Paint()
        ..color = (i <= safeValue) ? Colors.white : AppColors.neutral300
        ..style = PaintingStyle.fill;

      canvas.drawCircle(Offset(dx, size.height / 2), 3, stepPaint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class CustomThumb extends StatelessWidget {
  final bool isActive;
  const CustomThumb({super.key, required this.isActive});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 18.sp,
        height: 18.sp,
        decoration: BoxDecoration(
          border: Border.all(
              width: 2.w,
              color:
                  !isActive ? const Color(0xffCBD5E1) : AppColors.neutral800),
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    );
  }
}
