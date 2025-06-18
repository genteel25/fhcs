import 'package:bloc/bloc.dart';
import 'package:fhcs/core/data/payment.dart';
import 'package:fhcs/features/loans/repository/contract/iloan_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'loan_request_state.dart';
part 'loan_request_cubit.freezed.dart';

class LoanRequestCubit extends Cubit<LoanRequestState> {
  final ILoanRepository loanRepository;
  LoanRequestCubit({required this.loanRepository})
      : super(LoanRequestState.initial());

  Future<void> requestLoan(Map<String, dynamic> payload) async {
    emit(LoanRequestState.loading());
    final response = await loanRepository.loanRequest(payload);
    response.fold(
        (l) => emit(LoanRequestState.failure(error: l.failureMessage())),
        (r) => emit(
            LoanRequestState.success(response: r.data as PaymentInfoData)));
  }
}
