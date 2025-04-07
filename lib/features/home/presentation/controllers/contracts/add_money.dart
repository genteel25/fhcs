import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:fhcs/features/home/presentation/controllers/add_money.dart';
import 'package:flutter/material.dart';

abstract class AddMoneyControllerContract {
  CurrencyTextInputFormatter formatter = CurrencyTextInputFormatter.currency();
  TextEditingController amountController = TextEditingController();
  late FundingMode mode;
  late String selectedCard;
  bool? hasCreditCard;

  //Methods
  void onSelectCard(String card);
}
