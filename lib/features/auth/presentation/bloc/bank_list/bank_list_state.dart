part of 'bank_list_cubit.dart';

@freezed
class BankListState with _$BankListState {
  const factory BankListState.initial() = _Initial;
  const factory BankListState.loading() = _Loading;
  const factory BankListState.success({required List<BankData> response}) =
      _Success;
  const factory BankListState.failure({required String error}) = _Failure;
}
