// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserInfoData _$UserInfoDataFromJson(Map<String, dynamic> json) {
  return _UserInfoData.fromJson(json);
}

/// @nodoc
mixin _$UserInfoData {
  User? get user => throw _privateConstructorUsedError;
  Cooperator? get cooperator => throw _privateConstructorUsedError;

  /// Serializes this UserInfoData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserInfoData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserInfoDataCopyWith<UserInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoDataCopyWith<$Res> {
  factory $UserInfoDataCopyWith(
          UserInfoData value, $Res Function(UserInfoData) then) =
      _$UserInfoDataCopyWithImpl<$Res, UserInfoData>;
  @useResult
  $Res call({User? user, Cooperator? cooperator});

  $UserCopyWith<$Res>? get user;
  $CooperatorCopyWith<$Res>? get cooperator;
}

/// @nodoc
class _$UserInfoDataCopyWithImpl<$Res, $Val extends UserInfoData>
    implements $UserInfoDataCopyWith<$Res> {
  _$UserInfoDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserInfoData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? cooperator = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      cooperator: freezed == cooperator
          ? _value.cooperator
          : cooperator // ignore: cast_nullable_to_non_nullable
              as Cooperator?,
    ) as $Val);
  }

  /// Create a copy of UserInfoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of UserInfoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CooperatorCopyWith<$Res>? get cooperator {
    if (_value.cooperator == null) {
      return null;
    }

    return $CooperatorCopyWith<$Res>(_value.cooperator!, (value) {
      return _then(_value.copyWith(cooperator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserInfoDataImplCopyWith<$Res>
    implements $UserInfoDataCopyWith<$Res> {
  factory _$$UserInfoDataImplCopyWith(
          _$UserInfoDataImpl value, $Res Function(_$UserInfoDataImpl) then) =
      __$$UserInfoDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User? user, Cooperator? cooperator});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $CooperatorCopyWith<$Res>? get cooperator;
}

/// @nodoc
class __$$UserInfoDataImplCopyWithImpl<$Res>
    extends _$UserInfoDataCopyWithImpl<$Res, _$UserInfoDataImpl>
    implements _$$UserInfoDataImplCopyWith<$Res> {
  __$$UserInfoDataImplCopyWithImpl(
      _$UserInfoDataImpl _value, $Res Function(_$UserInfoDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserInfoData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? cooperator = freezed,
  }) {
    return _then(_$UserInfoDataImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      cooperator: freezed == cooperator
          ? _value.cooperator
          : cooperator // ignore: cast_nullable_to_non_nullable
              as Cooperator?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserInfoDataImpl extends _UserInfoData with DiagnosticableTreeMixin {
  const _$UserInfoDataImpl({this.user, this.cooperator}) : super._();

  factory _$UserInfoDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserInfoDataImplFromJson(json);

  @override
  final User? user;
  @override
  final Cooperator? cooperator;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserInfoData(user: $user, cooperator: $cooperator)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserInfoData'))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('cooperator', cooperator));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoDataImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.cooperator, cooperator) ||
                other.cooperator == cooperator));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user, cooperator);

  /// Create a copy of UserInfoData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInfoDataImplCopyWith<_$UserInfoDataImpl> get copyWith =>
      __$$UserInfoDataImplCopyWithImpl<_$UserInfoDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInfoDataImplToJson(
      this,
    );
  }
}

abstract class _UserInfoData extends UserInfoData {
  const factory _UserInfoData(
      {final User? user, final Cooperator? cooperator}) = _$UserInfoDataImpl;
  const _UserInfoData._() : super._();

  factory _UserInfoData.fromJson(Map<String, dynamic> json) =
      _$UserInfoDataImpl.fromJson;

  @override
  User? get user;
  @override
  Cooperator? get cooperator;

  /// Create a copy of UserInfoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserInfoDataImplCopyWith<_$UserInfoDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "first_name")
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "last_name")
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "middle_name")
  String? get middleName => throw _privateConstructorUsedError;
  @JsonKey(name: "phone_number")
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "ir_number")
  String? get irNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "image_url")
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "membership_no")
  String? get membershipNo => throw _privateConstructorUsedError;
  List<dynamic>? get roles =>
      throw _privateConstructorUsedError; // Roles can be dynamic based on your API
  String? get status =>
      throw _privateConstructorUsedError; // Assuming status can be a string
  dynamic get deployment =>
      throw _privateConstructorUsedError; // Assuming deployment can be dynamic (string/object)
  @JsonKey(name: "residential_address")
  String? get residentialAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "last_name") String? lastName,
      @JsonKey(name: "middle_name") String? middleName,
      @JsonKey(name: "phone_number") String? phoneNumber,
      String? email,
      @JsonKey(name: "ir_number") String? irNumber,
      @JsonKey(name: "image_url") String? imageUrl,
      @JsonKey(name: "membership_no") String? membershipNo,
      List<dynamic>? roles,
      String? status,
      dynamic deployment,
      @JsonKey(name: "residential_address") String? residentialAddress,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? middleName = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? irNumber = freezed,
    Object? imageUrl = freezed,
    Object? membershipNo = freezed,
    Object? roles = freezed,
    Object? status = freezed,
    Object? deployment = freezed,
    Object? residentialAddress = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      irNumber: freezed == irNumber
          ? _value.irNumber
          : irNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipNo: freezed == membershipNo
          ? _value.membershipNo
          : membershipNo // ignore: cast_nullable_to_non_nullable
              as String?,
      roles: freezed == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      deployment: freezed == deployment
          ? _value.deployment
          : deployment // ignore: cast_nullable_to_non_nullable
              as dynamic,
      residentialAddress: freezed == residentialAddress
          ? _value.residentialAddress
          : residentialAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "last_name") String? lastName,
      @JsonKey(name: "middle_name") String? middleName,
      @JsonKey(name: "phone_number") String? phoneNumber,
      String? email,
      @JsonKey(name: "ir_number") String? irNumber,
      @JsonKey(name: "image_url") String? imageUrl,
      @JsonKey(name: "membership_no") String? membershipNo,
      List<dynamic>? roles,
      String? status,
      dynamic deployment,
      @JsonKey(name: "residential_address") String? residentialAddress,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? middleName = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? irNumber = freezed,
    Object? imageUrl = freezed,
    Object? membershipNo = freezed,
    Object? roles = freezed,
    Object? status = freezed,
    Object? deployment = freezed,
    Object? residentialAddress = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$UserImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      irNumber: freezed == irNumber
          ? _value.irNumber
          : irNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipNo: freezed == membershipNo
          ? _value.membershipNo
          : membershipNo // ignore: cast_nullable_to_non_nullable
              as String?,
      roles: freezed == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      deployment: freezed == deployment
          ? _value.deployment
          : deployment // ignore: cast_nullable_to_non_nullable
              as dynamic,
      residentialAddress: freezed == residentialAddress
          ? _value.residentialAddress
          : residentialAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl extends _User with DiagnosticableTreeMixin {
  const _$UserImpl(
      {this.id,
      @JsonKey(name: "first_name") this.firstName,
      @JsonKey(name: "last_name") this.lastName,
      @JsonKey(name: "middle_name") this.middleName,
      @JsonKey(name: "phone_number") this.phoneNumber,
      this.email,
      @JsonKey(name: "ir_number") this.irNumber,
      @JsonKey(name: "image_url") this.imageUrl,
      @JsonKey(name: "membership_no") this.membershipNo,
      final List<dynamic>? roles,
      this.status,
      this.deployment,
      @JsonKey(name: "residential_address") this.residentialAddress,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt})
      : _roles = roles,
        super._();

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "first_name")
  final String? firstName;
  @override
  @JsonKey(name: "last_name")
  final String? lastName;
  @override
  @JsonKey(name: "middle_name")
  final String? middleName;
  @override
  @JsonKey(name: "phone_number")
  final String? phoneNumber;
  @override
  final String? email;
  @override
  @JsonKey(name: "ir_number")
  final String? irNumber;
  @override
  @JsonKey(name: "image_url")
  final String? imageUrl;
  @override
  @JsonKey(name: "membership_no")
  final String? membershipNo;
  final List<dynamic>? _roles;
  @override
  List<dynamic>? get roles {
    final value = _roles;
    if (value == null) return null;
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// Roles can be dynamic based on your API
  @override
  final String? status;
// Assuming status can be a string
  @override
  final dynamic deployment;
// Assuming deployment can be dynamic (string/object)
  @override
  @JsonKey(name: "residential_address")
  final String? residentialAddress;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(id: $id, firstName: $firstName, lastName: $lastName, middleName: $middleName, phoneNumber: $phoneNumber, email: $email, irNumber: $irNumber, imageUrl: $imageUrl, membershipNo: $membershipNo, roles: $roles, status: $status, deployment: $deployment, residentialAddress: $residentialAddress, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('middleName', middleName))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('irNumber', irNumber))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('membershipNo', membershipNo))
      ..add(DiagnosticsProperty('roles', roles))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('deployment', deployment))
      ..add(DiagnosticsProperty('residentialAddress', residentialAddress))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.irNumber, irNumber) ||
                other.irNumber == irNumber) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.membershipNo, membershipNo) ||
                other.membershipNo == membershipNo) &&
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other.deployment, deployment) &&
            (identical(other.residentialAddress, residentialAddress) ||
                other.residentialAddress == residentialAddress) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      firstName,
      lastName,
      middleName,
      phoneNumber,
      email,
      irNumber,
      imageUrl,
      membershipNo,
      const DeepCollectionEquality().hash(_roles),
      status,
      const DeepCollectionEquality().hash(deployment),
      residentialAddress,
      createdAt,
      updatedAt);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User extends User {
  const factory _User(
      {final int? id,
      @JsonKey(name: "first_name") final String? firstName,
      @JsonKey(name: "last_name") final String? lastName,
      @JsonKey(name: "middle_name") final String? middleName,
      @JsonKey(name: "phone_number") final String? phoneNumber,
      final String? email,
      @JsonKey(name: "ir_number") final String? irNumber,
      @JsonKey(name: "image_url") final String? imageUrl,
      @JsonKey(name: "membership_no") final String? membershipNo,
      final List<dynamic>? roles,
      final String? status,
      final dynamic deployment,
      @JsonKey(name: "residential_address") final String? residentialAddress,
      @JsonKey(name: "created_at") final DateTime? createdAt,
      @JsonKey(name: "updated_at") final DateTime? updatedAt}) = _$UserImpl;
  const _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "first_name")
  String? get firstName;
  @override
  @JsonKey(name: "last_name")
  String? get lastName;
  @override
  @JsonKey(name: "middle_name")
  String? get middleName;
  @override
  @JsonKey(name: "phone_number")
  String? get phoneNumber;
  @override
  String? get email;
  @override
  @JsonKey(name: "ir_number")
  String? get irNumber;
  @override
  @JsonKey(name: "image_url")
  String? get imageUrl;
  @override
  @JsonKey(name: "membership_no")
  String? get membershipNo;
  @override
  List<dynamic>? get roles; // Roles can be dynamic based on your API
  @override
  String? get status; // Assuming status can be a string
  @override
  dynamic get deployment; // Assuming deployment can be dynamic (string/object)
  @override
  @JsonKey(name: "residential_address")
  String? get residentialAddress;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Cooperator _$CooperatorFromJson(Map<String, dynamic> json) {
  return _Cooperator.fromJson(json);
}

