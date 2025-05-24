import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:fhcs/features/home/presentation/controllers/add_money.dart';
import 'package:flutter/material.dart';

abstract class AddMoneyControllerContract {
  CurrencyTextInputFormatter formatter = CurrencyTextInputFormatter.currency();
  late CurrencyTextInputFormatter savingsFormatter;
  late CurrencyTextInputFormatter investmentFormatter;
  TextEditingController amountController = TextEditingController();
  TextEditingController savingsAmountController = TextEditingController();
  TextEditingController investmentAmountController = TextEditingController();
  late FundingMode mode;
  late String selectedCard;
  late String savingsPercent;
  late String investmentPercent;

  //Methods
  void onDeposit();
  void onVerifyFunding();
  void onSelectCard(String card);
  void payViaCard({required String refId, required String amount});
}
