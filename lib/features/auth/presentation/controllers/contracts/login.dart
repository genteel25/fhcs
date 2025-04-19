import 'package:flutter/material.dart';

abstract class LoginControllerContract {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  late bool isObscure;

  //Methods
  void onToggleObscure();
  void onLogin();
}
