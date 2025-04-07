import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:fhcs/core/utils/global_variables.dart';
import 'package:fhcs/features/home/presentation/controllers/contracts/withdraw_funds.dart';
import 'package:fhcs/features/home/presentation/views/contracts/withdraw_funds.dart';
import 'package:fhcs/features/home/presentation/views/withdraw_funds.dart';
import 'package:flutter/material.dart';

class WithdrawFundScreen extends StatefulWidget {
  static const String route = 'forgot_password';
  const WithdrawFundScreen({super.key});

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
  CurrencyTextInputFormatter formatter = CurrencyTextInputFormatter.currency(
    symbol: GlobalVariables.nairaCurrencySymbol,
    decimalDigits: 0,
    minValue: 0,
  );

  @override
  void initState() {
    super.initState();
    view = WithdrawFundView(controller: this);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}
