import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:paystack_for_flutter/paystack_for_flutter.dart';
import 'package:phone_form_field/phone_form_field.dart';
import 'package:fhcs/features/auth/presentation/bloc/auth/auth_cubit.dart';
import 'package:fhcs/features/auth/presentation/views/contracts/next_of_kin.dart';
import 'package:fhcs/features/auth/presentation/views/next_of_kin.dart';

import 'contracts/next_of_kin.dart';

class NextOfKinScreen extends StatefulWidget {
  static const String route = 'forgot_password';
  const NextOfKinScreen({super.key});

  @override
  State<NextOfKinScreen> createState() => NextOfKinController();
}

class NextOfKinController extends State<NextOfKinScreen>
    implements NextOfKinControllerContract {
  late NextOfKinViewContract view;

  @override
  String? selectedNokRelationship;

  @override
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  TextEditingController nextOfKinController = TextEditingController();

  @override
  PhoneController phoneController =
      PhoneController(initialValue: PhoneNumber.parse("+234"));
  @override
  TextEditingController officialAddressController = TextEditingController();
  @override
  void initState() {
    super.initState();
    view = NextOfKinView(controller: this);
  }

  @override
  void onSelectNokRelationship(String? value) {
    Future.microtask(() {
      setState(() {
        selectedNokRelationship = value;
      });
    });
  }

  @override
  void onContinue() {
    if (formKey.currentState?.validate() ?? false) {
      final payload = {
        "primary_nok": {
          "name": nextOfKinController.text,
          "relationship": selectedNokRelationship,
          "phone_number": phoneController.value.nsn,
          "address": officialAddressController.text,
        }
      };
      context.read<AuthCubit>().nokDetail(payload);
    }
  }

  @override
  void dispose() {
    nextOfKinController.dispose();
    phoneController.dispose();
    officialAddressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}
