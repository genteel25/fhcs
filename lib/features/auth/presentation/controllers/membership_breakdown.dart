import 'package:fhcs/core/data/payment.dart';
import 'package:fhcs/features/auth/presentation/controllers/contracts/membership_breakdown.dart';
import 'package:fhcs/features/auth/presentation/views/contracts/membership_breakdown.dart';
import 'package:fhcs/features/auth/presentation/views/membership_breakdown.dart';
import 'package:flutter/material.dart';

class MembershipBreakdownScreen extends StatefulWidget {
  static const String route = 'forgot_password';
  const MembershipBreakdownScreen({super.key, required this.paymentInfo});
  final PaymentInfoData paymentInfo;

  @override
  State<MembershipBreakdownScreen> createState() =>
      MembershipBreakdownController();
}

class MembershipBreakdownController extends State<MembershipBreakdownScreen>
    implements MembershipBreakdownControllerContract {
  late MembershipBreakdownViewContract view;

  @override
  PaymentInfoData? paymentInfo;

  @override
  void initState() {
    super.initState();
    view = MembershipBreakdownView(controller: this);
    paymentInfo = widget.paymentInfo;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}
