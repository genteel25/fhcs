import 'package:flutter/material.dart';

import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';

abstract class RepayInvestmentControllerContract {
  TextEditingController amountToRepayController = TextEditingController();
  CurrencyTextInputFormatter formatter = CurrencyTextInputFormatter.currency();
  late List<String> repayFrom;

  //Methods
  void onSelectRepayFrom(String value);
  void onRepayLoan();
}
