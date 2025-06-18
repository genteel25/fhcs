// import 'package:flutter/material.dart';

import 'dart:io';

import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';

abstract class NormalLoanControllerContract {
  TextEditingController loanAmountController = TextEditingController();
  TextEditingController loanPurposeController = TextEditingController();
  TextEditingController annualSalaryController = TextEditingController();
  TextEditingController loanTypeController = TextEditingController();
  late SingleSelectController<String> loanDuration;
  CurrencyTextInputFormatter formatter = CurrencyTextInputFormatter.currency();
  CurrencyTextInputFormatter annualSalaryFormatter =
      CurrencyTextInputFormatter.currency();
  File? selectedDocument;
  late bool isNormalLoan;
  late List<String> durations;
  late String selectedDuration;

  //Methods
  void onPickDocument(File? selectedDocs, String? url);
  void onSelectDuation(String? value);
}
