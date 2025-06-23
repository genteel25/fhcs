import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_form_field/phone_form_field.dart';

import 'package:fhcs/features/investments/presentation/controllers/contracts/select_vendor.dart';
import 'package:fhcs/features/investments/presentation/views/contracts/select_vendor.dart';
import 'package:fhcs/features/investments/presentation/views/select_vendor.dart';
import 'package:fhcs/features/loans/presentation/bloc/referees/referees_cubit.dart';
import 'package:fhcs/features/loans/presentation/controllers/select_referee.dart';
import 'package:fhcs/features/loans/presentation/controllers/select_witness.dart';

class SelectVendorScreen extends StatefulWidget {
  static const String route = 'select_vendor';
  final Map<String, dynamic> data;
  const SelectVendorScreen({super.key, required this.data});

  @override
  State<SelectVendorScreen> createState() => SelectVendorController();
}

class SelectVendorController extends State<SelectVendorScreen>
    implements SelectVendorControllerContract {
  late SelectVendorViewContract view;
  @override
  TextEditingController sellerNameController = TextEditingController();

  @override
  PhoneController vendorContactController =
      PhoneController(initialValue: PhoneNumber.parse("+234"));

  @override
  TextEditingController sellerContactController = TextEditingController();

  @override
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    view = SelectVendorView(controller: this);
    log("info: ${widget.data}");
    context.read<RefereesCubit>().fetchReferees();
  }

  @override
  void onContinueToReferee() {
    if (formKey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return SelectRefereeScreen(
              amount: {},
              data: {
                ...widget.data,
                "vendor_name": sellerNameController.text,
                "vendor_contact": vendorContactController.value.nsn,
              },
            );
          },
        ),
      );
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}
