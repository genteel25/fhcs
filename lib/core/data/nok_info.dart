import 'package:freezed_annotation/freezed_annotation.dart';
part 'nok_info.freezed.dart';
part 'nok_info.g.dart';

@Freezed(unionValueCase: FreezedUnionCase.snake)
class NokInfoData with _$NokInfoData {
  const NokInfoData._();
  const factory NokInfoData({
    String? name,
    String? phoneNumber,
    String? relationship,
    String? address,
  }) = _NokInfoData;

  factory NokInfoData.fromJson(Map<String, dynamic> json) =>
      _$NokInfoDataFromJson(json);
}
