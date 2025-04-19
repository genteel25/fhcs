// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nok_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NokInfoData _$NokInfoDataFromJson(Map<String, dynamic> json) {
  return _NokInfoData.fromJson(json);
}

/// @nodoc
mixin _$NokInfoData {
  String? get name => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get relationship => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;

  /// Serializes this NokInfoData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NokInfoData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NokInfoDataCopyWith<NokInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NokInfoDataCopyWith<$Res> {
  factory $NokInfoDataCopyWith(
          NokInfoData value, $Res Function(NokInfoData) then) =
      _$NokInfoDataCopyWithImpl<$Res, NokInfoData>;
  @useResult
  $Res call(
      {String? name,
      String? phoneNumber,
      String? relationship,
      String? address});
}

/// @nodoc
class _$NokInfoDataCopyWithImpl<$Res, $Val extends NokInfoData>
    implements $NokInfoDataCopyWith<$Res> {
  _$NokInfoDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NokInfoData
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
abstract class _$$NokInfoDataImplCopyWith<$Res>
    implements $NokInfoDataCopyWith<$Res> {
  factory _$$NokInfoDataImplCopyWith(
          _$NokInfoDataImpl value, $Res Function(_$NokInfoDataImpl) then) =
      __$$NokInfoDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? phoneNumber,
      String? relationship,
      String? address});
}

/// @nodoc
class __$$NokInfoDataImplCopyWithImpl<$Res>
    extends _$NokInfoDataCopyWithImpl<$Res, _$NokInfoDataImpl>
    implements _$$NokInfoDataImplCopyWith<$Res> {
  __$$NokInfoDataImplCopyWithImpl(
      _$NokInfoDataImpl _value, $Res Function(_$NokInfoDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of NokInfoData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? relationship = freezed,
    Object? address = freezed,
  }) {
    return _then(_$NokInfoDataImpl(
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
class _$NokInfoDataImpl extends _NokInfoData {
  const _$NokInfoDataImpl(
      {this.name, this.phoneNumber, this.relationship, this.address})
      : super._();

  factory _$NokInfoDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$NokInfoDataImplFromJson(json);

  @override
  final String? name;
  @override
  final String? phoneNumber;
  @override
  final String? relationship;
  @override
  final String? address;

  @override
  String toString() {
    return 'NokInfoData(name: $name, phoneNumber: $phoneNumber, relationship: $relationship, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NokInfoDataImpl &&
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

  /// Create a copy of NokInfoData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NokInfoDataImplCopyWith<_$NokInfoDataImpl> get copyWith =>
      __$$NokInfoDataImplCopyWithImpl<_$NokInfoDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NokInfoDataImplToJson(
      this,
    );
  }
}

abstract class _NokInfoData extends NokInfoData {
  const factory _NokInfoData(
      {final String? name,
      final String? phoneNumber,
      final String? relationship,
      final String? address}) = _$NokInfoDataImpl;
  const _NokInfoData._() : super._();

  factory _NokInfoData.fromJson(Map<String, dynamic> json) =
      _$NokInfoDataImpl.fromJson;

  @override
  String? get name;
  @override
  String? get phoneNumber;
  @override
  String? get relationship;
  @override
  String? get address;

  /// Create a copy of NokInfoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NokInfoDataImplCopyWith<_$NokInfoDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