/// @nodoc
mixin _$Cooperator {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  int? get userId => throw _privateConstructorUsedError;
  String? get dob =>
      throw _privateConstructorUsedError; // Consider using DateTime for better type safety
  @JsonKey(name: "state_of_origin")
  String? get stateOfOrigin => throw _privateConstructorUsedError;
  @JsonKey(name: "marital_status")
  String? get maritalStatus => throw _privateConstructorUsedError;
  String? get deployment => throw _privateConstructorUsedError;
  @JsonKey(name: "salary_grade")
  int? get salaryGrade => throw _privateConstructorUsedError;
  @JsonKey(name: "salary_grade_step")
  int? get salaryGradeStep => throw _privateConstructorUsedError;
  @JsonKey(name: "employment_date")
  String? get employmentDate =>
      throw _privateConstructorUsedError; // Consider DateTime
  @JsonKey(name: "in_service")
  bool? get inService => throw _privateConstructorUsedError;
  @JsonKey(name: "residential_address")
  String? get residentialAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "permanent_address")
  String? get permanentAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "office_address")
  String? get officeAddress => throw _privateConstructorUsedError;
  Bank? get bank => throw _privateConstructorUsedError;
  @JsonKey(name: "account_name")
  String? get accountName => throw _privateConstructorUsedError;
  @JsonKey(name: "account_number")
  String? get accountNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "sort_code")
  String? get sortCode => throw _privateConstructorUsedError;
  @JsonKey(name: "investment_percentage")
  double? get investmentPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: "savings_percentage")
  double? get savingsPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: "monthly_contribution")
  double? get monthlyContribution => throw _privateConstructorUsedError;
  @JsonKey(name: "primary_nok")
  NokInfo? get primaryNok => throw _privateConstructorUsedError;
  @JsonKey(name: "secondary_nok")
  NokInfo? get secondaryNok => throw _privateConstructorUsedError;

  /// Serializes this Cooperator to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Cooperator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CooperatorCopyWith<Cooperator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CooperatorCopyWith<$Res> {
  factory $CooperatorCopyWith(
          Cooperator value, $Res Function(Cooperator) then) =
      _$CooperatorCopyWithImpl<$Res, Cooperator>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "user_id") int? userId,
      String? dob,
      @JsonKey(name: "state_of_origin") String? stateOfOrigin,
      @JsonKey(name: "marital_status") String? maritalStatus,
      String? deployment,
      @JsonKey(name: "salary_grade") int? salaryGrade,
      @JsonKey(name: "salary_grade_step") int? salaryGradeStep,
      @JsonKey(name: "employment_date") String? employmentDate,
      @JsonKey(name: "in_service") bool? inService,
      @JsonKey(name: "residential_address") String? residentialAddress,
      @JsonKey(name: "permanent_address") String? permanentAddress,
      @JsonKey(name: "office_address") String? officeAddress,
      Bank? bank,
      @JsonKey(name: "account_name") String? accountName,
      @JsonKey(name: "account_number") String? accountNumber,
      @JsonKey(name: "sort_code") String? sortCode,
      @JsonKey(name: "investment_percentage") double? investmentPercentage,
      @JsonKey(name: "savings_percentage") double? savingsPercentage,
      @JsonKey(name: "monthly_contribution") double? monthlyContribution,
      @JsonKey(name: "primary_nok") NokInfo? primaryNok,
      @JsonKey(name: "secondary_nok") NokInfo? secondaryNok});

  $BankCopyWith<$Res>? get bank;
  $NokInfoCopyWith<$Res>? get primaryNok;
  $NokInfoCopyWith<$Res>? get secondaryNok;
}

