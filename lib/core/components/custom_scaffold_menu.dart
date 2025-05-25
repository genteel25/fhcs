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
            NavItemWidget(
              activeAssetName: "home_filled",
              inactiveAssetName: "home",
              currentIndex: 0,
              isCurrentIndex: widget.navigationShell.currentIndex == 0,
              navigationShell: widget.navigationShell,
              navLabel: "Home",
            ),
            NavItemWidget(
              activeAssetName: "account_filled",
              inactiveAssetName: "account",
              currentIndex: 1,
              isCurrentIndex: widget.navigationShell.currentIndex == 1,
              navigationShell: widget.navigationShell,
              navLabel: "Accounts",
            ),
            NavItemWidget(
              activeAssetName: "investment_filled",
              inactiveAssetName: "investment",
              currentIndex: 2,
              isCurrentIndex: widget.navigationShell.currentIndex == 2,
              navigationShell: widget.navigationShell,
              navLabel: "Investments",
            ),
            NavItemWidget(
              activeAssetName: "loan_filled",
              inactiveAssetName: "loans",
              currentIndex: 3,
              isCurrentIndex: widget.navigationShell.currentIndex == 3,
              navigationShell: widget.navigationShell,
              navLabel: "Loans",
            ),
          ],
        ),
      ),
    );
  }
}

class NavItemWidget extends StatelessWidget {
  const NavItemWidget({
    super.key,
    required this.isCurrentIndex,
    required this.navigationShell,
    required this.activeAssetName,
    required this.inactiveAssetName,
    required this.currentIndex,
    required this.navLabel,
  });
  final bool isCurrentIndex;
  final int currentIndex;
  final StatefulNavigationShell navigationShell;
  final String activeAssetName;
  final String inactiveAssetName;
  final String navLabel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => navigationShell.goBranch(currentIndex,
            initialLocation: currentIndex == navigationShell.currentIndex),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/svgs/${isCurrentIndex ? activeAssetName : inactiveAssetName}.svg',
              height: 16.sp,
            ),
            7.h.heightBox,
            AppText(
              navLabel,
              fontSize: 12,
              fontWeight: isCurrentIndex ? FontWeight.w700 : FontWeight.w400,
              color:
                  isCurrentIndex ? AppColors.primary700 : AppColors.neutral400,
            )
          ],
        ),
      ),
    );
  }
}
