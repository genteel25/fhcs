import 'package:fhcs/features/loans/presentation/controllers/contracts/select_referee.dart';
import 'package:fhcs/features/loans/presentation/views/contracts/select_referee.dart';
import 'package:fhcs/features/loans/presentation/views/select_referee.dart';
import 'package:flutter/material.dart';

class SelectRefereeScreen extends StatefulWidget {
  static const String route = 'forgot_password';
  const SelectRefereeScreen(
      {super.key, this.isNormalLoan = true, required this.amount});
  final bool isNormalLoan;
  final String amount;

  @override
  State<SelectRefereeScreen> createState() => SelectRefereeController();
}

class SelectRefereeController extends State<SelectRefereeScreen>
    implements SelectRefereeControllerContract {
  late SelectRefereeViewContract view;

  @override
  bool isNormalLoan = true;

  @override
  String? loanAmount;

  @override
  List<Map<String, dynamic>> referees = [
    {
      "id": "1",
      "name": "Ajagbe Quadri",
      "ir_number": "223-4253",
    },
    {
      "id": "2",
      "name": "Ajagbe Quadri",
      "ir_number": "223-4253",
    },
    {
      "id": "3",
      "name": "Ajagbe Quadri",
      "ir_number": "223-4253",
    },
    {
      "id": "4",
      "name": "Ajagbe Quadri",
      "ir_number": "223-4253",
    },
    {
      "id": "5",
      "name": "Ajagbe Quadri",
      "ir_number": "223-4253",
    },
    {
      "id": "6",
      "name": "Ajagbe Quadri",
      "ir_number": "223-4253",
    },
    {
      "id": "7",
      "name": "Ajagbe Quadri",
      "ir_number": "223-4253",
    },
    {
      "id": "8",
      "name": "Ajagbe Quadri",
      "ir_number": "223-4253",
    },
    {
      "id": "9",
      "name": "Ajagbe Quadri",
      "ir_number": "223-4253",
    },
    {
      "id": "10",
      "name": "Ajagbe Quadri",
      "ir_number": "223-4253",
    },
    {
      "id": "11",
      "name": "Ajagbe Quadri",
      "ir_number": "223-4253",
    },
    {
      "id": "12",
      "name": "Ajagbe Quadri",
      "ir_number": "223-4253",
    },
    {
      "id": "13",
      "name": "Ajagbe Quadri",
      "ir_number": "223-4253",
    },
    {
      "id": "14",
      "name": "Ajagbe Quadri",
      "ir_number": "223-4253",
    },
  ];

  @override
  List<Map<String, dynamic>> selectedReferees = [];

  @override
  void initState() {
    super.initState();
    view = SelectRefereeView(controller: this);
    isNormalLoan = widget.isNormalLoan;
    loanAmount = widget.amount;
  }

  @override
  void onSelectReferee(Map<String, dynamic> referee) {
    if (selectedReferees.contains(referee)) {
      setState(() {
        selectedReferees.remove(referee);
      });
    } else {
      setState(() {
        selectedReferees.add(referee);
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
