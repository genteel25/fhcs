import 'package:flutter/material.dart';
import 'package:phone_form_field/phone_form_field.dart';

abstract class NextOfKinControllerContract {
  String? selectedNokRelationship;
  late GlobalKey<FormState> formKey;
  TextEditingController nextOfKinController = TextEditingController();
  PhoneController phoneController =
      PhoneController(initialValue: PhoneNumber.parse("+234"));
  TextEditingController officialAddressController = TextEditingController();

  //Methods
  void onSelectNokRelationship(String? value);
  void onContinue();
}
