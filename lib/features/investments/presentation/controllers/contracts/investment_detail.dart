// import 'package:flutter/material.dart';

import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:fhcs/core/data/investment_type.dart';
import 'package:flutter/material.dart';

abstract class InvestmentDetailControllerContract {
  late SingleSelectController<InvestmentTypeData> investmentType;
  TextEditingController amountController = TextEditingController();
  TextEditingController repaymentAmountController = TextEditingController();
  TextEditingController investmentPurposeController = TextEditingController();
  late CurrencyTextInputFormatter formatter;
  late CurrencyTextInputFormatter repaymentAmountformatter;
  late String selectedInvestmentDuration;
  late GlobalKey<FormState> formKey;
  void selectInvestmentDuration(String value, String percentage, String id);

  //Methods
  void onAddSeller();
}
