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
    // Convert percentages to ratios
    final savingsPct = (savingPercent / 100).clamp(0.01, 0.5);
    final investmentPct = (investmentPercent / 100).clamp(0.0, 0.99);

    // Ensure total does not exceed 100%
    final total = savingsPct + investmentPct;
    final adjustedSavings = total > 1 ? savingsPct / total : savingsPct;
    final adjustedInvestment =
        total > 1 ? investmentPct / total : investmentPct;
    percentInvestmentController.text =
        "${(adjustedInvestment * 100).toStringAsFixed(0)}%";
    percentSavingsController.text =
        "${(adjustedSavings * 100).toStringAsFixed(0)}%";

    // Calculate amounts (with rounding)
    final savingsAmount =
        (monthlyContributionController.text.cleanCheckEmptyCurrencyText *
                adjustedSavings)
            .toStringAsFixed(0);
    final investmentAmount =
        (monthlyContributionController.text.cleanCheckEmptyCurrencyText *
                adjustedInvestment)
            .toStringAsFixed(0);

    // Update UI
    initialSavingsPercent = savingsAmount;
    initialInvestmentPercent = investmentAmount;
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