/// @nodoc
class _$CooperatorCopyWithImpl<$Res, $Val extends Cooperator>
    implements $CooperatorCopyWith<$Res> {
  _$CooperatorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Cooperator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? dob = freezed,
    Object? stateOfOrigin = freezed,
    Object? maritalStatus = freezed,
    Object? deployment = freezed,
    Object? salaryGrade = freezed,
    Object? salaryGradeStep = freezed,
    Object? employmentDate = freezed,
    Object? inService = freezed,
    Object? residentialAddress = freezed,
    Object? permanentAddress = freezed,
    Object? officeAddress = freezed,
    Object? bank = freezed,
    Object? accountName = freezed,
    Object? accountNumber = freezed,
    Object? sortCode = freezed,
    Object? investmentPercentage = freezed,
    Object? savingsPercentage = freezed,
    Object? monthlyContribution = freezed,
    Object? primaryNok = freezed,
    Object? secondaryNok = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      stateOfOrigin: freezed == stateOfOrigin
          ? _value.stateOfOrigin
          : stateOfOrigin // ignore: cast_nullable_to_non_nullable
              as String?,
      maritalStatus: freezed == maritalStatus
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      deployment: freezed == deployment
          ? _value.deployment
          : deployment // ignore: cast_nullable_to_non_nullable
              as String?,
      salaryGrade: freezed == salaryGrade
          ? _value.salaryGrade
          : salaryGrade // ignore: cast_nullable_to_non_nullable
              as int?,
      salaryGradeStep: freezed == salaryGradeStep
          ? _value.salaryGradeStep
          : salaryGradeStep // ignore: cast_nullable_to_non_nullable
              as int?,
      employmentDate: freezed == employmentDate
          ? _value.employmentDate
          : employmentDate // ignore: cast_nullable_to_non_nullable
              as String?,
      inService: freezed == inService
          ? _value.inService
          : inService // ignore: cast_nullable_to_non_nullable
              as bool?,
      residentialAddress: freezed == residentialAddress
          ? _value.residentialAddress
          : residentialAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      permanentAddress: freezed == permanentAddress
          ? _value.permanentAddress
          : permanentAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      officeAddress: freezed == officeAddress
          ? _value.officeAddress
          : officeAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      bank: freezed == bank
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as Bank?,
      accountName: freezed == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumber: freezed == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      sortCode: freezed == sortCode
          ? _value.sortCode
          : sortCode // ignore: cast_nullable_to_non_nullable
              as String?,
      investmentPercentage: freezed == investmentPercentage
          ? _value.investmentPercentage
          : investmentPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      savingsPercentage: freezed == savingsPercentage
          ? _value.savingsPercentage
          : savingsPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      monthlyContribution: freezed == monthlyContribution
          ? _value.monthlyContribution
          : monthlyContribution // ignore: cast_nullable_to_non_nullable
              as double?,
      primaryNok: freezed == primaryNok
          ? _value.primaryNok
          : primaryNok // ignore: cast_nullable_to_non_nullable
              as NokInfo?,
      secondaryNok: freezed == secondaryNok
          ? _value.secondaryNok
          : secondaryNok // ignore: cast_nullable_to_non_nullable
              as NokInfo?,
    ) as $Val);
  }

  /// Create a copy of Cooperator
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BankCopyWith<$Res>? get bank {
    if (_value.bank == null) {
      return null;
    }

    return $BankCopyWith<$Res>(_value.bank!, (value) {
      return _then(_value.copyWith(bank: value) as $Val);
    });
  }

  /// Create a copy of Cooperator
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NokInfoCopyWith<$Res>? get primaryNok {
    if (_value.primaryNok == null) {
      return null;
    }

    return $NokInfoCopyWith<$Res>(_value.primaryNok!, (value) {
      return _then(_value.copyWith(primaryNok: value) as $Val);
    });
  }

  /// Create a copy of Cooperator
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NokInfoCopyWith<$Res>? get secondaryNok {
    if (_value.secondaryNok == null) {
      return null;
    }

    return $NokInfoCopyWith<$Res>(_value.secondaryNok!, (value) {
      return _then(_value.copyWith(secondaryNok: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CooperatorImplCopyWith<$Res>
    implements $CooperatorCopyWith<$Res> {
  factory _$$CooperatorImplCopyWith(
          _$CooperatorImpl value, $Res Function(_$CooperatorImpl) then) =
      __$$CooperatorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "user_id") int? userId,
      String? dob,
      @JsonKey(name: "state_of_origin") String? stateOfOrigin,
      @JsonKey(name: "marital_status") String? maritalStatus,
      String? deployment,
      @JsonKey(name: "salary_grade") int? salaryGrade,
      @JsonKey(name: "salary_grade_step") int? salaryGradeStep,
      @JsonKey(name: "employment_date") String? employmentDate,
      @JsonKey(name: "in_service") bool? inService,
      @JsonKey(name: "residential_address") String? residentialAddress,
      @JsonKey(name: "permanent_address") String? permanentAddress,
      @JsonKey(name: "office_address") String? officeAddress,
      Bank? bank,
      @JsonKey(name: "account_name") String? accountName,
      @JsonKey(name: "account_number") String? accountNumber,
      @JsonKey(name: "sort_code") String? sortCode,
      @JsonKey(name: "investment_percentage") double? investmentPercentage,
      @JsonKey(name: "savings_percentage") double? savingsPercentage,
      @JsonKey(name: "monthly_contribution") double? monthlyContribution,
      @JsonKey(name: "primary_nok") NokInfo? primaryNok,
      @JsonKey(name: "secondary_nok") NokInfo? secondaryNok});

  @override
  $BankCopyWith<$Res>? get bank;
  @override
  $NokInfoCopyWith<$Res>? get primaryNok;
  @override
  $NokInfoCopyWith<$Res>? get secondaryNok;
}

/// @nodoc
class __$$CooperatorImplCopyWithImpl<$Res>
    extends _$CooperatorCopyWithImpl<$Res, _$CooperatorImpl>
    implements _$$CooperatorImplCopyWith<$Res> {
  __$$CooperatorImplCopyWithImpl(
      _$CooperatorImpl _value, $Res Function(_$CooperatorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Cooperator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? dob = freezed,
    Object? stateOfOrigin = freezed,
    Object? maritalStatus = freezed,
    Object? deployment = freezed,
    Object? salaryGrade = freezed,
    Object? salaryGradeStep = freezed,
    Object? employmentDate = freezed,
    Object? inService = freezed,
    Object? residentialAddress = freezed,
    Object? permanentAddress = freezed,
    Object? officeAddress = freezed,
    Object? bank = freezed,
    Object? accountName = freezed,
    Object? accountNumber = freezed,
    Object? sortCode = freezed,
    Object? investmentPercentage = freezed,
    Object? savingsPercentage = freezed,
    Object? monthlyContribution = freezed,
    Object? primaryNok = freezed,
    Object? secondaryNok = freezed,
  }) {
    return _then(_$CooperatorImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      stateOfOrigin: freezed == stateOfOrigin
          ? _value.stateOfOrigin
          : stateOfOrigin // ignore: cast_nullable_to_non_nullable
              as String?,
      maritalStatus: freezed == maritalStatus
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      deployment: freezed == deployment
          ? _value.deployment
          : deployment // ignore: cast_nullable_to_non_nullable
              as String?,
      salaryGrade: freezed == salaryGrade
          ? _value.salaryGrade
          : salaryGrade // ignore: cast_nullable_to_non_nullable
              as int?,
      salaryGradeStep: freezed == salaryGradeStep
          ? _value.salaryGradeStep
          : salaryGradeStep // ignore: cast_nullable_to_non_nullable
              as int?,
      employmentDate: freezed == employmentDate
          ? _value.employmentDate
          : employmentDate // ignore: cast_nullable_to_non_nullable
              as String?,
      inService: freezed == inService
          ? _value.inService
          : inService // ignore: cast_nullable_to_non_nullable
              as bool?,
      residentialAddress: freezed == residentialAddress
          ? _value.residentialAddress
          : residentialAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      permanentAddress: freezed == permanentAddress
          ? _value.permanentAddress
          : permanentAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      officeAddress: freezed == officeAddress
          ? _value.officeAddress
          : officeAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      bank: freezed == bank
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as Bank?,
      accountName: freezed == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumber: freezed == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      sortCode: freezed == sortCode
          ? _value.sortCode
          : sortCode // ignore: cast_nullable_to_non_nullable
              as String?,
      investmentPercentage: freezed == investmentPercentage
          ? _value.investmentPercentage
          : investmentPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      savingsPercentage: freezed == savingsPercentage
          ? _value.savingsPercentage
          : savingsPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      monthlyContribution: freezed == monthlyContribution
          ? _value.monthlyContribution
          : monthlyContribution // ignore: cast_nullable_to_non_nullable
              as double?,
      primaryNok: freezed == primaryNok
          ? _value.primaryNok
          : primaryNok // ignore: cast_nullable_to_non_nullable
              as NokInfo?,
      secondaryNok: freezed == secondaryNok
          ? _value.secondaryNok
          : secondaryNok // ignore: cast_nullable_to_non_nullable
              as NokInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CooperatorImpl extends _Cooperator with DiagnosticableTreeMixin {
  const _$CooperatorImpl(
      {this.id,
      @JsonKey(name: "user_id") this.userId,
      this.dob,
      @JsonKey(name: "state_of_origin") this.stateOfOrigin,
      @JsonKey(name: "marital_status") this.maritalStatus,
      this.deployment,
      @JsonKey(name: "salary_grade") this.salaryGrade,
      @JsonKey(name: "salary_grade_step") this.salaryGradeStep,
      @JsonKey(name: "employment_date") this.employmentDate,
      @JsonKey(name: "in_service") this.inService,
      @JsonKey(name: "residential_address") this.residentialAddress,
      @JsonKey(name: "permanent_address") this.permanentAddress,
      @JsonKey(name: "office_address") this.officeAddress,
      this.bank,
      @JsonKey(name: "account_name") this.accountName,
      @JsonKey(name: "account_number") this.accountNumber,
      @JsonKey(name: "sort_code") this.sortCode,
      @JsonKey(name: "investment_percentage") this.investmentPercentage,
      @JsonKey(name: "savings_percentage") this.savingsPercentage,
      @JsonKey(name: "monthly_contribution") this.monthlyContribution,
      @JsonKey(name: "primary_nok") this.primaryNok,
      @JsonKey(name: "secondary_nok") this.secondaryNok})
      : super._();

  factory _$CooperatorImpl.fromJson(Map<String, dynamic> json) =>
      _$$CooperatorImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "user_id")
  final int? userId;
  @override
  final String? dob;
// Consider using DateTime for better type safety
  @override
  @JsonKey(name: "state_of_origin")
  final String? stateOfOrigin;
  @override
  @JsonKey(name: "marital_status")
  final String? maritalStatus;
  @override
  final String? deployment;
  @override
  @JsonKey(name: "salary_grade")
  final int? salaryGrade;
  @override
  @JsonKey(name: "salary_grade_step")
  final int? salaryGradeStep;
  @override
  @JsonKey(name: "employment_date")
  final String? employmentDate;
// Consider DateTime
  @override
  @JsonKey(name: "in_service")
  final bool? inService;
  @override
  @JsonKey(name: "residential_address")
  final String? residentialAddress;
  @override
  @JsonKey(name: "permanent_address")
  final String? permanentAddress;
  @override
  @JsonKey(name: "office_address")
  final String? officeAddress;
  @override
  final Bank? bank;
  @override
  @JsonKey(name: "account_name")
  final String? accountName;
  @override
  @JsonKey(name: "account_number")
  final String? accountNumber;
  @override
  @JsonKey(name: "sort_code")
  final String? sortCode;
  @override
  @JsonKey(name: "investment_percentage")
  final double? investmentPercentage;
  @override
  @JsonKey(name: "savings_percentage")
  final double? savingsPercentage;
  @override
  @JsonKey(name: "monthly_contribution")
  final double? monthlyContribution;
  @override
  @JsonKey(name: "primary_nok")
  final NokInfo? primaryNok;
  @override
  @JsonKey(name: "secondary_nok")
  final NokInfo? secondaryNok;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Cooperator(id: $id, userId: $userId, dob: $dob, stateOfOrigin: $stateOfOrigin, maritalStatus: $maritalStatus, deployment: $deployment, salaryGrade: $salaryGrade, salaryGradeStep: $salaryGradeStep, employmentDate: $employmentDate, inService: $inService, residentialAddress: $residentialAddress, permanentAddress: $permanentAddress, officeAddress: $officeAddress, bank: $bank, accountName: $accountName, accountNumber: $accountNumber, sortCode: $sortCode, investmentPercentage: $investmentPercentage, savingsPercentage: $savingsPercentage, monthlyContribution: $monthlyContribution, primaryNok: $primaryNok, secondaryNok: $secondaryNok)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Cooperator'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('dob', dob))
      ..add(DiagnosticsProperty('stateOfOrigin', stateOfOrigin))
      ..add(DiagnosticsProperty('maritalStatus', maritalStatus))
      ..add(DiagnosticsProperty('deployment', deployment))
      ..add(DiagnosticsProperty('salaryGrade', salaryGrade))
      ..add(DiagnosticsProperty('salaryGradeStep', salaryGradeStep))
      ..add(DiagnosticsProperty('employmentDate', employmentDate))
      ..add(DiagnosticsProperty('inService', inService))
      ..add(DiagnosticsProperty('residentialAddress', residentialAddress))
      ..add(DiagnosticsProperty('permanentAddress', permanentAddress))
      ..add(DiagnosticsProperty('officeAddress', officeAddress))
      ..add(DiagnosticsProperty('bank', bank))
      ..add(DiagnosticsProperty('accountName', accountName))
      ..add(DiagnosticsProperty('accountNumber', accountNumber))
      ..add(DiagnosticsProperty('sortCode', sortCode))
      ..add(DiagnosticsProperty('investmentPercentage', investmentPercentage))
      ..add(DiagnosticsProperty('savingsPercentage', savingsPercentage))
      ..add(DiagnosticsProperty('monthlyContribution', monthlyContribution))
      ..add(DiagnosticsProperty('primaryNok', primaryNok))
      ..add(DiagnosticsProperty('secondaryNok', secondaryNok));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CooperatorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.stateOfOrigin, stateOfOrigin) ||
                other.stateOfOrigin == stateOfOrigin) &&
            (identical(other.maritalStatus, maritalStatus) ||
                other.maritalStatus == maritalStatus) &&
            (identical(other.deployment, deployment) ||
                other.deployment == deployment) &&
            (identical(other.salaryGrade, salaryGrade) ||
                other.salaryGrade == salaryGrade) &&
            (identical(other.salaryGradeStep, salaryGradeStep) ||
                other.salaryGradeStep == salaryGradeStep) &&
            (identical(other.employmentDate, employmentDate) ||
                other.employmentDate == employmentDate) &&
            (identical(other.inService, inService) ||
                other.inService == inService) &&
            (identical(other.residentialAddress, residentialAddress) ||
                other.residentialAddress == residentialAddress) &&
            (identical(other.permanentAddress, permanentAddress) ||
                other.permanentAddress == permanentAddress) &&
            (identical(other.officeAddress, officeAddress) ||
                other.officeAddress == officeAddress) &&
            (identical(other.bank, bank) || other.bank == bank) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.sortCode, sortCode) ||
                other.sortCode == sortCode) &&
            (identical(other.investmentPercentage, investmentPercentage) ||
                other.investmentPercentage == investmentPercentage) &&
            (identical(other.savingsPercentage, savingsPercentage) ||
                other.savingsPercentage == savingsPercentage) &&
            (identical(other.monthlyContribution, monthlyContribution) ||
                other.monthlyContribution == monthlyContribution) &&
            (identical(other.primaryNok, primaryNok) ||
                other.primaryNok == primaryNok) &&
            (identical(other.secondaryNok, secondaryNok) ||
                other.secondaryNok == secondaryNok));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        userId,
        dob,
        stateOfOrigin,
        maritalStatus,
        deployment,
        salaryGrade,
        salaryGradeStep,
        employmentDate,
        inService,
        residentialAddress,
        permanentAddress,
        officeAddress,
        bank,
        accountName,
        accountNumber,
        sortCode,
        investmentPercentage,
        savingsPercentage,
        monthlyContribution,
        primaryNok,
        secondaryNok
      ]);

  /// Create a copy of Cooperator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CooperatorImplCopyWith<_$CooperatorImpl> get copyWith =>
      __$$CooperatorImplCopyWithImpl<_$CooperatorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CooperatorImplToJson(
      this,
    );
  }
}

