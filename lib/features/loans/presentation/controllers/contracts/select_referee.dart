// import 'package:flutter/material.dart';

abstract class SelectRefereeControllerContract {
  late List<Map<String, dynamic>> referees;
  late List<Map<String, dynamic>> selectedReferees;
  late bool isNormalLoan;
  String? loanAmount;

  //Methods
  void onSelectReferee(Map<String, dynamic> referee);
}
