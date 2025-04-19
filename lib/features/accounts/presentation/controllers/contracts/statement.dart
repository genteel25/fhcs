import 'package:flutter/material.dart';

abstract class StatementControllerContract {
  TextEditingController accountController = TextEditingController();
  TextEditingController startDateController = TextEditingController();
  TextEditingController endDateController = TextEditingController();
  late List<String> accounts;
  String? selectedAccount;

  //Methods
  void onPickStartDate();
  void onPickEndDate();
  void onSelectAccount(String? value);
}
