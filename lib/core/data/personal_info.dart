import 'package:freezed_annotation/freezed_annotation.dart';
part 'personal_info.freezed.dart';
part 'personal_info.g.dart';

@Freezed(unionValueCase: FreezedUnionCase.snake)
class PersonalInfoData with _$PersonalInfoData {
  const PersonalInfoData._();
  const factory PersonalInfoData({
    String? maritalStatus,
    String? dob,
    String? residentialAddress,
    String? permanentAddress,
    String? officeAddress,
    String? deployment,
    String? soo,
    int? salaryGrade,
    int? salaryGradeStep,
    int? employmentDate,
    int? employmentStatus,
  }) = _PersonalInfoData;

  factory PersonalInfoData.fromJson(Map<String, dynamic> json) =>
      _$PersonalInfoDataFromJson(json);
}
