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
    _value = widget.value?.clamp(widget.min, widget.max) ?? widget.min;
  }

  @override
  void didUpdateWidget(covariant CustomSlider oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.value != null && widget.value != oldWidget.value) {
      setState(() {
        _value = widget.value!.clamp(widget.min, widget.max);
      });
    }
  }

  void _updateValue(Offset localPosition, double width) {
    if (!widget.isSlidingEnabled) return;

    double newValue =
        widget.min + (localPosition.dx / width) * (widget.max - widget.min);
    newValue = ((newValue / widget.step).round() * widget.step)
        .clamp(widget.min, math.min(widget.max, widget.maxSlideLimit));
    setState(() {
      _value = newValue;
    });
    widget.onChanged(_value);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double trackWidth = constraints.maxWidth - 30;
        double thumbPosition =
            (trackWidth * ((_value - widget.min) / (widget.max - widget.min)));

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

    double progressWidth = (value - min) / (max - min) * (size.width - 30);

    canvas.drawLine(Offset(15, size.height / 2),
        Offset(size.width - 15, size.height / 2), trackPaint);
    canvas.drawLine(Offset(15, size.height / 2),
        Offset(15 + progressWidth, size.height / 2), progressPaint);

    // Draw step circles
    for (double i = min; i <= max; i += step) {
      double dx = 15 + ((i - min) / (max - min)) * (size.width - 30);
      final Paint stepPaint = Paint()
        ..color = (i <= value) ? Colors.white : AppColors.neutral300
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
              color: !isActive ? Color(0xffCBD5E1) : AppColors.neutral800),
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    );
  }
}
