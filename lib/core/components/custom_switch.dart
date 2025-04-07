import 'package:fhcs/core/ui/colors.dart';
import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final double width;
  final double height;
  final double thumbSize;
  final Color activeColor;
  final Color inactiveColor;
  final Color thumbColor;

  const CustomSwitch({
    super.key,
    required this.value,
    required this.onChanged,
    this.width = 60,
    this.height = 30,
    this.thumbSize = 26,
    this.activeColor = Colors.green,
    this.inactiveColor = Colors.grey,
    this.thumbColor = Colors.white,
  });

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _thumbPosition;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
      value: widget.value ? 1.0 : 0.0,
    );

    _thumbPosition = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  @override
  void didUpdateWidget(covariant CustomSwitch oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.value) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  void _toggle() {
    widget.onChanged(!widget.value);
  }

  @override
  Widget build(BuildContext context) {
    final double padding = (widget.height - widget.thumbSize) / 2;
    final double switchWidth = widget.width;
    final double switchHeight = widget.height;
    final double thumbSize = widget.thumbSize;
    final double maxOffset = switchWidth - thumbSize - 2 * padding;

    return GestureDetector(
      onTap: _toggle,
      child: Container(
        width: switchWidth,
        height: switchHeight,
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(switchHeight / 2),
          color: widget.value ? AppColors.primary700 : AppColors.neutral200,
        ),
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Stack(
              children: [
                Positioned(
                  left: _thumbPosition.value * maxOffset,
                  child: Container(
                    width: thumbSize,
                    height: thumbSize,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: widget.thumbColor,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff101828).withValues(alpha: 0.1),
                            offset: Offset(0, 2),
                            blurRadius: 4,
                            spreadRadius: -2,
                          ),
                          BoxShadow(
                            color: Color(0xff101828).withValues(alpha: 0.1),
                            offset: Offset(0, 4),
                            blurRadius: 6,
                            spreadRadius: -1,
                          ),
                        ]),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
