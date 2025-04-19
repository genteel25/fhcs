import 'package:flutter/material.dart';

abstract class CreatePasswordControllerContract {
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  late bool isObscure;
  late bool hasMinCharacters;
  late bool hasLowercaseLetter;
  late bool hasUppercaseLetter;
  late bool hasMinNumber;

  //Methods
  void onToggleObscure();
  void onPasswordListener();
  void onSubmitPassword();
}
