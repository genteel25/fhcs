import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart'; // Required for @freezed

part 'referee.freezed.dart';
part 'referee.g.dart';

// --- Simple User Model ---
@Freezed(unionValueCase: FreezedUnionCase.snake)
class RefereeData with _$RefereeData {
  const RefereeData._();
  const factory RefereeData({
    int? id,
    @JsonKey(name: "ir_number") String? irNumber,
    @JsonKey(name: "first_name") String? firstName,
    @JsonKey(name: "last_name") String? lastName,
    @JsonKey(name: "image_url") String? imageUrl,
  }) = _RefereeData;

  factory RefereeData.fromJson(Map<String, dynamic> json) =>
      _$RefereeDataFromJson(json);
}
