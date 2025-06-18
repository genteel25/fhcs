part of 'transactions_cubit.dart';

@freezed
class TransactionsState with _$TransactionsState {
  const factory TransactionsState.initial() = _Initial;
  const factory TransactionsState.loading() = _Loading;
  const factory TransactionsState.success(
      {required List<TransactionData> response}) = _Success;
  const factory TransactionsState.failure({required String error}) = _Failure;
}
