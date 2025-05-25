import 'package:awesome_extensions/awesome_extensions.dart' hide NavigatorExt;
import 'package:fhcs/core/components/custom_animated_dropdown.dart';
import 'package:fhcs/core/components/custom_bottom_button_wrapper.dart';
import 'package:fhcs/core/components/custom_input_label.dart';
import 'package:fhcs/core/components/custom_phone_field.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/helpers/contracts/iwidget_helper.dart';
import 'package:fhcs/core/router/route_constants.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/features/auth/presentation/bloc/auth/auth_cubit.dart';
import 'package:fhcs/features/auth/presentation/controllers/contracts/next_of_kin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:loader_overlay/loader_overlay.dart';

import '../widgets/first_kyc_info.dart';
import 'contracts/next_of_kin.dart';

class NextOfKinView extends StatelessWidget implements NextOfKinViewContract {
  const NextOfKinView({super.key, required this.controller});
  final NextOfKinControllerContract controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: controller.formKey,
          child: SizedBox(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                16.h.heightBox,
                Image.asset("assets/images/primary_logo.png", height: 48.h)
                    .animate()
                    .slideX(
                        begin: 1,
                        end: 0,
                        duration: const Duration(milliseconds: 200)),
                24.h.heightBox,
                AppText(
                  "Next Of Kin information",
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColors.neutral800,
                ),
                4.h.heightBox,
                AppText(
                  "Fill in your Next Of Kin Info",
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColors.neutral500,
                ),
                24.h.heightBox,
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomInputLabelWidget(
                          "Next Of Kin",
                          controller: controller.nextOfKinController,
                          hintText: "Enter full name",
                          validator: ValidationBuilder()
                              .required()
                              .regExp(RegExp(r'^\s*\b(\w+\b\s*){1,3}$'),
                                  "Max of 3 words")
                              .build(),
                          formatter: [ThreeWordInputFormatter()],
                        ),
                        16.h.heightBox,
                        CustomAnimatedDropdownWidget(
                          labelText: "Relationship with NOK ",
                          [
                            'Uncle',
                            'Father',
                            'Mother',
                            'Sibling',
                            'Aunt',
                            'Cousin'
                          ],
                          hintLabel: "Select relationship",
                          onChanged: controller.onSelectNokRelationship,
                        ),
                        16.h.heightBox,
                        CustomPhoneFieldWidget(
                          "Phone number",
                          controller: controller.phoneController,
                          hintText: "Enter phone number",
                        ),
                        16.h.heightBox,
                        CustomInputLabelWidget(
                          "Official/Residential Address",
                          controller: controller.officialAddressController,
                          hintText: "Enter address",
                          validator: ValidationBuilder().required().build(),
                          textInputAction: TextInputAction.done,
                        ),
                        // const Spacer(),

                        16.h.heightBox,
                      ],
                    )
                        .animate()
                        .fade(duration: const Duration(milliseconds: 300))
                        .slideY(
                          duration: const Duration(milliseconds: 300),
                          begin: 1,
                          end: 0,
                        ),
                  ),
                ),
              ],
            ).paddingSymmetric(horizontal: 20.w),
          ),
        ),
      ),
      bottomNavigationBar: BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
          state.whenOrNull(
            nokLoading: () => AppDialog.showAppProgressDialog(context),
            nokSuccess: (response) {
              context.pop();
              context.pushNamed(RouteConstants.withdrawalBankRoute);
            },
            nokFailure: (error) {
              context.pop();
              GetIt.I
                  .get<IWidgetHelper>()
                  .showErrorToast(context, message: error);
            },
          );
        },
        child: CustomBottomButtonWrapperWidget(
          "Continue",
          onPressed: controller.selectedNokRelationship == null
              ? null
              : controller.onContinue,
        ),
      ),
    );
  }
}
