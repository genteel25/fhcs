import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:fhcs/features/home/presentation/controllers/withdraw_funds.dart';
import 'package:flutter/material.dart';

abstract class WithdrawFundControllerContract {
  TextEditingController withdrawalAmountController = TextEditingController();
  TextEditingController amountReceivedController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  late WithdrawalAccount withdrawalAccount;

  // late bool isObscure;

  //Methods
  CurrencyTextInputFormatter formatter = CurrencyTextInputFormatter.currency();
  void onContiune();
}
