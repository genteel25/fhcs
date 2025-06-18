import 'dart:io';

import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:fhcs/core/utils/global_variables.dart';
import 'package:fhcs/features/loans/presentation/bloc/referees/referees_cubit.dart';
import 'package:fhcs/features/loans/presentation/controllers/contracts/normal_loan.dart';
import 'package:fhcs/features/loans/presentation/views/contracts/normal_loan.dart';
import 'package:fhcs/features/loans/presentation/views/normal_loan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
  CurrencyTextInputFormatter annualSalaryFormatter =
      CurrencyTextInputFormatter.currency(
    symbol: GlobalVariables.nairaCurrencySymbol,
    decimalDigits: 0,
    minValue: 0,
  );

  @override
  late SingleSelectController<String> loanDuration;

  @override
  String selectedDuration = "";

  @override
  File? selectedDocument;

  @override
  bool isNormalLoan = true;

  // @override
  String? pickedImageUrl;

  @override
  List<String> durations = [
    '1 month',
    '2 months',
    '3 months',
    '4 months',
    '6 months',
    '7 months',
    '8 month',
    '10 months',
    '11 months',
    '12 months',
    '13 months',
    '14 months',
    '15 months',
    '16 months',
    '17 months',
    '18 months',
    '19 months',
    '20 months',
    '21 months',
    '22 months',
    '23 months',
    '24 months',
  ];

  @override
  void initState() {
    super.initState();
    view = NormalLoanView(controller: this);
    isNormalLoan = widget.isNormalLoan;
    loanDuration = SingleSelectController<String>(durations.first);
    context.read<RefereesCubit>().fetchReferees();
    loanAmountControllerListener();
    onSelectDuation(durations.first);
  }

  @override
  void onSelectDuation(String? value) {
    selectedDuration = value!;
  }

  @override
  void onPickDocument(File? selectedDocs, String? url) {
    setState(() {
      selectedDocument = selectedDocs;
      pickedImageUrl = url;
    });
  }

  // @override
  void loanAmountControllerListener() {
    loanAmountController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    loanAmountController
      ..removeListener(loanAmountControllerListener)
      ..dispose();
    loanPurposeController.dispose();
    // loanAmountController.dispose();
    annualSalaryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}