abstract class _Cooperator extends Cooperator {
  const factory _Cooperator(
      {final int? id,
      @JsonKey(name: "user_id") final int? userId,
      final String? dob,
      @JsonKey(name: "state_of_origin") final String? stateOfOrigin,
      @JsonKey(name: "marital_status") final String? maritalStatus,
      final String? deployment,
      @JsonKey(name: "salary_grade") final int? salaryGrade,
      @JsonKey(name: "salary_grade_step") final int? salaryGradeStep,
      @JsonKey(name: "employment_date") final String? employmentDate,
      @JsonKey(name: "in_service") final bool? inService,
      @JsonKey(name: "residential_address") final String? residentialAddress,
      @JsonKey(name: "permanent_address") final String? permanentAddress,
      @JsonKey(name: "office_address") final String? officeAddress,
      final Bank? bank,
      @JsonKey(name: "account_name") final String? accountName,
      @JsonKey(name: "account_number") final String? accountNumber,
      @JsonKey(name: "sort_code") final String? sortCode,
      @JsonKey(name: "investment_percentage")
      final double? investmentPercentage,
      @JsonKey(name: "savings_percentage") final double? savingsPercentage,
      @JsonKey(name: "monthly_contribution") final double? monthlyContribution,
      @JsonKey(name: "primary_nok") final NokInfo? primaryNok,
      @JsonKey(name: "secondary_nok")
      final NokInfo? secondaryNok}) = _$CooperatorImpl;
  const _Cooperator._() : super._();

