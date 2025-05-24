import 'dart:io';

import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:fhcs/core/utils/global_variables.dart';
import 'package:fhcs/features/loans/presentation/controllers/contracts/normal_loan.dart';
import 'package:fhcs/features/loans/presentation/views/contracts/normal_loan.dart';
import 'package:fhcs/features/loans/presentation/views/normal_loan.dart';
import 'package:flutter/material.dart';

class NormalLoanScreen extends StatefulWidget {
  static const String route = 'forgot_password';
  const NormalLoanScreen({super.key, this.isNormalLoan = true});
  final bool isNormalLoan;

  @override
  State<NormalLoanScreen> createState() => NormalLoanController();
}

class NormalLoanController extends State<NormalLoanScreen>
    implements NormalLoanControllerContract {
  late NormalLoanViewContract view;
  @override
  TextEditingController loanAmountController = TextEditingController();
  @override
  TextEditingController loanPurposeController = TextEditingController();
  @override
  TextEditingController annualSalaryController = TextEditingController();
  @override
  TextEditingController loanTypeController = TextEditingController();

  @override
  CurrencyTextInputFormatter formatter = CurrencyTextInputFormatter.currency(
    symbol: GlobalVariables.nairaCurrencySymbol,
    decimalDigits: 0,
    minValue: 0,
  );

  @override
  late SingleSelectController loanDuration;

  String selectedDuration = "";

  @override
  File? selectedDocument;

  @override
  bool isNormalLoan = true;

  @override
  List<String> durations = [
    '1 month',
    '3 months',
    '4 months',
    '6 months',
    '1 year',
    '2 years',
    '3 years'
  ];

  @override
  void initState() {
    super.initState();
    view = NormalLoanView(controller: this);
    isNormalLoan = widget.isNormalLoan;
    loanDuration = SingleSelectController(durations.first);
  }

  @override
  void onSelectDuation(String value) {
    selectedDuration = value;
  }

  @override
  void onPickDocument(File? selectedDocs) {
    setState(() {
      selectedDocument = selectedDocs;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}
