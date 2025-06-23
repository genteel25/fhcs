import 'package:flutter/material.dart';

import 'package:awesome_extensions/awesome_extensions.dart' hide NavigatorExt;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_validator/form_validator.dart';
import 'package:go_router/go_router.dart';

import 'package:fhcs/core/components/custom_animated_dropdown.dart';
import 'package:fhcs/core/components/custom_bottom_button_wrapper.dart';
import 'package:fhcs/core/components/custom_input_label.dart';
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/data/investment_tenure.dart';
import 'package:fhcs/core/data/investment_type.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/core/utils/global_variables.dart';
import 'package:fhcs/core/utils/helper_functions.dart';
import 'package:fhcs/features/investments/presentation/bloc/investment_tenure/investment_tenure_cubit.dart';
import 'package:fhcs/features/investments/presentation/bloc/investment_type/investment_type_cubit.dart';
import 'package:fhcs/features/investments/presentation/controllers/contracts/investment_detail.dart';
import 'package:fhcs/features/investments/presentation/views/contracts/investment_detail.dart';

class InvestmentDetailView extends StatelessWidget
    implements InvestmentDetailViewContract {
  const InvestmentDetailView({super.key, required this.controller});
  final InvestmentDetailControllerContract controller;
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
          "Investment Details",
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: AppColors.neutral800,
        ),
      ),
      backgroundColor: Color(0xffF8F8F9),
      body: DefaultTabController(
        length: 3,
        child: SingleChildScrollView(
          child: Form(
            key: controller.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                24.h.heightBox,
                BlocBuilder<InvestmentTypeCubit, InvestmentTypeState>(
                  builder: (context, state) {
                    return state.whenOrNull(
                          success: (response) =>
                              CustomAnimatedDropdownWidget<InvestmentTypeData>(
                            response,
                            labelText: "Investment type",
                            controller: controller.investmentType,
                          ),
                        ) ??
                        CustomAnimatedDropdownWidget(
                          [],
                          labelText: "Investment type",
                        );
                  },
                ),
                8.h.heightBox,
                AppText(
                  "Maximum investment amount allowed is 3x your total investment balance",
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: AppColors.neutral500,
                ),
                16.h.heightBox,
                CustomInputLabelWidget(
                  "Investment amount",
                  formatter: [controller.formatter],
                  controller: controller.amountController,
                  hintText: "amount",
                  isAmount: true,
                  validator: ValidationBuilder().required().build(),
                ),
                16.h.heightBox,
                AppText(
                  "Select investment duration",
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.neutral800,
                ),
                8.h.heightBox,
                Container(
                  width: double.infinity,
                  // height: 128.h,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    // color: AppColors.lightest,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child:
                      BlocBuilder<InvestmentTenureCubit, InvestmentTenureState>(
                    builder: (context, state) {
                      return state.whenOrNull(
                            success: (resposne) => GridView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              padding: EdgeInsets.zero,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                childAspectRatio: 4 / 2.7,
                                mainAxisSpacing: 1,
                                crossAxisSpacing: 1,
                              ),
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return _buildInvestmentDuration(
                                  context,
                                  data: resposne[index],
                                  isSelected:
                                      resposne[index].duration?.toString() ==
                                          controller.selectedInvestmentDuration,
                                  onSelect: () =>
                                      controller.selectInvestmentDuration(
                                          resposne[index]
                                                  .duration
                                                  ?.toString() ??
                                              "",
                                          resposne[index]
                                                  .profitPercentage
                                                  ?.toString() ??
                                              "0",
                                          resposne[index].id?.toString() ?? ""),
                                );
                              },
                              itemCount: resposne.length,
                            ),
                          ) ??
                          const SizedBox.shrink();
                    },
                  ),
                ),
                16.h.heightBox,
                CustomInputLabelWidget(
                  "Amount to repay",
                  controller: controller.repaymentAmountController,
                  hintText: 'Enter repayment amount',
                  formatter: [controller.repaymentAmountformatter],
                  isReadOnly: true,
                  isAmount: true,
                  validator: ValidationBuilder().required().build(),
                ),
                16.h.heightBox,
                CustomInputLabelWidget(
                  "Investment purpose",
                  controller: controller.investmentPurposeController,
                  hintText: "Enter investment purpose",
                  minLines: 3,
                  maxLines: 5,
                  validator: ValidationBuilder().required().build(),
                ),
                32.h.heightBox,
              ],
            ).paddingSymmetric(horizontal: 24.r),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomButtonWrapperWidget(
        "Continue to add seller",
        onPressed: controller.selectedInvestmentDuration.isNotEmpty
            ? () => controller.onAddSeller()
            : null,
      ),
    );
  }

  Widget _buildInvestmentDuration(
    BuildContext context, {
    required InvestmentTenureData data,
    required bool isSelected,
    required Function onSelect,
  }) {
    return InkWell(
      onTap: () => onSelect(),
      child: Container(
        padding: REdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.neutral800 : AppColors.lightest,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              // "${resposne[index].duration?.toString() ?? "0"} months",
              convertMonthsToYears(data.duration ?? 0),
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: isSelected ? AppColors.lightest : AppColors.neutral800,
            ),
            4.h.heightBox,
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  "assets/svgs/curve_direction.svg",
                  width: 9.sp,
                  height: 7.sp,
                ),
                5.5.w.widthBox,
                AppText(
                  "+${data.profitPercentage}%",
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.primary700,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
