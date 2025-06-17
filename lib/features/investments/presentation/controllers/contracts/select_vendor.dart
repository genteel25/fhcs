// import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

abstract class SelectVendorControllerContract {
  TextEditingController sellerNameController = TextEditingController();
  TextEditingController sellerContactController = TextEditingController();
  late GlobalKey<FormState> formKey;

  //Methods
  void onContinueToReferee();
}
