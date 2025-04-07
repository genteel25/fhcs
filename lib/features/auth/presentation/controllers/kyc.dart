import 'dart:developer';

import 'package:fhcs/features/auth/presentation/controllers/contracts/kyc.dart';
import 'package:fhcs/features/auth/presentation/views/contracts/kyc.dart';
import 'package:fhcs/features/auth/presentation/views/kyc.dart';
import 'package:flutter/material.dart';

class KycScreen extends StatefulWidget {
  static const String route = 'forgot_password';
  const KycScreen({super.key});

  @override
  State<KycScreen> createState() => KycController();
}

class KycController extends State<KycScreen> implements KycControllerContract {
  late KycViewContract view;
  @override
  TextEditingController monthlyContributionController = TextEditingController();
  @override
  TextEditingController percentSavingsController = TextEditingController();
  @override
  TextEditingController percentInvestmentController = TextEditingController();

  @override
  String initialSavingsPercent = "0";

  @override
  String initialInvestmentPercent = "0";

  @override
  void initState() {
    super.initState();
    view = KycView(controller: this);
    // percentSavingsController.text = "0%";
    // percentInvestmentController.text = "0%";
  }

  @override
  void onChangeSavingPercent(String value) {
    log("math value: ${double.parse(initialSavingsPercent) + double.parse(initialInvestmentPercent) > 100}");
    setState(() {
      initialSavingsPercent = ((int.parse(value) *
                  int.parse(monthlyContributionController.text.isEmpty
                      ? "0"
                      : monthlyContributionController.text)) /
              100)
          .toString();
      percentSavingsController.text = "$value%";
    });
    onChangeInvestmentPercent();
  }

  @override
  void onChangeInvestmentPercent({String? value}) {
    if (value != null) {
      setState(() {
        initialInvestmentPercent = ((int.parse(value) *
                    int.parse(monthlyContributionController.text.isEmpty
                        ? "0"
                        : monthlyContributionController.text)) /
                100)
            .toString();
        percentInvestmentController.text = "$value%";
      });
    } else {
      setState(() {
        initialInvestmentPercent = (100 -
                int.parse(percentInvestmentController.text.replaceAll("%", "")))
            .toString();
        percentInvestmentController.text =
            "${100 - int.parse(percentSavingsController.text.replaceAll("%", ""))}%";
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}
