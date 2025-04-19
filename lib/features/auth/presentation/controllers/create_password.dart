import 'package:fhcs/features/auth/presentation/bloc/auth/auth_cubit.dart';
import 'package:fhcs/features/auth/presentation/controllers/contracts/create_password.dart';
import 'package:fhcs/features/auth/presentation/views/contracts/create_password.dart';
import 'package:fhcs/features/auth/presentation/views/create_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreatePasswordScreen extends StatefulWidget {
  const CreatePasswordScreen({super.key});

  @override
  State<CreatePasswordScreen> createState() => CreatePasswordController();
}

class CreatePasswordController extends State<CreatePasswordScreen>
    implements CreatePasswordControllerContract {
  late CreatePasswordViewContract view;
  @override
  TextEditingController passwordController = TextEditingController();

  @override
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  bool isObscure = false;

  @override
  bool hasMinCharacters = false;

  @override
  bool hasLowercaseLetter = false;

  @override
  bool hasUppercaseLetter = false;

  @override
  bool hasMinNumber = false;

  @override
  void initState() {
    super.initState();
    view = CreatePasswordView(controller: this);
    onPasswordListener();
  }

  @override
  void onPasswordListener() {
    passwordController.addListener(() {
      RegExp passwordRegex = RegExp(r'^.{8,}$');
      RegExp lowercaseRegex = RegExp(r'^(?=.*[a-z]).*$');
      RegExp uppercaseRegex = RegExp(r'^(?=.*[A-Z]).*$');
      RegExp numberRegex = RegExp(r'^(?=.*\d).*$');
      if (passwordRegex.hasMatch(passwordController.text)) {
        setState(() {
          hasMinCharacters = true;
        });
      } else {
        setState(() {
          hasMinCharacters = false;
        });
      }
      if (lowercaseRegex.hasMatch(passwordController.text)) {
        setState(() {
          hasLowercaseLetter = true;
        });
      } else {
        setState(() {
          hasLowercaseLetter = false;
        });
      }
      if (uppercaseRegex.hasMatch(passwordController.text)) {
        setState(() {
          hasUppercaseLetter = true;
        });
      } else {
        setState(() {
          hasUppercaseLetter = false;
        });
      }
      if (numberRegex.hasMatch(passwordController.text)) {
        setState(() {
          hasMinNumber = true;
        });
      } else {
        setState(() {
          hasMinNumber = false;
        });
      }
    });
  }

  @override
  void onToggleObscure() {
    setState(() {
      isObscure = !isObscure;
    });
  }

  @override 
  void onSubmitPassword() {
    final payload = {
      "password": passwordController.text,
      "confirm_password": confirmPasswordController.text,
    };
    context.read<AuthCubit>().setPassword(payload);
  }

  @override
  @override
  void dispose() {
    passwordController
      ..removeListener(onPasswordListener)
      ..dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}
