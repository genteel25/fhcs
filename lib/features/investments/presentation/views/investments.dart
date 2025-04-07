import 'package:fhcs/features/investments/presentation/controllers/contracts/investments.dart';
import 'package:flutter/material.dart';

import 'contracts/investments.dart';

class InvestmentsView extends StatelessWidget
    implements InvestmentsViewContract {
  const InvestmentsView({super.key, required this.controller});
  final InvestmentsControllerContract controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F9),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [],
      ),
    );
  }
}
