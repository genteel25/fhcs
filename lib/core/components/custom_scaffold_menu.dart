import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class CustomScaffoldMenuWidget extends StatefulWidget {
  const CustomScaffoldMenuWidget({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;

  @override
  State<CustomScaffoldMenuWidget> createState() =>
      _CustomScaffoldMenuWidgetState();
}

class _CustomScaffoldMenuWidgetState extends State<CustomScaffoldMenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.navigationShell,
      backgroundColor: Color(0xffF8F8F9),
      bottomNavigationBar: Container(
        padding: REdgeInsets.symmetric(horizontal: 20),
        height: 78.h,
        decoration: BoxDecoration(color: AppColors.lightest, boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            offset: Offset(0, -6),
            blurRadius: 24.r,
            spreadRadius: 6.r,
          ),
        ]),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                      'assets/svgs/${widget.navigationShell.currentIndex == 0 ? "home_filled" : "home"}.svg'),
                  7.h.heightBox,
                  AppText(
                    'Home',
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: widget.navigationShell.currentIndex == 0
                        ? AppColors.primary700
                        : AppColors.neutral400,
                  )
                ],
              ).onTap(() {
                widget.navigationShell.goBranch(0,
                    initialLocation: 0 == widget.navigationShell.currentIndex);
              }),
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                    'assets/svgs/${widget.navigationShell.currentIndex == 1 ? "account_filled" : "account"}.svg'),
                7.h.heightBox,
                AppText(
                  'Accounts',
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: widget.navigationShell.currentIndex == 1
                      ? AppColors.primary700
                      : AppColors.neutral400,
                )
              ],
            ).onTap(() {
              widget.navigationShell.goBranch(1,
                  initialLocation: 1 == widget.navigationShell.currentIndex);
            })),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                      'assets/svgs/${widget.navigationShell.currentIndex == 2 ? "investment_filled" : "investment"}.svg'),
                  7.h.heightBox,
                  AppText(
                    'Investments',
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: widget.navigationShell.currentIndex == 2
                        ? AppColors.primary700
                        : AppColors.neutral400,
                  )
                ],
              ).onTap(() {
                widget.navigationShell.goBranch(2,
                    initialLocation: 2 == widget.navigationShell.currentIndex);
              }),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                      'assets/svgs/${widget.navigationShell.currentIndex == 3 ? "loan_filled" : "loans"}.svg'),
                  7.h.heightBox,
                  AppText(
                    'Loans',
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: widget.navigationShell.currentIndex == 3
                        ? AppColors.primary700
                        : AppColors.neutral400,
                  )
                ],
              ).onTap(() {
                widget.navigationShell.goBranch(3,
                    initialLocation: 3 == widget.navigationShell.currentIndex);
              }),
            ),
          ],
        ),
      ),
    );
  }
}
