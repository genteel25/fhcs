import 'package:bloc/bloc.dart';
import 'package:fhcs/core/data/loan_repayment.dart';
import 'package:fhcs/features/loans/repository/contract/iloan_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'loan_repayment_state.dart';
part 'loan_repayment_cubit.freezed.dart';

class LoanRepaymentCubit extends Cubit<LoanRepaymentState> {
  final ILoanRepository repository;
  LoanRepaymentCubit({required this.repository})
      : super(LoanRepaymentState.initial());

  Future<void> initiateLoanRepayment(Map<String, dynamic> payload) async {
    emit(LoanRepaymentState.loading());
    final response = await repository.initiateLoanRepayment(payload);
    response.fold((l) {
      return emit(LoanRepaymentState.failure(error: l.failureMessage()));
    }, (r) {
      emit(LoanRepaymentState.success(response: r.data as LoanRepaymentData));
    });
  }
}
