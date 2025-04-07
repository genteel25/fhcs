import 'package:flutter/material.dart';

abstract class CardDepositControllerContract {
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController expiryController = TextEditingController();
  TextEditingController cvvController = TextEditingController();
  late bool saveCardForLater;
  late String depositAmount;

  // late bool isObscure;

  // Methods
  void onSaveCardForLater(bool value);
  // void onToggleObscure();
}
