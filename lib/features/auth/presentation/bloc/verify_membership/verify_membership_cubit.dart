import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:fhcs/core/data/payment.dart';
import 'package:fhcs/features/auth/repository/contract/iauth_repository.dart';

part 'verify_membership_state.dart';
part 'verify_membership_cubit.freezed.dart';

class VerifyMembershipCubit extends Cubit<VerifyMembershipState> {
  final IAuthRepository repository;
  VerifyMembershipCubit({required this.repository})
      : super(VerifyMembershipState.initial());

  Future<void> verifyMembershipPayment(String refNo) async {
    emit(VerifyMembershipState.loading());
    try {
      final response = await repository.verifyMembershipPayment(refNo);
      response.fold(
        (failure) {
          emit(VerifyMembershipState.failure(error: failure.failureMessage()));
        },
        (data) {
          emit(VerifyMembershipState.success(
              response: data.data as PaymentInfoData));
        },
      );
    } catch (e) {
      emit(VerifyMembershipState.failure(error: e.toString()));
    }
  }
}
