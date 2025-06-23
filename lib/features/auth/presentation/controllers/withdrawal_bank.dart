import 'package:flutter/material.dart';

import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fhcs/core/data/bank.dart';
import 'package:fhcs/features/auth/presentation/bloc/auth/auth_cubit.dart';
import 'package:fhcs/features/auth/presentation/bloc/bank_list/bank_list_cubit.dart';

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
  SingleSelectController<BankData>? bankNameController;

  @override
  BankData? selectedBank;

  @override
  List<String> banks = ['UBA', 'First bank', 'GTB', 'Access bank', 'Wema'];

  @override
  void setBank(BankData? value) {
    Future.microtask(() {
      setState(() {
        bankNameController?.value = value;
        selectedBank = value;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    view = WithdrawalBankView(controller: this);
    context.read<BankListCubit>().getBankList();
    bankNameController = SingleSelectController<BankData>(null);
  }

  @override
  void onSetController(BankData value) {
    setState(() {
      bankNameController = SingleSelectController<BankData>(value);
    });
  }

  @override
  void onSubmitBankInfo() {
    final payload = {
      "bank_id": selectedBank?.id ?? 1,
      "account_name": accountNameController.text,
      "account_number": accountNumberController.text,
      "sort_code": sortCodeController.text,
    };
    context.read<AuthCubit>().bankDetail(payload);
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
