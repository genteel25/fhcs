import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomLoaderWidget extends StatelessWidget {
  const CustomLoaderWidget({super.key, this.hasPadding = true});
  final bool hasPadding;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: REdgeInsets.symmetric(horizontal: hasPadding ? 20 : 0),
      itemBuilder: (context, index) => Container(
        height: 54.h,
        width: 200.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.r),
        ),
      ).applyShimmer(
        baseColor: AppColors.primary700.withValues(alpha: 0.1),
        highlightColor: AppColors.primary700.withValues(alpha: 0.3),
      ),
      separatorBuilder: (context, index) => 8.h.heightBox,
      itemCount: 8,
      shrinkWrap: true,
    );
  }
}
