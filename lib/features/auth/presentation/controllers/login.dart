import 'package:fhcs/features/auth/presentation/controllers/contracts/login.dart';
import 'package:fhcs/features/auth/presentation/views/contracts/login.dart';
import 'package:fhcs/features/auth/presentation/views/login.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String route = 'forgot_password';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => LoginController();
}

class LoginController extends State<LoginScreen>
    implements LoginControllerContract {
  late LoginViewContract view;
  @override
  TextEditingController emailController = TextEditingController();
  @override
  TextEditingController passwordController = TextEditingController();

  @override
  bool isObscure = false;

  @override
  void initState() {
    super.initState();
    view = LoginView(controller: this);
  }

  @override
  void onToggleObscure() {
    setState(() {
      isObscure = !isObscure;
    });
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}
