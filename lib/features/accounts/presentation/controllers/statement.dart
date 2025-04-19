import 'package:fhcs/core/utils/extensions.dart';
import 'package:fhcs/features/accounts/presentation/controllers/contracts/statement.dart';
import 'package:fhcs/features/accounts/presentation/views/contracts/statement.dart';
import 'package:fhcs/features/accounts/presentation/views/statement.dart';
import 'package:flutter/material.dart';

class StatementScreen extends StatefulWidget {
  static const String route = 'forgot_password';
  const StatementScreen({super.key});

  @override
  State<StatementScreen> createState() => StatementController();
}

class StatementController extends State<StatementScreen>
    implements StatementControllerContract {
  late StatementViewContract view;
  @override
  TextEditingController accountController = TextEditingController();

  @override
  TextEditingController startDateController = TextEditingController();

  @override
  TextEditingController endDateController = TextEditingController();

  @override
  List<String> accounts = ['Investment', 'Loan', 'Saving'];

  @override
  String? selectedAccount;

  @override
  void initState() {
    super.initState();
    view = StatementView(controller: this);
  }

  @override
  void onPickStartDate() async {
    DateTime? result = await showDatePicker(
      context: context,
      firstDate: DateTime.now().subtract(Duration(days: 365 * 5)),
      lastDate: DateTime.now(),
      currentDate: DateTime.now(),
      initialDate: DateTime.now(),
    );
    if (result != null) {
      setState(() {
        startDateController.text = result.pickerDate;
      });
    }
  }

  @override
  void onPickEndDate() async {
    DateTime? result = await showDatePicker(
      context: context,
      firstDate: DateTime.now().subtract(Duration(days: 365 * 5)),
      lastDate: DateTime.now(),
      currentDate: DateTime.now(),
      initialDate: DateTime.now(),
    );
    if (result != null) {
      setState(() {
        endDateController.text = result.pickerDate;
      });
    }
  }

  @override
  void onSelectAccount(String? value) {
    setState(() {
      selectedAccount = value;
    });
  }

  @override
  void dispose() {
    accountController.dispose();
    startDateController.dispose();
    endDateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}
