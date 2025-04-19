import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:fhcs/core/data/bank.dart';
import 'package:flutter/cupertino.dart';

abstract class WithdrawalBankControllerContract {
  BankData? selectedBank;
  late List<String> banks;
  TextEditingController accountNumberController = TextEditingController();
  TextEditingController accountNameController = TextEditingController();
  TextEditingController sortCodeController = TextEditingController();
  SingleSelectController<BankData>? bankNameController;
  //Methods
  void setBank(BankData? value);
  void onSetController(BankData value);
  void onSubmitBankInfo();
}
