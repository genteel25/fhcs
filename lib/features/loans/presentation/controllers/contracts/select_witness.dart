// import 'package:flutter/material.dart';

import 'package:fhcs/core/data/referee.dart';

abstract class SelectWitnessControllerContract {
  late List<RefereeData> selectedReferees;
  late Map<String, dynamic> data;
  late bool isNormalLoan;
  String? loanAmount;

  //Methods
  void payViaCard({required String refId, required String amount});
  void onSelectReferee(RefereeData referee);
  void onVerifyFunding();
  void onRequestInvesstment();
}
