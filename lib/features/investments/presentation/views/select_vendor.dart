import 'package:awesome_extensions/awesome_extensions.dart' hide NavigatorExt;
import 'package:fhcs/core/components/custom_bottom_button_wrapper.dart';
import 'package:fhcs/core/components/custom_input_label.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/features/investments/presentation/controllers/contracts/select_vendor.dart';
import 'package:fhcs/features/investments/presentation/views/contracts/select_vendor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class SelectVendorView extends StatelessWidget
    implements SelectVendorViewContract {
  const SelectVendorView({super.key, required this.controller});
  final SelectVendorControllerContract controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 36.h,
        leadingWidth: 58.w,
        backgroundColor: Color(0xffF8F8F9),
        surfaceTintColor: Color(0xffF8F8F9),
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            20.sp.widthBox,
            InkWell(
              borderRadius: BorderRadius.circular(100.r),
              onTap: () => context.pop(),
              child: Container(
                width: 36.w,
                height: 36.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColors.neutral200,
                    width: 1.w,
                  ),
                ),
                child: SvgPicture.asset(
                  "assets/svgs/back.svg",
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
          ],
        ),
        centerTitle: false,
        title: AppText(
          "Select seller/vendor",
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: AppColors.neutral800,
        ),
      ),
      backgroundColor: Color(0xffF8F8F9),
      body: Form(
        key: controller.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            16.h.heightBox,
            CustomInputLabelWidget(
              "Seller/Vendor name",
              controller: controller.sellerNameController,
              hintText: "Enter seller/vendor name",
            ),
            8.h.heightBox,
            AppText(
              "Please put a verifiable contact and name",
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: AppColors.neutral500,
            ),
            16.h.heightBox,
            CustomInputLabelWidget(
              "Seller/Vendor name",
              controller: controller.sellerContactController,
              keyboardType: TextInputType.phone,
              hintText: "Enter seller/vendor name",
            ),
          ],
        ).paddingSymmetric(horizontal: 20.r),
      ),
      bottomNavigationBar: CustomBottomButtonWrapperWidget(
        "Continue to add referees",
        onPressed: () => controller.onContinueToReferee(),
      ),
    );
  }
}
