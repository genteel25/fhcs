import 'package:fhcs/features/home/presentation/controllers/contracts/card_deposit.dart';
import 'package:fhcs/features/home/presentation/views/card_deposit.dart';
import 'package:fhcs/features/home/presentation/views/contracts/card_deposit.dart';
import 'package:flutter/material.dart';

class CardDepositScreen extends StatefulWidget {
  const CardDepositScreen({super.key, required this.amount});
  final String amount;

  @override
  State<CardDepositScreen> createState() => CardDepositController();
}

class CardDepositController extends State<CardDepositScreen>
    implements CardDepositControllerContract {
  late CardDepositViewContract view;
  @override
  TextEditingController cardNumberController = TextEditingController();
  @override
  TextEditingController expiryController = TextEditingController();
  @override
  TextEditingController cvvController = TextEditingController();
  @override
  late String depositAmount;

  @override
  bool saveCardForLater = false;

  @override
  void initState() {
    super.initState();
    view = CardDepositView(controller: this);
    depositAmount = widget.amount;
  }

  @override
  void onSaveCardForLater(bool value) {
    setState(() {
      saveCardForLater = value;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}
