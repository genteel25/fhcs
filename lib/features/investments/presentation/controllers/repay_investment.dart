import 'package:flutter/material.dart';

import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import 'package:fhcs/core/helpers/contracts/iwidget_helper.dart';
import 'package:fhcs/core/router/route_constants.dart';
import 'package:fhcs/core/utils/global_variables.dart';
import 'package:fhcs/features/investments/presentation/bloc/repay_investment.dart/repay_investment_cubit.dart';
import 'package:fhcs/features/investments/presentation/controllers/contracts/repay_investment.dart';
import 'package:fhcs/features/investments/presentation/views/contracts/repay_investment.dart';
import 'package:fhcs/features/investments/presentation/views/repay_investment.dart';
import 'package:fhcs/features/loans/presentation/bloc/loan_repayment/loan_repayment_cubit.dart';
import 'package:fhcs/features/loans/presentation/controllers/contracts/repay_loan.dart';
import 'package:fhcs/features/loans/presentation/views/contracts/repay_loan.dart';
import 'package:fhcs/features/loans/presentation/views/repay_loan.dart';

class RepayInvestmentScreen extends StatefulWidget {
  static const String route = 'forgot_password';
  const RepayInvestmentScreen({super.key});

  @override
  State<RepayInvestmentScreen> createState() => RepayInvestmentController();
}

class RepayInvestmentController extends State<RepayInvestmentScreen>
    implements RepayInvestmentControllerContract {
  late RepayInvestmentViewContract view;
  @override
  TextEditingController amountToRepayController = TextEditingController();
  @override
  CurrencyTextInputFormatter formatter = CurrencyTextInputFormatter.currency(
    symbol: GlobalVariables.nairaCurrencySymbol,
    decimalDigits: 0,
    minValue: 0,
  );

  @override
  List<String> repayFrom = ['Savings'];

  @override
  void initState() {
    super.initState();
    view = RepayInvestmentView(controller: this);
  }

  @override
  void onSelectRepayFrom(String value) {
    repayFrom.clear();
    setState(() {
      repayFrom.add(value);
    });
  }

  @override
  void onRepayLoan() {
    if (amountToRepayController.text.isEmpty) {
      GetIt.I
          .get<IWidgetHelper>()
          .showErrorToast(context, message: "Amount to repay is required");
      return;
    } else if (formatter.getUnformattedValue() <= 0) {
      GetIt.I
          .get<IWidgetHelper>()
          .showErrorToast(context, message: "A non zero amount is required");
      return;
    }
    if (repayFrom.contains("Direct")) {
      context.pushNamed(RouteConstants.depositFundRoute,
          extra: formatter.getUnformattedValue().toString());
    } else {
      final payload = {
        "amount": formatter.getUnformattedValue(),
        "account_type": repayFrom.first,
      };
      context.read<RepayInvestmentCubit>().repayInvestment(payload);
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}
