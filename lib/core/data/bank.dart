import 'package:freezed_annotation/freezed_annotation.dart';
part 'bank.freezed.dart';
part 'bank.g.dart';

@Freezed(unionValueCase: FreezedUnionCase.snake)
class BankData with _$BankData {
  const BankData._();
  const factory BankData({
    int? id,
    String? name,
    String? code,
  }) = _BankData;

  factory BankData.fromJson(Map<String, dynamic> json) =>
      _$BankDataFromJson(json);
}
