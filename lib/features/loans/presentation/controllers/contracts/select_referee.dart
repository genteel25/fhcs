// import 'package:flutter/material.dart';

import 'package:fhcs/core/data/referee.dart';

abstract class SelectRefereeControllerContract {
  late List<RefereeData> selectedReferees;
  late bool isNormalLoan;
  String? loanAmount;
  Map<String, dynamic>? investmentData;

  //Methods
  void payViaCard({required String refId, required String amount});
  void onSelectReferee(RefereeData referee);
  void onVerifyFunding();
  void onSelectWitness();
  void onRequestLoan();
}
