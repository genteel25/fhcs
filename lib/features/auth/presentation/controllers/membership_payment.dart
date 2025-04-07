import 'package:fhcs/features/auth/presentation/controllers/contracts/membership_payment.dart';
import 'package:fhcs/features/auth/presentation/views/contracts/membership_payment.dart';
import 'package:fhcs/features/auth/presentation/views/membership_payment.dart';
import 'package:flutter/material.dart';

class MembershipPaymentScreen extends StatefulWidget {
  const MembershipPaymentScreen({super.key});

  @override
  State<MembershipPaymentScreen> createState() => MembershipPaymentController();
}

class MembershipPaymentController extends State<MembershipPaymentScreen>
    implements MembershipPaymentControllerContract {
  late MembershipPaymentViewContract view;

  @override
  void initState() {
    super.initState();
    view = MembershipPaymentView(controller: this);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}
