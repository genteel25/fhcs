import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:fhcs/core/components/custom_button.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/features/auth/presentation/controllers/contracts/set_transaction_pin.dart';
import 'package:fhcs/features/auth/presentation/views/contracts/set_transaction_pin.dart';
import 'package:fhcs/features/auth/presentation/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class SetTransactionPinView extends StatelessWidget
    implements SetTransactionPinViewContract {
  const SetTransactionPinView({super.key, required this.controller});
  final SetTransactionPinControllerContract controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              40.h.heightBox,
              Image.asset("assets/images/primary_logo.png", height: 48.h)
                  .animate()
                  .slideX(
                      begin: 1,
                      end: 0,
                      duration: const Duration(milliseconds: 200)),
              24.h.heightBox,
              AppText(
                "Set transaction PIN",
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: AppColors.neutral800,
              ),
              4.h.heightBox,
              AppText(
                "Setup a 4 digit PIN for transaction authorisation",
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: AppColors.neutral500,
              ),
              24.h.heightBox,
              Pinput(
                length: 4,
                separatorBuilder: (index) => 24.sp.widthBox,
                defaultPinTheme: PinTheme(
                  width: 42.sp,
                  height: 44.sp,
                  decoration: BoxDecoration(
                    color: AppColors.lightest,
                    border: Border.all(color: AppColors.neutral300),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  textStyle: TextStyle(
                    fontSize: 24,
                    color: AppColors.neutral800,
                  ),
                ),
                focusedPinTheme: PinTheme(
                  width: 42.sp,
                  height: 44.sp,
                  decoration: BoxDecoration(
                    color: AppColors.lightest,
                    border: Border.all(color: AppColors.primary700),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  textStyle: TextStyle(
                    fontSize: 24,
                    color: AppColors.neutral800,
                  ),
                ),
              ),
            ],
          ).paddingSymmetric(horizontal: 20.w),
        ),
      ),
      bottomNavigationBar: Container(
        padding: REdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: MediaQuery.viewInsetsOf(context),
              child: SizedBox(
                height: 44.h,
                width: double.infinity,
                child: CustomButtonWidget(
                  "Continue",
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => AppLoadingScreen(),
                    ),
                  ),
                  //  controller.isComplete
                  //     ? () => AppSheets.otpVerificationSuccessSheet(
                  //           context,
                  //           onPressed: () {
                  //             context.pop();
                  //             context.pushNamed(RouteConstants.nextOfKinRoute);
                  //           },
                  //         )
                  //     : null,
                ),
              ),
            ),
            16.h.heightBox,
            SizedBox(
              height: 44.h,
              width: double.infinity,
              child: CustomButtonWidget(
                "Go back",
                backgroundColor: AppColors.primary100,
                onPressed: () {},
                textColor: AppColors.primary700,
              ),
            ),
            16.h.heightBox,
          ],
        ),
      ),
    );
  }
}
