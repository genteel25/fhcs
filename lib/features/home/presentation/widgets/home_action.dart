import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeActionWidget extends StatelessWidget {
  const HomeActionWidget({
    super.key,
    this.isFilled,
    this.actionAsset,
    this.onTap,
    this.boldBorder = false,
    this.iconSize,
    required this.actionLabel,
    this.assetColor,
  });
  final bool? isFilled;
  final String? actionAsset;
  final String actionLabel;
  final VoidCallback? onTap;
  final bool boldBorder;
  final double? iconSize;
  final Color? assetColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        highlightColor: isFilled != null && actionAsset == null
            ? Color(0xff1E293B).withValues(alpha: 0.08)
            : AppColors.primary100.withValues(alpha: 0.3),
        splashColor: isFilled != null && actionAsset == null
            ? Color(0xff1E293B).withValues(alpha: 0.1)
            : AppColors.primary100.withValues(alpha: 0.6),
        // radius: 32.r,
        borderRadius: BorderRadius.circular(4.r),
        onTap: onTap != null ? () => onTap!() : null,
        child: Column(
          children: [
            Container(
              width: 52.sp,
              height: 52.sp,
              // width: 83.w,
              // padding: REdgeInsets.all(19),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.r),
                color: isFilled != null ? Color(0xff1E293B) : null,
                border: isFilled != null && actionAsset == null
                    ? null
                    : Border.all(
                        color: boldBorder
                            ? Color(0xff1E2022)
                            : AppColors.neutral200),
              ),
              child: isFilled != null && actionAsset == null
                  ? Icon(
                      Icons.add,
                      size: 18.sp,
                      color: AppColors.lightest,
                    )
                  : SvgPicture.asset(
                      "assets/svgs/$actionAsset.svg",
                      width: iconSize ?? 18.w,
                      fit: BoxFit.scaleDown,
                      colorFilter: isFilled == true
                          ? null
                          : ColorFilter.mode(assetColor ?? AppColors.primary700,
                              BlendMode.srcIn),
                    ),
            ),
            8.h.heightBox,
            AppText(
              actionLabel,
              fontSize: 12,
              textAlign: TextAlign.center,
              fontWeight: FontWeight.w400,
              color: AppColors.neutral800,
            ),
          ],
        ),
      ),
    );
  }
}
