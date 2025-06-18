import 'package:awesome_extensions/awesome_extensions.dart' hide NavigatorExt;
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/router/route_constants.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/core/utils/global_variables.dart';
import 'package:fhcs/features/home/presentation/widgets/home_action.dart';
import 'package:fhcs/features/investments/presentation/bloc/investment_type/investment_type_cubit.dart';
import 'package:fhcs/features/investments/presentation/controllers/contracts/apply_for_investments.dart';
import 'package:fhcs/features/investments/presentation/views/contracts/apply_for_investments.dart';
import 'package:fhcs/features/loans/presentation/widgets/asset_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class ApplyForInvestmentsView extends StatelessWidget
    implements ApplyForInvestmentsViewContract {
  const ApplyForInvestmentsView({super.key, required this.controller});
  final ApplyForInvestmentsControllerContract controller;
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
          "Apply for Investment",
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: AppColors.neutral800,
        ),
      ),
      backgroundColor: Color(0xffF8F8F9),
      body: DefaultTabController(
        length: 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            16.h.heightBox,
            BlocBuilder<InvestmentTypeCubit, InvestmentTypeState>(
              builder: (context, state) {
                return state.whenOrNull(
                      success: (response) => ListView.builder(
                        itemBuilder: (context, index) => InkWell(
                          onTap: () => context.pushNamed(
                              RouteConstants.investmentDetailRoute,
                              extra: response[index]),
                          child: Container(
                            padding: REdgeInsets.symmetric(
                                horizontal: 20, vertical: 16),
                            child: Row(
                              children: [
                                Container(
                                  padding: REdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color:
                                        GlobalVariables.generateColorFromText(
                                                response[index].name ?? "")
                                            .withValues(alpha: 0.1),
                                  ),
                                  child: SvgPicture.asset(
                                    "assets/svgs/database.svg",
                                    width: 16.sp,
                                    height: 16.sp,
                                    colorFilter: ColorFilter.mode(
                                        GlobalVariables.generateColorFromText(
                                            response[index].name ?? ""),
                                        BlendMode.srcIn),
                                  ),
                                ),
                                12.w.widthBox,
                                AppText(
                                  response[index].name ?? "",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.neutral800,
                                ),
                                const Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 12.sp,
                                ),
                              ],
                            ),
                          ),
                        ),
                        shrinkWrap: true,
                        itemCount: response.length,
                      ),
                    ) ??
                    const SizedBox.shrink();
              },
            )
          ],
        ),
      ),
    );
  }
}
