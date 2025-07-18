import 'package:flutter/material.dart';

import 'package:awesome_extensions/awesome_extensions.dart' hide NavigatorExt;
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/helpers/contracts/iwidget_helper.dart';
import 'package:fhcs/core/router/route_constants.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/core/utils/app_dialog.dart';
import 'package:fhcs/core/utils/app_sheets.dart';
import 'package:fhcs/features/auth/presentation/bloc/verify_membership/verify_membership_cubit.dart';
import 'package:fhcs/features/auth/presentation/controllers/contracts/membership_payment.dart';
import 'package:fhcs/features/auth/presentation/views/contracts/membership_payment.dart';
import 'package:fhcs/features/auth/presentation/widgets/payment_method_card.dart';

class MembershipPaymentView extends StatelessWidget
    implements MembershipPaymentViewContract {
  const MembershipPaymentView({super.key, required this.controller});
  final MembershipPaymentControllerContract controller;
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
              "Membership Payment",
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            4.h.heightBox,
            AppText(
              "To access the cooperative’s benefits, please complete your membership fee payment. Choose your preferred payment method below.",
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: AppColors.neutral500,
            ),
            24.h.heightBox,
            PaymentMethodCardWidget(
              assetName: "merchant",
              paymentMethod: "Bank transfer",
              paymentInfo: [
                "Transfer to a virtual account number",
                "Payment will be verified within 24 hours",
              ],
              onTap: () => controller.payViaCard(isCard: false),
            ),
            16.h.heightBox,
            BlocListener<VerifyMembershipCubit, VerifyMembershipState>(
              listener: (context, state) {
                state.whenOrNull(
                  loading: () => AppDialog.showAppProgressDialog(context),
                  failure: (error) {
                    context.pop();
                    GetIt.I
                        .get<IWidgetHelper>()
                        .showErrorToast(context, message: error);
                  },
                  success: (response) {
                    context.pop();
                    GetIt.I.get<IWidgetHelper>().showSuccessToast(
                          context,
                          message: "Payment successful",
                        );
                    context.pushNamed(RouteConstants.createPasswordRoute);
                  },
                );
              },
              child: PaymentMethodCardWidget(
                assetName: "card",
                paymentMethod: "Via card",
                paymentInfo: [
                  "Deposit directly with your debit card",
                  "Your membership will be activated immediately",
                ],
                onTap: () => controller.payViaCard(),
              ),
            ),
          ],
        ).paddingSymmetric(horizontal: 20.w),
      ),
    );
  }
}
