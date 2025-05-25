import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:fhcs/core/data/bank.dart';
import 'package:fhcs/core/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ui/colors.dart';
import 'custom_text.dart';

class CustomSearchDropdownWidget<T> extends StatelessWidget {
  const CustomSearchDropdownWidget(
    this.items, {
    super.key,
    this.hintLabel,
    this.labelText,
    this.headerStyle,
    this.listItemStyle,
    this.onChanged,
    this.validator,
    this.isSecondary = false,
    this.enabled = true,
    this.controller,
  });
  final List<T> items;
  final String? labelText;
  final String? hintLabel;
  final TextStyle? headerStyle;
  final TextStyle? listItemStyle;
  final Function(T?)? onChanged;
  final String? Function(T?)? validator;
  final bool isSecondary;
  final bool enabled;
  final SingleSelectController<T>? controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText != null)
          AppText(
            labelText ?? "",
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppColors.neutral800,
          ),
        if (labelText != null) 4.h.heightBox,
        MediaQuery(
          data:
              MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling),
          child: CustomDropdown<T>.search(
              enabled: enabled,
              hintText: hintLabel ?? 'Select role',
              controller: controller,
              hintBuilder: (context, hint, enabled) => AppText(
                    hint,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.neutral400,
                  ),
              items: items,
              // initialItem: items.isEmpty ? null : items.first,
              onChanged: onChanged,
              validateOnChange: true,
              validator: validator,
              excludeSelected: false,
              listItemBuilder: (context, item, isSelected, onItemSelect) {
                return AppText(
                  switch (item) {
                    BankData(:final name) => name ?? "",
                    // SubCategoryData(:final name) => name ?? "",
                    _ => item?.displayText ?? "",
                  },
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.neutral800,
                );
              },
              itemsListPadding:
                  REdgeInsets.symmetric(vertical: 12, horizontal: 12),
              listItemPadding:
                  REdgeInsets.symmetric(vertical: 12, horizontal: 12),
              expandedHeaderPadding:
                  REdgeInsets.symmetric(vertical: 12, horizontal: 12),
              closedHeaderPadding:
                  REdgeInsets.symmetric(vertical: 12, horizontal: 12),
              headerBuilder: (context, selectedItem, enabled) => AppText(
                    switch (selectedItem) {
                      BankData(:final name) => name ?? "",
                      _ => selectedItem!.displayText,
                    },
                    // selectedItem?.displayText ?? "",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.neutral800,
                  ),
              decoration: CustomDropdownDecoration(
                closedBorderRadius: BorderRadius.circular(8.r),
                headerStyle: headerStyle ??
                    GoogleFonts.onest(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.neutral100,
                    ),
                listItemStyle: listItemStyle ??
                    GoogleFonts.onest(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.neutral300,
                    ),
                closedBorder:
                    Border.all(color: AppColors.neutral300, width: 1.w),
                closedErrorBorderRadius: BorderRadius.circular(8.r),
                expandedBorderRadius: BorderRadius.circular(8.r),
                expandedBorder:
                    Border.all(color: AppColors.primary700, width: 1.w),
                closedFillColor: AppColors.neutral50,
              )),
        ),
      ],
    );
  }
}
