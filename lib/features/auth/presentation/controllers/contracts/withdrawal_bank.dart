import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/cupertino.dart';

abstract class WithdrawalBankControllerContract {
  String? selectedBank;
  late List<String> banks;
  TextEditingController accountNumberController = TextEditingController();
  TextEditingController accountNameController = TextEditingController();
  TextEditingController sortCodeController = TextEditingController();
  SingleSelectController<String>? bankNameController;
  //Methods
  void setBank(String? value);
}
