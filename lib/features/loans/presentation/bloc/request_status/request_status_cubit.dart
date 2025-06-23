import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:fhcs/features/loans/repository/contract/iloan_repository.dart';

part 'request_status_state.dart';
part 'request_status_cubit.freezed.dart';

class RequestStatusCubit extends Cubit<RequestStatusState> {
  final ILoanRepository repository;
  RequestStatusCubit({required this.repository})
      : super(RequestStatusState.initial());

  Future<void> changeRequestStatus(String requestId,
      {required Map<String, dynamic> payload}) async {
    emit(RequestStatusState.loading());
    try {
      final response =
          await repository.changeRequestStatus(requestId, payload: payload);
      response.fold(
          (l) => emit(RequestStatusState.failure(error: l.failureMessage())),
          (r) {
        emit(RequestStatusState.success(response: r.data as String));
      });
    } catch (e) {
      emit(RequestStatusState.failure(error: e.toString()));
    }
  }
}
