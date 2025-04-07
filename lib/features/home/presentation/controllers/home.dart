import 'package:fhcs/features/home/presentation/controllers/contracts/home.dart';
import 'package:fhcs/features/home/presentation/views/contracts/home.dart';
import 'package:fhcs/features/home/presentation/views/home.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String route = 'forgot_password';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeController();
}

class HomeController extends State<HomeScreen>
    implements HomeControllerContract {
  late HomeViewContract view;

  @override
  void initState() {
    super.initState();
    view = HomeView(controller: this);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}
