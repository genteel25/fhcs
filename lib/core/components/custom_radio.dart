import 'package:fhcs/core/ui/colors.dart';
import 'package:flutter/material.dart';

class CustomRadio<T> extends StatelessWidget {
  final T value;
  final T groupValue;
  final ValueChanged<T> onChanged;
  final double size;
  final double innerCircleSize;
  final double borderWidth;
  final Color selectedColor;
  final Color unselectedColor;

  const CustomRadio({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.size = 24,
    this.innerCircleSize = 10,
    this.borderWidth = 2,
    this.selectedColor = Colors.blue,
    this.unselectedColor = Colors.grey,
  });

  bool get _isSelected => value == groupValue;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(value),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: _isSelected ? AppColors.primary700 : Colors.transparent,
          border: Border.all(
            color: _isSelected ? AppColors.primary700 : AppColors.neutral200,
            width: borderWidth,
          ),
        ),
        child: Center(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: _isSelected ? innerCircleSize : 0,
            height: _isSelected ? innerCircleSize : 0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _isSelected ? AppColors.lightest : Colors.transparent,
            ),
          ),
        ),
      ),
    );
  }
}
