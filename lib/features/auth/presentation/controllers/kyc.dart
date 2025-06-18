import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:fhcs/core/utils/extensions.dart';
import 'package:fhcs/core/utils/global_variables.dart';
import 'package:fhcs/features/auth/presentation/bloc/monthly_contribution/monthly_contribution_cubit.dart';
import 'package:fhcs/features/auth/presentation/controllers/contracts/kyc.dart';
import 'package:fhcs/features/auth/presentation/views/contracts/kyc.dart';
import 'package:fhcs/features/auth/presentation/views/kyc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
  CurrencyTextInputFormatter formatter = CurrencyTextInputFormatter.currency(
    symbol: GlobalVariables.nairaCurrencySymbol,
    decimalDigits: 0,
    minValue: 0,
    enableNegative: false,
  );

  @override
  String initialSavingsPercent = "0";

  @override
  String initialInvestmentPercent = "0";

  @override
  void initState() {
    super.initState();
    view = KycView(controller: this);
    amountControllerListener();
  }

  @override
  void allocateContribution({
    required double savingPercent,
    required double investmentPercent,
  }) {
    // Ensure savings is between 1% and 50%
    double adjustedSavings = savingPercent.clamp(1, 50);
    
    // Calculate investment to maintain 100% total
    double adjustedInvestment = 100 - adjustedSavings;
    
    // Ensure investment doesn't exceed 99%
    if (adjustedInvestment > 99) {
      adjustedInvestment = 99;
      adjustedSavings = 100 - adjustedInvestment;
    }
    
    // Update the text controllers
    percentSavingsController.text = "${adjustedSavings.toStringAsFixed(0)}%";
    percentInvestmentController.text = "${adjustedInvestment.toStringAsFixed(0)}%";
    
    // Calculate and update the actual amounts
    final amount = monthlyContributionController.text.cleanCheckEmptyCurrencyText;
    initialSavingsPercent = ((amount * adjustedSavings) / 100).toStringAsFixed(0);
    initialInvestmentPercent = ((amount * adjustedInvestment) / 100).toStringAsFixed(0);
    
    setState(() {});
  }

  @override
  void onContinue() {
    final payload = {
      "amount": formatter.getUnformattedValue(),
      "investment_percentage":
          percentInvestmentController.text.cleanCheckEmptyCurrencyText,
    };
    context.read<MonthlyContributionCubit>().setMonthlyContribution(payload);
  }

  void amountControllerListener() {
    monthlyContributionController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    monthlyContributionController
      ..removeListener(amountControllerListener)
      ..dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}
