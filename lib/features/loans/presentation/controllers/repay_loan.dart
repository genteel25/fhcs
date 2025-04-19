import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:fhcs/core/utils/global_variables.dart';
import 'package:fhcs/features/loans/presentation/controllers/contracts/repay_loan.dart';
import 'package:fhcs/features/loans/presentation/views/contracts/repay_loan.dart';
import 'package:fhcs/features/loans/presentation/views/repay_loan.dart';
import 'package:flutter/material.dart';

class RepayLoanScreen extends StatefulWidget {
  static const String route = 'forgot_password';
  const RepayLoanScreen({super.key});

  @override
  State<RepayLoanScreen> createState() => RepayLoanController();
}

class RepayLoanController extends State<RepayLoanScreen>
    implements RepayLoanControllerContract {
  late RepayLoanViewContract view;
  @override
  TextEditingController amountToRepayController = TextEditingController();
  @override
  CurrencyTextInputFormatter formatter = CurrencyTextInputFormatter.currency(
    symbol: GlobalVariables.nairaCurrencySymbol,
    decimalDigits: 0,
    minValue: 0,
  );

  @override
  List<String> repayFrom = ['Savings'];

  @override
  void initState() {
    super.initState();
    view = RepayLoanView(controller: this);
  }

  @override
  void onSelectRepayFrom(String value) {
    repayFrom.clear();
    setState(() {
      repayFrom.add(value);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}
