import 'package:bloc/bloc.dart';
import 'package:fhcs/core/data/transaction.dart';
import 'package:fhcs/features/home/repository/contract/ihome_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transactions_state.dart';
part 'transactions_cubit.freezed.dart';

class TransactionsCubit extends Cubit<TransactionsState> {
  final IHomeRepository homeRepository;
  TransactionsCubit({required this.homeRepository})
      : super(TransactionsState.initial());

  Future<void> fetchTransactions() async {
    emit(const TransactionsState.loading());
    final result = await homeRepository.transactions();
    result.fold(
      (failure) =>
          emit(TransactionsState.failure(error: failure.failureMessage())),
      (response) => emit(TransactionsState.success(
          response: response.data as List<TransactionData>)),
    );
  }
}
