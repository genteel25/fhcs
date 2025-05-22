import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:awesome_extensions/awesome_extensions.dart' hide NavigatorExt;
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:loader_overlay/loader_overlay.dart';

import 'package:fhcs/core/components/custom_animated_dropdown.dart';
import 'package:fhcs/core/components/custom_input_label.dart';
import 'package:fhcs/core/data/bank.dart';
import 'package:fhcs/core/helpers/contracts/iwidget_helper.dart';
import 'package:fhcs/core/router/route_constants.dart';
import 'package:fhcs/core/utils/app_sheets.dart';
import 'package:fhcs/features/auth/presentation/bloc/auth/auth_cubit.dart';
import 'package:fhcs/features/auth/presentation/bloc/bank_list/bank_list_cubit.dart';

import '../../../../core/components/custom_bottom_button_wrapper.dart';
import '../../../../core/components/custom_text.dart';
import '../../../../core/ui/colors.dart';
import '../controllers/contracts/withdrawal_bank.dart';

import 'contracts/withdrawal_bank.dart';

class WithdrawalBankView extends StatelessWidget
    implements WithdrawalBankViewContract {
  const WithdrawalBankView({super.key, required this.controller});
  final WithdrawalBankControllerContract controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              16.h.heightBox,
              Image.asset("assets/images/primary_logo.png", height: 48.h)
                  .animate()
                  .slideX(
                      begin: 1,
                      end: 0,
                      duration: const Duration(milliseconds: 200))
                  .onTap(() => context.read<BankListCubit>().getBankList()),
              24.h.heightBox,
              AppText(
                "Add withdrawal bank",
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: AppColors.neutral800,
              ),
              4.h.heightBox,
              AppText(
                "This is where funds from FHCS will be sent to when you apply for a loan, investment or when a withdrawal is made",
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: AppColors.neutral500,
              ),
              24.h.heightBox,
              BlocConsumer<BankListCubit, BankListState>(
                listener: (context, state) {
                  state.whenOrNull(
                    success: (response) {
                      controller.onSetController(response.first);
                    },
                  );
                },
                builder: (context, state) {
                  return state.whenOrNull(
                        success: (response) =>
                            CustomAnimatedDropdownWidget<BankData>(
                          response,
                          labelText: "Bank name",
                          controller: controller.bankNameController,
                        ),
                      ) ??
                      CustomAnimatedDropdownWidget<String>(
                        [],
                        labelText: "Bank name",
                      );
                },
              ),
              16.h.heightBox,
              CustomInputLabelWidget(
                "Account number",
                controller: controller.accountNumberController,
                hintText: "Enter account number",
                keyboardType: TextInputType.number,
                formatter: [LengthLimitingTextInputFormatter(10)],
              ),
              16.h.heightBox,
              CustomInputLabelWidget(
                "Account name",
                controller: controller.accountNameController,
                hintText: "Enter account name",
              ),
              16.h.heightBox,
              CustomInputLabelWidget(
                "Sort code",
                controller: controller.sortCodeController,
                hintText: "Enter your bank sort code",
              ),
            ],
          ).paddingSymmetric(horizontal: 20),
        ),
      ),
      bottomNavigationBar: BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
          state.whenOrNull(
            bankLoading: () => context.loaderOverlay.show(),
            bankSuccess: (response) {
              context.loaderOverlay.hide();
              // context.pushNamed(RouteConstants.createPasswordRoute);
              AppSheets.bankWithdrawalSuccessSheet(context, onPressed: () {
                context
                    .pushNamed(RouteConstants.membershipPaymentRoute, extra: (
                  amount: response.paymentInfoData?.amount?.toString() ?? "0",
                  ref: response.paymentInfoData?.refId ?? ""
                ));
              });
            },
            bankFailure: (error) {
              context.loaderOverlay.hide();
              GetIt.I
                  .get<IWidgetHelper>()
                  .showErrorToast(context, message: error);
            },
          );
        },
        child: CustomBottomButtonWrapperWidget(
          "Continue",
          onPressed: () {
            controller.onSubmitBankInfo();
          },
        ),
      ),
    );
  }
}
