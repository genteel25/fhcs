import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paystack_max/flutter_paystack_max.dart';
import 'package:flutter_paystack_plus/flutter_paystack_plus.dart';
import 'package:get_it/get_it.dart';

import 'package:fhcs/core/helpers/contracts/iwidget_helper.dart';
import 'package:fhcs/features/auth/presentation/bloc/verify_membership/verify_membership_cubit.dart';
import 'package:fhcs/features/auth/presentation/controllers/contracts/membership_payment.dart';
import 'package:fhcs/features/auth/presentation/views/contracts/membership_payment.dart';
import 'package:fhcs/features/auth/presentation/views/membership_payment.dart';

class MembershipPaymentScreen extends StatefulWidget {
  const MembershipPaymentScreen({super.key, required this.data});
  final ({String? amount, String? ref}) data;

  @override
  State<MembershipPaymentScreen> createState() => MembershipPaymentController();
}

class MembershipPaymentController extends State<MembershipPaymentScreen>
    implements MembershipPaymentControllerContract {
  late MembershipPaymentViewContract view;

  @override
  void initState() {
    super.initState();
    view = MembershipPaymentView(controller: this);
  }

  @override
  void payViaCard() async {
    log("payment amount: ${PaymentClass().calculatePaymentAmount(double.parse(widget.data.amount ?? '0'))}");
    final request = PaystackTransactionRequest(
      reference: widget.data.ref ?? 'ref',
      secretKey: 'sk_test_36884ad4dfe380a58bd9caa615825fb2ab3c3d4c',
      email: "genteelajagbe@gmail.com",
      amount: PaymentClass()
          .calculatePaymentAmount(double.parse(widget.data.amount ?? '0'))
          .roundToDouble(),
      currency: PaystackCurrency.ngn,
      channel: [
        PaystackPaymentChannel.card,
        // PaystackPaymentChannel.bankTransfer,
      ],
    );

    final initializedTransaction =
        await PaymentService.initializeTransaction(request);
    if (!initializedTransaction.status) {
      GetIt.I
          .get<IWidgetHelper>()
          .showErrorToast(context, message: initializedTransaction.message);

      return;
    }
    final response = await PaymentService.showPaymentModal(context,
            transaction: initializedTransaction,
            // Callback URL must match the one specified on your paystack dashboard,
            callbackUrl: '...')
        .then((_) async {
      return await PaymentService.verifyTransaction(
        paystackSecretKey: 'sk_test_36884ad4dfe380a58bd9caa615825fb2ab3c3d4c',
        initializedTransaction.data?.reference ?? request.reference,
      );
    });
    if (response.data.status == PaystackTransactionStatus.success) {
      context
          .read<VerifyMembershipCubit>()
          .verifyMembershipPayment(response.data.reference);
    }
// PaystackTransactionVerified
//     log("response: ${response}");
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}

class PaymentClass {
  double _calculatePaystackCharge(double amountInNaira) {
    final fee = amountInNaira <= 2500
        ? 0.015 * amountInNaira
        : 0.015 * amountInNaira + 100;

    return fee < 2000 ? fee : 2000;
  }

  double calculatePaymentAmount(double amountInNaira) {
    double low = amountInNaira;
    double high = amountInNaira + 2000; // upper bound based on max fee
    double mid = 0;

    while ((high - low) > 0.01) {
      mid = (low + high) / 2;
      final fee = _calculatePaystackCharge(mid);
      final net = mid - fee;

      if (net < amountInNaira) {
        low = mid;
      } else {
        high = mid;
      }
    }

    return high * 100; // convert to kobo
  }
}
