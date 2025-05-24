// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'referee.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RefereeData _$RefereeDataFromJson(Map<String, dynamic> json) {
  return _RefereeData.fromJson(json);
}

/// @nodoc
mixin _$RefereeData {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "ir_number")
  String? get irNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "first_name")
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "last_name")
  String? get lastName => throw _privateConstructorUsedError;

  /// Serializes this RefereeData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefereeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefereeDataCopyWith<RefereeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefereeDataCopyWith<$Res> {
  factory $RefereeDataCopyWith(
          RefereeData value, $Res Function(RefereeData) then) =
      _$RefereeDataCopyWithImpl<$Res, RefereeData>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "ir_number") String? irNumber,
      @JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "last_name") String? lastName});
}

/// @nodoc
class _$RefereeDataCopyWithImpl<$Res, $Val extends RefereeData>
    implements $RefereeDataCopyWith<$Res> {
  _$RefereeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefereeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? irNumber = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      irNumber: freezed == irNumber
          ? _value.irNumber
          : irNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RefereeDataImplCopyWith<$Res>
    implements $RefereeDataCopyWith<$Res> {
  factory _$$RefereeDataImplCopyWith(
          _$RefereeDataImpl value, $Res Function(_$RefereeDataImpl) then) =
      __$$RefereeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "ir_number") String? irNumber,
      @JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "last_name") String? lastName});
}

/// @nodoc
class __$$RefereeDataImplCopyWithImpl<$Res>
    extends _$RefereeDataCopyWithImpl<$Res, _$RefereeDataImpl>
    implements _$$RefereeDataImplCopyWith<$Res> {
  __$$RefereeDataImplCopyWithImpl(
      _$RefereeDataImpl _value, $Res Function(_$RefereeDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefereeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? irNumber = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
  }) {
    return _then(_$RefereeDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      irNumber: freezed == irNumber
          ? _value.irNumber
          : irNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefereeDataImpl extends _RefereeData with DiagnosticableTreeMixin {
  const _$RefereeDataImpl(
      {this.id,
      @JsonKey(name: "ir_number") this.irNumber,
      @JsonKey(name: "first_name") this.firstName,
      @JsonKey(name: "last_name") this.lastName})
      : super._();

  factory _$RefereeDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefereeDataImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "ir_number")
  final String? irNumber;
  @override
  @JsonKey(name: "first_name")
  final String? firstName;
  @override
  @JsonKey(name: "last_name")
  final String? lastName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RefereeData(id: $id, irNumber: $irNumber, firstName: $firstName, lastName: $lastName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RefereeData'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('irNumber', irNumber))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefereeDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.irNumber, irNumber) ||
                other.irNumber == irNumber) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, irNumber, firstName, lastName);

  /// Create a copy of RefereeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefereeDataImplCopyWith<_$RefereeDataImpl> get copyWith =>
      __$$RefereeDataImplCopyWithImpl<_$RefereeDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefereeDataImplToJson(
      this,
    );
  }
}

abstract class _RefereeData extends RefereeData {
  const factory _RefereeData(
      {final int? id,
      @JsonKey(name: "ir_number") final String? irNumber,
      @JsonKey(name: "first_name") final String? firstName,
      @JsonKey(name: "last_name") final String? lastName}) = _$RefereeDataImpl;
  const _RefereeData._() : super._();

  factory _RefereeData.fromJson(Map<String, dynamic> json) =
      _$RefereeDataImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "ir_number")
  String? get irNumber;
  @override
  @JsonKey(name: "first_name")
  String? get firstName;
  @override
  @JsonKey(name: "last_name")
  String? get lastName;

  /// Create a copy of RefereeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefereeDataImplCopyWith<_$RefereeDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
