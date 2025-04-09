// import 'package:flutter/material.dart';

import 'dart:io';

import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';

abstract class NormalLoanControllerContract {
  TextEditingController loanAmountController = TextEditingController();
  TextEditingController loanPurposeController = TextEditingController();
  TextEditingController annualSalaryController = TextEditingController();
  TextEditingController loanTypeController = TextEditingController();
  CurrencyTextInputFormatter formatter = CurrencyTextInputFormatter.currency();
  File? selectedDocument;
  late bool isNormalLoan;

  //Methods
  void onPickDocument(File? selectedDocs);
}
