// import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import 'package:phone_form_field/phone_form_field.dart';

abstract class SelectVendorControllerContract {
  TextEditingController sellerNameController = TextEditingController();
  TextEditingController sellerContactController = TextEditingController();
  late GlobalKey<FormState> formKey;
  late PhoneController vendorContactController;

  //Methods
  void onContinueToReferee();
}
