import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';

abstract class RepayLoanControllerContract {
  TextEditingController amountToRepayController = TextEditingController();
  CurrencyTextInputFormatter formatter = CurrencyTextInputFormatter.currency();
  late List<String> repayFrom;

  //Methods
  void onSelectRepayFrom(String value);
}