  factory _Cooperator.fromJson(Map<String, dynamic> json) =
      _$CooperatorImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "user_id")
  int? get userId;
  @override
  String? get dob; // Consider using DateTime for better type safety
  @override
  @JsonKey(name: "state_of_origin")
  String? get stateOfOrigin;
  @override
  @JsonKey(name: "marital_status")
  String? get maritalStatus;
  @override
  String? get deployment;
  @override
  @JsonKey(name: "salary_grade")
  int? get salaryGrade;
  @override
  @JsonKey(name: "salary_grade_step")
  int? get salaryGradeStep;
  @override
  @JsonKey(name: "employment_date")
  String? get employmentDate; // Consider DateTime
  @override
  @JsonKey(name: "in_service")
  bool? get inService;
  @override
  @JsonKey(name: "residential_address")
  String? get residentialAddress;
  @override
  @JsonKey(name: "permanent_address")
  String? get permanentAddress;
  @override
  @JsonKey(name: "office_address")
  String? get officeAddress;
  @override
  Bank? get bank;
  @override
  @JsonKey(name: "account_name")
  String? get accountName;
  @override
  @JsonKey(name: "account_number")
  String? get accountNumber;
  @override
  @JsonKey(name: "sort_code")
  String? get sortCode;
  @override
  @JsonKey(name: "investment_percentage")
  double? get investmentPercentage;
  @override
  @JsonKey(name: "savings_percentage")
  double? get savingsPercentage;
  @override
  @JsonKey(name: "monthly_contribution")
  double? get monthlyContribution;
  @override
  @JsonKey(name: "primary_nok")
  NokInfo? get primaryNok;
  @override
  @JsonKey(name: "secondary_nok")
  NokInfo? get secondaryNok;

  /// Create a copy of Cooperator
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CooperatorImplCopyWith<_$CooperatorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Bank _$BankFromJson(Map<String, dynamic> json) {
  return _Bank.fromJson(json);
}

