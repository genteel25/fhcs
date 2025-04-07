import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';

abstract class WithdrawFundControllerContract {
  TextEditingController withdrawalAmountController = TextEditingController();
  TextEditingController amountReceivedController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  // late bool isObscure;

  //Methods
  CurrencyTextInputFormatter formatter = CurrencyTextInputFormatter.currency();
}
