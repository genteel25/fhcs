import 'package:awesome_extensions/awesome_extensions.dart' hide NavigatorExt;
import 'package:fhcs/core/components/custom_bottom_button_wrapper.dart';
import 'package:fhcs/core/components/custom_input_label.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/helpers/contracts/iwidget_helper.dart';
import 'package:fhcs/core/router/route_constants.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/core/utils/app_dialog.dart';
import 'package:fhcs/features/auth/presentation/bloc/auth/auth_cubit.dart';
import 'package:fhcs/features/auth/presentation/controllers/contracts/login.dart';
import 'package:fhcs/features/auth/presentation/views/contracts/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

class LoginView extends StatelessWidget implements LoginViewContract {
  const LoginView({super.key, required this.controller});
  final LoginControllerContract controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
              "Login to your account",
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: AppColors.neutral800,
            ),
            4.h.heightBox,
            AppText(
              "Subtext for the header here",
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: AppColors.neutral500,
            ),
            24.h.heightBox,
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomInputLabelWidget(
                      "Email",
                      controller: controller.emailController,
                      validator: ValidationBuilder()
                          .required()
                          .regExp(
                              RegExp(
                                  r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"),
                              "Invalid email")
                          .build(),
                      hintText: "Enter your email address",
                    ),
                    16.h.heightBox,
                    CustomInputLabelWidget(
                      "Password",
                      controller: controller.passwordController,
                      hintText: "Enter your password",
                      showSuffix: true,
                      obscureText: controller.isObscure,
                      textInputAction: TextInputAction.done,
                      onTap: () => controller.onToggleObscure(),
                    ),
                    16.h.heightBox,
                    InkWell(
                      child: AppText(
                        "Forgot your password?",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.primary700,
                      ),
                    ).alignAtCenterRight(),
                  ],
                ),
              ),
            ),
          ],
        ).paddingSymmetric(horizontal: 20.w),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: MediaQuery.viewInsetsOf(context),
            child: BlocListener<AuthCubit, AuthState>(
              listener: (context, state) {
                state.whenOrNull(
                  loginLoading: () => AppDialog.showAppProgressDialog(context),
                  loginSuccess: (token) {
                    context.pop();
                    if (token.monthlyContribution == null) {
                      context.pushNamed(RouteConstants.kycRoute);
                    } else {
                      context.pushNamed(RouteConstants.homeRoute);
                    }
                  },
                  loginFailure: (failure) {
                    context.pop();
                    GetIt.I
                        .get<IWidgetHelper>()
                        .showErrorToast(context, message: failure);
                  },
                );
              },
              child: CustomBottomButtonWrapperWidget(
                "Continue",
                onPressed: () => controller.onLogin(),
                isSecondary: true,
              ),
            ),
          ),
          if (MediaQuery.maybeViewInsetsOf(context)?.bottom == 0)
            10.h.heightBox,
          if (MediaQuery.maybeViewInsetsOf(context)?.bottom == 0)
            TextButton(
              onPressed: () => context.goNamed(RouteConstants.signUpRoute),
              child: AppText(
                "Create an account",
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.primary700,
              ),
            ),
          30.h.heightBox,
        ],
      ),
    );
  }
}
