import 'dart:developer';

import 'package:awesome_extensions/awesome_extensions.dart' hide NavigatorExt;
import 'package:fhcs/core/components/custom_back_button.dart';
import 'package:fhcs/core/components/custom_switch.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/helpers/contracts/iwidget_helper.dart';
import 'package:fhcs/core/router/route_constants.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/features/auth/presentation/bloc/auth/auth_cubit.dart';
import 'package:fhcs/features/home/presentation/bloc/user_profile/user_profile_cubit.dart';
import 'package:fhcs/features/home/presentation/controllers/contracts/profile.dart';
import 'package:fhcs/features/home/presentation/views/contracts/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

class ProfileView extends StatelessWidget implements ProfileViewContract {
  const ProfileView({super.key, required this.controller});
  final ProfileControllerContract controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F9),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 28.h.heightBox,
          Container(
            height: 237.h,
            padding: REdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xffFFFFFF),
                  Color(0xffADD9C6),
                ],
              ),
            ),
            child: SafeArea(
              bottom: false,
              child: Stack(
                // crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        34.h.heightBox,
                        Container(
                          width: 80.sp,
                          height: 80.sp,
                          decoration: BoxDecoration(
                            color: AppColors.neutral300,
                            border: Border.all(
                                width: 4.w, color: AppColors.lightest),
                            shape: BoxShape.circle,
                          ),
                          // child:
                        ),
                        8.h.heightBox,
                        BlocBuilder<UserProfileCubit, UserProfileState>(
                          builder: (context, state) {
                            return state.whenOrNull(
                                  success: (response) => AppText(
                                    "${response.user?.firstName ?? ""} ${response.user?.lastName ?? ""}",
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.neutral800,
                                  ),
                                ) ??
                                AppText(
                                  controller.fullName,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.neutral800,
                                );
                          },
                        ),
                        2.h.heightBox,
                        BlocBuilder<UserProfileCubit, UserProfileState>(
                          builder: (context, state) {
                            return state.whenOrNull(
                                  success: (response) => AppText(
                                    "IR-${response.user?.irNumber ?? "--"}",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.neutral500,
                                  ),
                                ) ??
                                AppText(
                                  "--",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.neutral500,
                                );
                          },
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 8.h,
                    left: 0.w,
                    child: CustomBackButtonWidget(),
                  ),
                ],
              ),
            ),
          ),
          20.h.heightBox,
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                _buildProfileItem(
                  title: "Profile details",
                  assetName: "user",
                  onTap: () {},
                ),
                _buildProfileItem(
                  title: "Account settings",
                  assetName: "user_settings",
                  onTap: () {},
                ),
                _buildProfileItem(
                  title: "Security PIN",
                  assetName: "user_lock",
                  onTap: () {},
                ),
                _buildProfileItem(
                  title: "Request statement",
                  assetName: "user_document",
                  onTap: () {},
                ),
                _buildProfileItem(
                  title: "Biometric authentication",
                  assetName: "fingerprint",
                  onSwitchChanged: controller.toggleBiometric,
                  isSwitch: true,
                  switchValue: controller.isBiometricEnabled,
                ),
                _buildProfileItem(
                  title: "Contact support",
                  assetName: "headphone",
                  onTap: () {},
                ),
                _buildProfileItem(
                  title: "FAQs",
                  assetName: "headphone",
                  onTap: () {},
                ),
                BlocListener<AuthCubit, AuthState>(
                  listener: (context, state) {
                    state.whenOrNull(
                      logoutSuccess: () =>
                          context.goNamed(RouteConstants.loginRoute),
                      logoutFailure: (error) {
                        GetIt.I
                            .get<IWidgetHelper>()
                            .showErrorToast(context, message: error);
                      },
                    );
                  },
                  child: _buildProfileItem(
                    title: "Logout",
                    assetName: "logout",
                    onTap: () => context.read<AuthCubit>().logout(),
                    isLogout: true,
                  ),
                ),
              ],
            ).paddingSymmetric(horizontal: 20.w),
          ))
        ],
      ),
    );
  }

  Widget _buildProfileItem({
    required String title,
    required String assetName,
    VoidCallback? onTap,
    ValueChanged<bool>? onSwitchChanged,
    bool isSwitch = false,
    bool isLogout = false,
    bool switchValue = false,
  }) {
    return InkWell(
      highlightColor: (isLogout ? AppColors.secondary100 : AppColors.primary100)
          .withValues(alpha: 0.1),
      splashColor: (isLogout ? AppColors.secondary100 : AppColors.primary100)
          .withValues(alpha: 0.25),
      borderRadius: BorderRadius.circular(4.r),
      onTap: onTap,
      child: Container(
        padding: REdgeInsets.symmetric(vertical: 16),
        child: Row(
          children: [
            Container(
              padding: REdgeInsets.all(10),
              decoration: BoxDecoration(
                color: isLogout ? AppColors.secondary50 : AppColors.primary100,
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset("assets/svgs/$assetName.svg"),
            ),
            12.w.widthBox,
            AppText(
              title,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: isLogout ? AppColors.secondary700 : AppColors.neutral800,
            ),
            const Spacer(),
            if (isSwitch) ...[
              CustomSwitch(
                value: switchValue,
                onChanged: onSwitchChanged ?? (value) {},
                width: 46.sp,
                height: 24.sp,
                thumbSize: 16.sp,
              ),
            ] else ...[
              Icon(Icons.arrow_forward_ios, size: 10.sp),
            ],
          ],
        ),
      ),
    );
  }
}
