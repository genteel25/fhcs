import 'package:fhcs/features/auth/presentation/controllers/contracts/set_transaction_pin.dart';
import 'package:fhcs/features/auth/presentation/views/contracts/set_transaction_pin.dart';
import 'package:fhcs/features/auth/presentation/views/set_transaction_pin.dart';
import 'package:flutter/material.dart';

class SetTransactionPinScreen extends StatefulWidget {
  static const String route = 'forgot_password';
  const SetTransactionPinScreen({super.key});

  @override
  State<SetTransactionPinScreen> createState() => SetTransactionPinController();
}

class SetTransactionPinController extends State<SetTransactionPinScreen>
    implements SetTransactionPinControllerContract {
  late SetTransactionPinViewContract view;

  @override
  void initState() {
    super.initState();
    view = SetTransactionPinView(controller: this);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}
