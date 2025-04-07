import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';

import '../views/contracts/withdrawal_bank.dart';
import '../views/withdrawal_bank.dart';
import 'contracts/withdrawal_bank.dart';

class WithdrawalBankScreen extends StatefulWidget {
  static const String route = 'forgot_password';
  const WithdrawalBankScreen({super.key});

  @override
  State<WithdrawalBankScreen> createState() => WithdrawalBankController();
}

class WithdrawalBankController extends State<WithdrawalBankScreen>
    implements WithdrawalBankControllerContract {
  late WithdrawalBankViewContract view;

  @override
  TextEditingController accountNumberController = TextEditingController();
  @override
  TextEditingController accountNameController = TextEditingController();
  @override
  TextEditingController sortCodeController = TextEditingController();

  @override
  SingleSelectController<String>? bankNameController;

  @override
  String? selectedBank;

  @override
  List<String> banks = ['UBA', 'First bank', 'GTB', 'Access bank', 'Wema'];

  @override
  void setBank(String? value) {
    Future.microtask(() {
      setState(() {
        bankNameController?.value = value;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    view = WithdrawalBankView(controller: this);
    bankNameController = SingleSelectController<String>(banks.first);
  }

  @override
  void dispose() {
    bankNameController?.dispose();
    accountNameController.dispose();
    accountNumberController.dispose();
    sortCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}
