import 'package:flutter/material.dart';

abstract class KycControllerContract {
  TextEditingController monthlyContributionController = TextEditingController();
  TextEditingController percentSavingsController = TextEditingController();
  TextEditingController percentInvestmentController = TextEditingController();
  late String initialSavingsPercent;
  late String initialInvestmentPercent;

  //Methods
  void onChangeSavingPercent(String value);
  void onChangeInvestmentPercent({String? value});
}
