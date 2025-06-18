import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';

abstract class KycControllerContract {
  TextEditingController monthlyContributionController = TextEditingController();
  TextEditingController percentSavingsController = TextEditingController();
  TextEditingController percentInvestmentController = TextEditingController();
  late String initialSavingsPercent;
  late String initialInvestmentPercent;
  late CurrencyTextInputFormatter formatter;

  //Methods
  void allocateContribution({
    required double savingPercent, // From savings slider (1-50)
    required double investmentPercent, // From investment slider (1-100)
  });

  void onContinue();
}
