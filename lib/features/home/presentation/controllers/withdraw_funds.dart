import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:fhcs/core/utils/global_variables.dart';
import 'package:fhcs/features/home/presentation/bloc/dashboard/dashboard_cubit.dart';
import 'package:fhcs/features/home/presentation/bloc/initiate_withdrawal/initiate_withdrawal_cubit.dart';
import 'package:fhcs/features/home/presentation/controllers/contracts/withdraw_funds.dart';
import 'package:fhcs/features/home/presentation/views/contracts/withdraw_funds.dart';
import 'package:fhcs/features/home/presentation/views/withdraw_funds.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum WithdrawalAccount { savings, investment }

class WithdrawFundScreen extends StatefulWidget {
  static const String route = 'forgot_password';
  const WithdrawFundScreen({super.key, required this.account});
  final WithdrawalAccount account;

  @override
  State<WithdrawFundScreen> createState() => WithdrawFundController();
}

class WithdrawFundController extends State<WithdrawFundScreen>
    implements WithdrawFundControllerContract {
  late WithdrawFundViewContract view;
  @override
  TextEditingController withdrawalAmountController = TextEditingController();
  @override
  TextEditingController amountReceivedController = TextEditingController();
  @override
  TextEditingController descriptionController = TextEditingController();
  @override
  late CurrencyTextInputFormatter formatter;

  @override
  late WithdrawalAccount withdrawalAccount;

  @override
  void initState() {
    super.initState();
    view = WithdrawFundView(controller: this);
    withdrawalAccount = widget.account;
    amountControllerListener();
    formatter = CurrencyTextInputFormatter.currency(
        symbol: GlobalVariables.nairaCurrencySymbol,
        decimalDigits: 0,
        minValue: 0,
        maxValue: withdrawalAccount == WithdrawalAccount.savings
            ? (context.read<DashboardCubit>().dashboardData?.totalSavings ?? 0)
            : (context.read<DashboardCubit>().dashboardData?.totalInvestment ??
                0));
  }

  @override
  void onContiune() {
    final payload = {
      "amount": formatter.getUnformattedValue(),
      if (descriptionController.text.isNotEmpty)
        "description": descriptionController.text,
      "account_type": switch (withdrawalAccount) {
        WithdrawalAccount.investment => "Investment",
        _ => "Savings",
      }
    };
    context.read<InitiateWithdrawalCubit>().initiateWithdrawal(payload);
  }

  void amountControllerListener() {
    withdrawalAmountController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    withdrawalAmountController
      ..removeListener(amountControllerListener)
      ..dispose();
    amountReceivedController.dispose();
    descriptionController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}
