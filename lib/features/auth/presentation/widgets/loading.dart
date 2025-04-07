import 'package:fhcs/core/router/route_constants.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class AppLoadingScreen extends StatefulWidget {
  const AppLoadingScreen({super.key, this.onDone});
  final VoidCallback? onDone;

  @override
  State<AppLoadingScreen> createState() => _AppLoadingScreenState();
}

class _AppLoadingScreenState extends State<AppLoadingScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this,
        lowerBound: 0.3,
        upperBound: 1,
        duration: const Duration(milliseconds: 2000),
        reverseDuration: const Duration(milliseconds: 2000))
      ..forward()
      ..addListener(() {
        if (_controller.status == AnimationStatus.completed) {
          _controller.reverse();
        } else if (_controller.status == AnimationStatus.dismissed) {
          _controller.forward();
        }
      });
    Future.delayed(const Duration(seconds: 10), () {
      if (mounted) {
        if (widget.onDone != null) {
          widget.onDone!();
        } else {
          context.goNamed(RouteConstants.loginRoute);
        }
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.primary700,
        ),
        child: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                "assets/images/loading_shadow.png",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: FadeTransition(
                opacity: _controller,
                child: Image.asset(
                  "assets/images/loading_pattern.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              child: Image.asset("assets/images/white_logo.png", height: 72.h)
                  .animate()
                  .slideX(
                      begin: 1,
                      end: 0,
                      duration: const Duration(milliseconds: 200)),
            ),
          ],
        ),
      ),
    );
  }
}