/// @nodoc
mixin _$Bank {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;

  /// Serializes this Bank to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Bank
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BankCopyWith<Bank> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankCopyWith<$Res> {
  factory $BankCopyWith(Bank value, $Res Function(Bank) then) =
      _$BankCopyWithImpl<$Res, Bank>;
  @useResult
  $Res call({int? id, String? name, String? code});
}

/// @nodoc
class _$BankCopyWithImpl<$Res, $Val extends Bank>
    implements $BankCopyWith<$Res> {
  _$BankCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Bank
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BankImplCopyWith<$Res> implements $BankCopyWith<$Res> {
  factory _$$BankImplCopyWith(
          _$BankImpl value, $Res Function(_$BankImpl) then) =
      __$$BankImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? code});
}

/// @nodoc
class __$$BankImplCopyWithImpl<$Res>
    extends _$BankCopyWithImpl<$Res, _$BankImpl>
    implements _$$BankImplCopyWith<$Res> {
  __$$BankImplCopyWithImpl(_$BankImpl _value, $Res Function(_$BankImpl) _then)
      : super(_value, _then);

  /// Create a copy of Bank
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? code = freezed,
  }) {
    return _then(_$BankImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BankImpl extends _Bank with DiagnosticableTreeMixin {
  const _$BankImpl({this.id, this.name, this.code}) : super._();

  factory _$BankImpl.fromJson(Map<String, dynamic> json) =>
      _$$BankImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? code;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Bank(id: $id, name: $name, code: $code)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Bank'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('code', code));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, code);

  /// Create a copy of Bank
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BankImplCopyWith<_$BankImpl> get copyWith =>
      __$$BankImplCopyWithImpl<_$BankImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BankImplToJson(
      this,
    );
  }
}

abstract class _Bank extends Bank {
  const factory _Bank({final int? id, final String? name, final String? code}) =
      _$BankImpl;
  const _Bank._() : super._();

  factory _Bank.fromJson(Map<String, dynamic> json) = _$BankImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get code;

  /// Create a copy of Bank
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BankImplCopyWith<_$BankImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NokInfo _$NokInfoFromJson(Map<String, dynamic> json) {
  return _NokInfo.fromJson(json);
}

/// @nodoc
mixin _$NokInfo {
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "phone_number")
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get relationship => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;

  /// Serializes this NokInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NokInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NokInfoCopyWith<NokInfo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NokInfoCopyWith<$Res> {
  factory $NokInfoCopyWith(NokInfo value, $Res Function(NokInfo) then) =
      _$NokInfoCopyWithImpl<$Res, NokInfo>;
  @useResult
  $Res call(
      {String? name,
      @JsonKey(name: "phone_number") String? phoneNumber,
      String? relationship,
      String? address});
}

/// @nodoc
class _$NokInfoCopyWithImpl<$Res, $Val extends NokInfo>
    implements $NokInfoCopyWith<$Res> {
  _$NokInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NokInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? relationship = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      relationship: freezed == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NokInfoImplCopyWith<$Res> implements $NokInfoCopyWith<$Res> {
  factory _$$NokInfoImplCopyWith(
          _$NokInfoImpl value, $Res Function(_$NokInfoImpl) then) =
      __$$NokInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      @JsonKey(name: "phone_number") String? phoneNumber,
      String? relationship,
      String? address});
}

