import 'package:flutter/material.dart';

class SpringFloatingWrapper extends StatefulWidget {
  final Widget child;
  final double floatRange;
  final Duration duration;

  const SpringFloatingWrapper({
    super.key,
    required this.child,
    this.floatRange = 10.0,
    this.duration = const Duration(seconds: 2),
  });

  @override
  _SpringFloatingWrapperState createState() => _SpringFloatingWrapperState();
}

class _SpringFloatingWrapperState extends State<SpringFloatingWrapper>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    )..repeat(reverse: true);

    _animation = Tween<double>(
      begin: -widget.floatRange,
      end: widget.floatRange,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, _animation.value),
          child: child,
        );
      },
      child: widget.child,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
