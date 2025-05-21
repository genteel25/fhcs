import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:fhcs/core/data/nok_info.dart';
import 'package:fhcs/core/data/payment.dart';
import 'package:fhcs/core/data/personal_info.dart';
part 'basic_info.freezed.dart';
part 'basic_info.g.dart';

typedef InfoData = ({
  BasicInfoData basicInfo,
  PersonalInfoData personalData,
  NokInfoData? nokInfoData,
  PaymentInfoData? paymentInfoData,
});

@Freezed(unionValueCase: FreezedUnionCase.snake)
class BasicInfoData with _$BasicInfoData {
  const BasicInfoData._();
  const factory BasicInfoData({
    String? email,
    String? firstName,
    String? lastName,
    String? middleName,
    String? imageUrl,
    String? irNumber,
    String? membershipNo,
    String? phoneNumber,
  }) = _BasicInfoData;

  factory BasicInfoData.fromJson(Map<String, dynamic> json) =>
      _$BasicInfoDataFromJson(json);
}
