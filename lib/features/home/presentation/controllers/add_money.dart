import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:fhcs/core/utils/app_constant.dart';
import 'package:fhcs/core/utils/global_variables.dart';
import 'package:fhcs/features/home/presentation/controllers/contracts/add_money.dart';
import 'package:fhcs/features/home/presentation/views/add_money.dart';
import 'package:fhcs/features/home/presentation/views/contracts/add_money.dart';
import 'package:flutter/material.dart';

enum FundingMode {
  bankTransfer,
  card,
}

class AddMoneyScreen extends StatefulWidget {
  static const String route = 'forgot_password';
  const AddMoneyScreen({super.key, required this.data});
  final ({FundingMode mode, bool? hasCreditCard}) data;

  @override
  State<AddMoneyScreen> createState() => AddMoneyController();
}

class AddMoneyController extends State<AddMoneyScreen>
    implements AddMoneyControllerContract {
  late AddMoneyViewContract view;
  @override
  TextEditingController amountController = TextEditingController();
  @override
  CurrencyTextInputFormatter formatter = CurrencyTextInputFormatter.currency(
    symbol: GlobalVariables.nairaCurrencySymbol,
    decimalDigits: 0,
    minValue: 0,
  );

  @override
  late FundingMode mode;
  @override
  bool? hasCreditCard;

  @override
  String selectedCard = creditCards.first;

  @override
  void initState() {
    super.initState();
    view = AddMoneyView(controller: this);
    mode = widget.data.mode;
    hasCreditCard = widget.data.hasCreditCard;
  }

  @override
  void onSelectCard(String card) {
    setState(() {
      selectedCard = card;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}