/// @nodoc
class __$$NokInfoImplCopyWithImpl<$Res>
    extends _$NokInfoCopyWithImpl<$Res, _$NokInfoImpl>
    implements _$$NokInfoImplCopyWith<$Res> {
  __$$NokInfoImplCopyWithImpl(
      _$NokInfoImpl _value, $Res Function(_$NokInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of NokInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? relationship = freezed,
    Object? address = freezed,
  }) {
    return _then(_$NokInfoImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      relationship: freezed == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NokInfoImpl extends _NokInfo with DiagnosticableTreeMixin {
  const _$NokInfoImpl(
      {this.name,
      @JsonKey(name: "phone_number") this.phoneNumber,
      this.relationship,
      this.address})
      : super._();

  factory _$NokInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$NokInfoImplFromJson(json);

  @override
  final String? name;
  @override
  @JsonKey(name: "phone_number")
  final String? phoneNumber;
  @override
  final String? relationship;
  @override
  final String? address;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NokInfo(name: $name, phoneNumber: $phoneNumber, relationship: $relationship, address: $address)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NokInfo'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber))
      ..add(DiagnosticsProperty('relationship', relationship))
      ..add(DiagnosticsProperty('address', address));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NokInfoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.relationship, relationship) ||
                other.relationship == relationship) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, phoneNumber, relationship, address);

  /// Create a copy of NokInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NokInfoImplCopyWith<_$NokInfoImpl> get copyWith =>
      __$$NokInfoImplCopyWithImpl<_$NokInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NokInfoImplToJson(
      this,
    );
  }
}

abstract class _NokInfo extends NokInfo {
  const factory _NokInfo(
      {final String? name,
      @JsonKey(name: "phone_number") final String? phoneNumber,
      final String? relationship,
      final String? address}) = _$NokInfoImpl;
  const _NokInfo._() : super._();

  factory _NokInfo.fromJson(Map<String, dynamic> json) = _$NokInfoImpl.fromJson;

  @override
  String? get name;
  @override
  @JsonKey(name: "phone_number")
  String? get phoneNumber;
  @override
  String? get relationship;
  @override
  String? get address;

  /// Create a copy of NokInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NokInfoImplCopyWith<_$NokInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
