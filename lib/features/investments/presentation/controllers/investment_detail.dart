import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:awesome_extensions/awesome_extensions.dart' hide NavigatorExt;
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:fhcs/core/data/investment_type.dart';
import 'package:fhcs/core/router/route_constants.dart';
import 'package:fhcs/core/utils/extensions.dart';
import 'package:fhcs/core/utils/global_variables.dart';
import 'package:fhcs/features/home/presentation/bloc/dashboard/dashboard_cubit.dart';
import 'package:fhcs/features/investments/presentation/controllers/contracts/investment_detail.dart';
import 'package:fhcs/features/investments/presentation/controllers/select_vendor.dart';
import 'package:fhcs/features/investments/presentation/views/contracts/investment_detail.dart';
import 'package:fhcs/features/investments/presentation/views/investment_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class InvestmentDetailScreen extends StatefulWidget {
  static const String route = 'forgot_password';
  const InvestmentDetailScreen({super.key, this.investmentType});
  final InvestmentTypeData? investmentType;

  @override
  State<InvestmentDetailScreen> createState() => InvestmentDetailController();
}

class InvestmentDetailController extends State<InvestmentDetailScreen>
    implements InvestmentDetailControllerContract {
  late InvestmentDetailViewContract view;

  @override
  SingleSelectController<InvestmentTypeData> investmentType =
      SingleSelectController(InvestmentTypeData(name: ""));

  @override
  TextEditingController repaymentAmountController = TextEditingController();

  @override
  TextEditingController investmentPurposeController = TextEditingController();
  @override
  TextEditingController amountController = TextEditingController();

  @override
  String selectedInvestmentDuration = "";

  String selectedInvestmentPercentage = "";

  String selectedInvestmentDurationId = "";

  @override
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  CurrencyTextInputFormatter formatter = CurrencyTextInputFormatter.currency(
      symbol: GlobalVariables.nairaCurrencySymbol,
      decimalDigits: 0,
      minValue: 0,
      maxValue: GlobalVariables.rootNavigatorKey.currentContext!
          .read<DashboardCubit>()
          .state
          .whenOrNull(
            success: (response) => (response.totalInvestment ?? 0) * 3,
          ));
  @override
  CurrencyTextInputFormatter repaymentAmountformatter =
      CurrencyTextInputFormatter.currency(
    symbol: GlobalVariables.nairaCurrencySymbol,
    decimalDigits: 0,
    minValue: 0,
  );

  @override
  void initState() {
    super.initState();
    view = InvestmentDetailView(controller: this);
    investmentType = SingleSelectController(widget.investmentType);
    setAmountToRepay();
  }

  @override
  void selectInvestmentDuration(String value, String percentage, String id) {
    setState(() {
      selectedInvestmentDuration = value;
      selectedInvestmentDurationId = id;
      selectedInvestmentPercentage = percentage;
    });
    setNormalAmountToRepay();
  }

  void setAmountToRepay() {
    amountController.addListener(() {
      if (selectedInvestmentPercentage.isNotEmpty) {
        setState(() {
          repaymentAmountController.text =
              (((int.parse(selectedInvestmentPercentage) / 100) *
                          formatter.getUnformattedValue()) +
                      formatter.getUnformattedValue())
                  .toStringAsFixed(0)
                  .formatInputCurrency;
        });
      }
    });
  }

  void setNormalAmountToRepay() {
    if (amountController.text.isNotEmpty) {
      setState(() {
        repaymentAmountController.text =
            (((int.parse(selectedInvestmentPercentage) / 100) *
                        formatter.getUnformattedValue()) +
                    formatter.getUnformattedValue())
                .toStringAsFixed(0)
                .formatInputCurrency;
      });
    }
  }

  @override
  void onAddSeller() {
    if (formKey.currentState!.validate()) {
      final payload = {
        "investment_type_id": widget.investmentType,
        "amount": formatter.getUnformattedValue(),
        "tenure_id": selectedInvestmentDurationId,
        "description": investmentPurposeController.text,
      };
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return SelectVendorScreen(data: payload);
      }));
    }
  }

  @override
  void dispose() {
    amountController
      ..removeListener(setAmountToRepay)
      ..dispose();
    investmentType.dispose();
    repaymentAmountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}
