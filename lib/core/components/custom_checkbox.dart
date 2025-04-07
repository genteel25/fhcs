import 'package:fhcs/core/ui/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final double width;
  final double height;
  final double borderRadius;
  final Color activeColor;
  final Color checkColor;
  final Color borderColor;
  final double iconSize;

  const CustomCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
    this.width = 20,
    this.height = 20,
    this.borderRadius = 4,
    this.activeColor = Colors.blue,
    this.checkColor = Colors.white,
    this.borderColor = Colors.grey,
    this.iconSize = 16,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(!value),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: value ? AppColors.primary700 : Colors.transparent,
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(
            color: value ? AppColors.primary700 : AppColors.neutral200,
            width: 1.w,
          ),
        ),
        child: value
            ? Center(
                child: Icon(
                  Icons.check,
                  size: iconSize,
                  color: checkColor,
                ),
              )
            : null,
      ),
    );
  }
}
