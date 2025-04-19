import 'package:fhcs/features/loans/presentation/controllers/contracts/referee_request.dart';
import 'package:fhcs/features/loans/presentation/views/contracts/referee_request.dart';
import 'package:fhcs/features/loans/presentation/views/referee_request.dart';
import 'package:flutter/material.dart';

class RefereeRequestScreen extends StatefulWidget {
  static const String route = 'forgot_password';
  const RefereeRequestScreen({super.key});

  @override
  State<RefereeRequestScreen> createState() => RefereeRequestController();
}

class RefereeRequestController extends State<RefereeRequestScreen>
    implements RefereeRequestControllerContract {
  late RefereeRequestViewContract view;

  @override
  void initState() {
    super.initState();
    view = RefereeRequestView(controller: this);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}
