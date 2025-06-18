import 'package:flutter/material.dart';

import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';

import 'package:fhcs/features/home/presentation/controllers/add_money.dart';

abstract class AddMoneyControllerContract {
  CurrencyTextInputFormatter formatter = CurrencyTextInputFormatter.currency();
  late CurrencyTextInputFormatter savingsFormatter;
  late CurrencyTextInputFormatter investmentFormatter;
  TextEditingController amountController = TextEditingController();
  TextEditingController savingsAmountController = TextEditingController();
  TextEditingController investmentAmountController = TextEditingController();
  late FundingMode mode;
  late bool useDefaultMD ;
  late String selectedCard;
  late String savingsPercent;
  late String investmentPercent;

  TextEditingController percentSavingsController = TextEditingController();
  TextEditingController percentInvestmentController = TextEditingController();
  late String initialSavingsPercent;
  late String initialInvestmentPercent;

  //Methods
  void onDeposit();
  void onVerifyFunding();
  void toggleDefaultMD();
  void onSelectCard(String card);
  void payViaCard({required String refId, required String amount});

   void allocateContribution({
    required double savingPercent, // From savings slider (1-50)
    required double investmentPercent, // From investment slider (1-100)
  });
}
