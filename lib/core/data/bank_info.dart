import 'package:freezed_annotation/freezed_annotation.dart';
part 'bank_info.freezed.dart';
part 'bank_info.g.dart';

@Freezed(unionValueCase: FreezedUnionCase.snake)
class BankInfoData with _$BankInfoData {
  const BankInfoData._();
  const factory BankInfoData({
    int? bankId,
    String? accountName,
    String? accountNumber,
    String? sortCode,
  }) = _BankInfoData;

  factory BankInfoData.fromJson(Map<String, dynamic> json) =>
      _$BankInfoDataFromJson(json);
}
