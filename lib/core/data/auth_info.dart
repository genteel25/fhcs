import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:fhcs/core/data/bank_info.dart';
import 'package:fhcs/core/data/basic_info.dart';
import 'package:fhcs/core/data/nok_info.dart';
import 'package:fhcs/core/data/payment.dart';
import 'package:fhcs/core/data/personal_info.dart';
part 'auth_info.freezed.dart';
part 'auth_info.g.dart';

@Freezed(unionValueCase: FreezedUnionCase.snake)
class AuthInfoData with _$AuthInfoData {
  const AuthInfoData._();
  const factory AuthInfoData({
    @JsonKey(name: "basic_info") BasicInfoData? basicInfo,
    @JsonKey(name: "personal_info") PersonalInfoData? personalInfo,
    @JsonKey(name: "nok_info") NokInfoData? nokInfo,
    @JsonKey(name: "bank_info") BankInfoData? bankInfo,
    @JsonKey(name: "payment_info") PaymentInfoData? paymentInfo,
  }) = _AuthInfoData;

  factory AuthInfoData.fromJson(Map<String, dynamic> json) =>
      _$AuthInfoDataFromJson(json);
}
