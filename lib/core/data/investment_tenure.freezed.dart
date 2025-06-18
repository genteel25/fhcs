// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'investment_tenure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InvestmentTenureData _$InvestmentTenureDataFromJson(Map<String, dynamic> json) {
  return _InvestmentTenureData.fromJson(json);
}

/// @nodoc
mixin _$InvestmentTenureData {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: "profit_percentage")
  int? get profitPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this InvestmentTenureData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvestmentTenureData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvestmentTenureDataCopyWith<InvestmentTenureData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvestmentTenureDataCopyWith<$Res> {
  factory $InvestmentTenureDataCopyWith(InvestmentTenureData value,
          $Res Function(InvestmentTenureData) then) =
      _$InvestmentTenureDataCopyWithImpl<$Res, InvestmentTenureData>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      int? duration,
      @JsonKey(name: "profit_percentage") int? profitPercentage,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class _$InvestmentTenureDataCopyWithImpl<$Res,
        $Val extends InvestmentTenureData>
    implements $InvestmentTenureDataCopyWith<$Res> {
  _$InvestmentTenureDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvestmentTenureData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? duration = freezed,
    Object? profitPercentage = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      profitPercentage: freezed == profitPercentage
          ? _value.profitPercentage
          : profitPercentage // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvestmentTenureDataImplCopyWith<$Res>
    implements $InvestmentTenureDataCopyWith<$Res> {
  factory _$$InvestmentTenureDataImplCopyWith(_$InvestmentTenureDataImpl value,
          $Res Function(_$InvestmentTenureDataImpl) then) =
      __$$InvestmentTenureDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      int? duration,
      @JsonKey(name: "profit_percentage") int? profitPercentage,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class __$$InvestmentTenureDataImplCopyWithImpl<$Res>
    extends _$InvestmentTenureDataCopyWithImpl<$Res, _$InvestmentTenureDataImpl>
    implements _$$InvestmentTenureDataImplCopyWith<$Res> {
  __$$InvestmentTenureDataImplCopyWithImpl(_$InvestmentTenureDataImpl _value,
      $Res Function(_$InvestmentTenureDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvestmentTenureData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? duration = freezed,
    Object? profitPercentage = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$InvestmentTenureDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      profitPercentage: freezed == profitPercentage
          ? _value.profitPercentage
          : profitPercentage // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvestmentTenureDataImpl extends _InvestmentTenureData {
  const _$InvestmentTenureDataImpl(
      {this.id,
      this.name,
      this.duration,
      @JsonKey(name: "profit_percentage") this.profitPercentage,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt})
      : super._();

  factory _$InvestmentTenureDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvestmentTenureDataImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? duration;
  @override
  @JsonKey(name: "profit_percentage")
  final int? profitPercentage;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;

  @override
  String toString() {
    return 'InvestmentTenureData(id: $id, name: $name, duration: $duration, profitPercentage: $profitPercentage, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvestmentTenureDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.profitPercentage, profitPercentage) ||
                other.profitPercentage == profitPercentage) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, duration, profitPercentage, createdAt, updatedAt);

  /// Create a copy of InvestmentTenureData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvestmentTenureDataImplCopyWith<_$InvestmentTenureDataImpl>
      get copyWith =>
          __$$InvestmentTenureDataImplCopyWithImpl<_$InvestmentTenureDataImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvestmentTenureDataImplToJson(
      this,
    );
  }
}

abstract class _InvestmentTenureData extends InvestmentTenureData {
  const factory _InvestmentTenureData(
          {final int? id,
          final String? name,
          final int? duration,
          @JsonKey(name: "profit_percentage") final int? profitPercentage,
          @JsonKey(name: "created_at") final String? createdAt,
          @JsonKey(name: "updated_at") final String? updatedAt}) =
      _$InvestmentTenureDataImpl;
  const _InvestmentTenureData._() : super._();

  factory _InvestmentTenureData.fromJson(Map<String, dynamic> json) =
      _$InvestmentTenureDataImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  int? get duration;
  @override
  @JsonKey(name: "profit_percentage")
  int? get profitPercentage;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;

  /// Create a copy of InvestmentTenureData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvestmentTenureDataImplCopyWith<_$InvestmentTenureDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
