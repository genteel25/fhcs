import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fhcs/features/loans/presentation/bloc/referee_request/referee_request_cubit.dart';
import 'package:fhcs/features/loans/presentation/bloc/request_status/request_status_cubit.dart';
import 'package:fhcs/features/loans/presentation/controllers/contracts/referee_request.dart';
import 'package:fhcs/features/loans/presentation/views/contracts/referee_request.dart';
import 'package:fhcs/features/loans/presentation/views/referee_request.dart';

class RefereeRequestScreen extends StatefulWidget {
  static const String route = 'forgot_password';
  const RefereeRequestScreen({super.key, this.isInvestment = false});
  final bool isInvestment;

  @override
  State<RefereeRequestScreen> createState() => RefereeRequestController();
}

class RefereeRequestController extends State<RefereeRequestScreen>
    implements RefereeRequestControllerContract {
  late RefereeRequestViewContract view;
  @override
  late bool isInvestment;

  @override
  void initState() {
    super.initState();
    view = RefereeRequestView(controller: this);
    isInvestment = widget.isInvestment;
  }

  @override
  void onApproveRequest(String requestId) {
    final payload = {"status": "Approve"};

    context
        .read<RequestStatusCubit>()
        .changeRequestStatus(requestId, payload: payload);
  }

  @override
  void onRejectRequest(String requestId) {
    final payload = {"status": "Reject"};

    context
        .read<RequestStatusCubit>()
        .changeRequestStatus(requestId, payload: payload);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}
