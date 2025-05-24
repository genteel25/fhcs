import 'package:fhcs/features/home/presentation/controllers/contracts/profile.dart';
import 'package:fhcs/features/home/presentation/views/contracts/profile.dart';
import 'package:fhcs/features/home/presentation/views/profile.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  static const String route = 'forgot_password';
  const ProfileScreen({super.key, required this.fullName});
  final String fullName;

  @override
  State<ProfileScreen> createState() => ProfileController();
}

class ProfileController extends State<ProfileScreen>
    implements ProfileControllerContract {
  late ProfileViewContract view;

  @override
  String fullName = '';

  @override
  bool isBiometricEnabled = false;

  @override
  void initState() {
    super.initState();
    view = ProfileView(controller: this);
    fullName = widget.fullName;
  }

  @override
  void toggleBiometric(bool value) {
    setState(() {
      isBiometricEnabled = value;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}
