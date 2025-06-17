import 'package:fhcs/features/investments/presentation/bloc/investment_tenure/investment_tenure_cubit.dart';
import 'package:fhcs/features/investments/presentation/controllers/contracts/apply_for_investments.dart';
import 'package:fhcs/features/investments/presentation/views/apply_for_investments.dart';
import 'package:fhcs/features/investments/presentation/views/contracts/apply_for_investments.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ApplyForInvestmentsScreen extends StatefulWidget {
  static const String route = 'forgot_password';
  const ApplyForInvestmentsScreen({super.key});

  @override
  State<ApplyForInvestmentsScreen> createState() =>
      ApplyForInvestmentsController();
}

class ApplyForInvestmentsController extends State<ApplyForInvestmentsScreen>
    implements ApplyForInvestmentsControllerContract {
  late ApplyForInvestmentsViewContract view;

  @override
  void initState() {
    super.initState();
    view = ApplyForInvestmentsView(controller: this);
    context.read<InvestmentTenureCubit>().fetchInvestmentTenures();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}
