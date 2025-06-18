// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'referee_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RefereeRequestData _$RefereeRequestDataFromJson(Map<String, dynamic> json) {
  return _RefereeRequestData.fromJson(json);
}

/// @nodoc
mixin _$RefereeRequestData {
  int? get id => throw _privateConstructorUsedError;
  RefereeData? get referee =>
      throw _privateConstructorUsedError; // Using your existing RefereeData model
  Investment? get investment =>
      throw _privateConstructorUsedError; // This is null in your example, so it's nullable
  String? get status => throw _privateConstructorUsedError;
  Loan? get loan => throw _privateConstructorUsedError;

  /// Serializes this RefereeRequestData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefereeRequestData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefereeRequestDataCopyWith<RefereeRequestData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefereeRequestDataCopyWith<$Res> {
  factory $RefereeRequestDataCopyWith(
          RefereeRequestData value, $Res Function(RefereeRequestData) then) =
      _$RefereeRequestDataCopyWithImpl<$Res, RefereeRequestData>;
  @useResult
  $Res call(
      {int? id,
      RefereeData? referee,
      Investment? investment,
      String? status,
      Loan? loan});

  $RefereeDataCopyWith<$Res>? get referee;
  $InvestmentCopyWith<$Res>? get investment;
  $LoanCopyWith<$Res>? get loan;
}

/// @nodoc
class _$RefereeRequestDataCopyWithImpl<$Res, $Val extends RefereeRequestData>
    implements $RefereeRequestDataCopyWith<$Res> {
  _$RefereeRequestDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefereeRequestData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? referee = freezed,
    Object? investment = freezed,
    Object? status = freezed,
    Object? loan = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      referee: freezed == referee
          ? _value.referee
          : referee // ignore: cast_nullable_to_non_nullable
              as RefereeData?,
      investment: freezed == investment
          ? _value.investment
          : investment // ignore: cast_nullable_to_non_nullable
              as Investment?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      loan: freezed == loan
          ? _value.loan
          : loan // ignore: cast_nullable_to_non_nullable
              as Loan?,
    ) as $Val);
  }

  /// Create a copy of RefereeRequestData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RefereeDataCopyWith<$Res>? get referee {
    if (_value.referee == null) {
      return null;
    }

    return $RefereeDataCopyWith<$Res>(_value.referee!, (value) {
      return _then(_value.copyWith(referee: value) as $Val);
    });
  }

  /// Create a copy of RefereeRequestData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InvestmentCopyWith<$Res>? get investment {
    if (_value.investment == null) {
      return null;
    }

    return $InvestmentCopyWith<$Res>(_value.investment!, (value) {
      return _then(_value.copyWith(investment: value) as $Val);
    });
  }

  /// Create a copy of RefereeRequestData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoanCopyWith<$Res>? get loan {
    if (_value.loan == null) {
      return null;
    }

    return $LoanCopyWith<$Res>(_value.loan!, (value) {
      return _then(_value.copyWith(loan: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RefereeRequestDataImplCopyWith<$Res>
    implements $RefereeRequestDataCopyWith<$Res> {
  factory _$$RefereeRequestDataImplCopyWith(_$RefereeRequestDataImpl value,
          $Res Function(_$RefereeRequestDataImpl) then) =
      __$$RefereeRequestDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      RefereeData? referee,
      Investment? investment,
      String? status,
      Loan? loan});

  @override
  $RefereeDataCopyWith<$Res>? get referee;
  @override
  $InvestmentCopyWith<$Res>? get investment;
  @override
  $LoanCopyWith<$Res>? get loan;
}

/// @nodoc
class __$$RefereeRequestDataImplCopyWithImpl<$Res>
    extends _$RefereeRequestDataCopyWithImpl<$Res, _$RefereeRequestDataImpl>
    implements _$$RefereeRequestDataImplCopyWith<$Res> {
  __$$RefereeRequestDataImplCopyWithImpl(_$RefereeRequestDataImpl _value,
      $Res Function(_$RefereeRequestDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefereeRequestData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? referee = freezed,
    Object? investment = freezed,
    Object? status = freezed,
    Object? loan = freezed,
  }) {
    return _then(_$RefereeRequestDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      referee: freezed == referee
          ? _value.referee
          : referee // ignore: cast_nullable_to_non_nullable
              as RefereeData?,
      investment: freezed == investment
          ? _value.investment
          : investment // ignore: cast_nullable_to_non_nullable
              as Investment?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      loan: freezed == loan
          ? _value.loan
          : loan // ignore: cast_nullable_to_non_nullable
              as Loan?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefereeRequestDataImpl
    with DiagnosticableTreeMixin
    implements _RefereeRequestData {
  const _$RefereeRequestDataImpl(
      {this.id, this.referee, this.investment, this.status, this.loan});

  factory _$RefereeRequestDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefereeRequestDataImplFromJson(json);

  @override
  final int? id;
  @override
  final RefereeData? referee;
// Using your existing RefereeData model
  @override
  final Investment? investment;
// This is null in your example, so it's nullable
  @override
  final String? status;
  @override
  final Loan? loan;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RefereeRequestData(id: $id, referee: $referee, investment: $investment, status: $status, loan: $loan)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RefereeRequestData'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('referee', referee))
      ..add(DiagnosticsProperty('investment', investment))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('loan', loan));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefereeRequestDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.referee, referee) || other.referee == referee) &&
            (identical(other.investment, investment) ||
                other.investment == investment) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.loan, loan) || other.loan == loan));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, referee, investment, status, loan);

  /// Create a copy of RefereeRequestData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefereeRequestDataImplCopyWith<_$RefereeRequestDataImpl> get copyWith =>
      __$$RefereeRequestDataImplCopyWithImpl<_$RefereeRequestDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefereeRequestDataImplToJson(
      this,
    );
  }
}

abstract class _RefereeRequestData implements RefereeRequestData {
  const factory _RefereeRequestData(
      {final int? id,
      final RefereeData? referee,
      final Investment? investment,
      final String? status,
      final Loan? loan}) = _$RefereeRequestDataImpl;

  factory _RefereeRequestData.fromJson(Map<String, dynamic> json) =
      _$RefereeRequestDataImpl.fromJson;

  @override
  int? get id;
  @override
  RefereeData? get referee; // Using your existing RefereeData model
  @override
  Investment? get investment; // This is null in your example, so it's nullable
  @override
  String? get status;
  @override
  Loan? get loan;

  /// Create a copy of RefereeRequestData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefereeRequestDataImplCopyWith<_$RefereeRequestDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Investment _$InvestmentFromJson(Map<String, dynamic> json) {
  return _Investment.fromJson(json);
}

/// @nodoc
mixin _$Investment {
// Add fields here if investment can have data (e.g., id, amount, etc.)
  int? get id => throw _privateConstructorUsedError;

  /// Serializes this Investment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Investment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvestmentCopyWith<Investment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvestmentCopyWith<$Res> {
  factory $InvestmentCopyWith(
          Investment value, $Res Function(Investment) then) =
      _$InvestmentCopyWithImpl<$Res, Investment>;
  @useResult
  $Res call({int? id});
}

/// @nodoc
class _$InvestmentCopyWithImpl<$Res, $Val extends Investment>
    implements $InvestmentCopyWith<$Res> {
  _$InvestmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Investment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvestmentImplCopyWith<$Res>
    implements $InvestmentCopyWith<$Res> {
  factory _$$InvestmentImplCopyWith(
          _$InvestmentImpl value, $Res Function(_$InvestmentImpl) then) =
      __$$InvestmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$InvestmentImplCopyWithImpl<$Res>
    extends _$InvestmentCopyWithImpl<$Res, _$InvestmentImpl>
    implements _$$InvestmentImplCopyWith<$Res> {
  __$$InvestmentImplCopyWithImpl(
      _$InvestmentImpl _value, $Res Function(_$InvestmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Investment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$InvestmentImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvestmentImpl with DiagnosticableTreeMixin implements _Investment {
  const _$InvestmentImpl({this.id});

  factory _$InvestmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvestmentImplFromJson(json);

// Add fields here if investment can have data (e.g., id, amount, etc.)
  @override
  final int? id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Investment(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Investment'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvestmentImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of Investment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvestmentImplCopyWith<_$InvestmentImpl> get copyWith =>
      __$$InvestmentImplCopyWithImpl<_$InvestmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvestmentImplToJson(
      this,
    );
  }
}

abstract class _Investment implements Investment {
  const factory _Investment({final int? id}) = _$InvestmentImpl;

  factory _Investment.fromJson(Map<String, dynamic> json) =
      _$InvestmentImpl.fromJson;

// Add fields here if investment can have data (e.g., id, amount, etc.)
  @override
  int? get id;

  /// Create a copy of Investment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvestmentImplCopyWith<_$InvestmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Loan _$LoanFromJson(Map<String, dynamic> json) {
  return _Loan.fromJson(json);
}

/// @nodoc
mixin _$Loan {
  int? get id => throw _privateConstructorUsedError;
  String? get lid => throw _privateConstructorUsedError;
  @JsonKey(name: "loan_type")
  String? get loanType => throw _privateConstructorUsedError;
  double? get amount =>
      throw _privateConstructorUsedError; // Assuming amount could be a double
  int? get duration => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  LoanUser? get user => throw _privateConstructorUsedError;

  /// Serializes this Loan to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Loan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoanCopyWith<Loan> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanCopyWith<$Res> {
  factory $LoanCopyWith(Loan value, $Res Function(Loan) then) =
      _$LoanCopyWithImpl<$Res, Loan>;
  @useResult
  $Res call(
      {int? id,
      String? lid,
      @JsonKey(name: "loan_type") String? loanType,
      double? amount,
      int? duration,
      String? status,
      LoanUser? user});

  $LoanUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$LoanCopyWithImpl<$Res, $Val extends Loan>
    implements $LoanCopyWith<$Res> {
  _$LoanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Loan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? lid = freezed,
    Object? loanType = freezed,
    Object? amount = freezed,
    Object? duration = freezed,
    Object? status = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      lid: freezed == lid
          ? _value.lid
          : lid // ignore: cast_nullable_to_non_nullable
              as String?,
      loanType: freezed == loanType
          ? _value.loanType
          : loanType // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as LoanUser?,
    ) as $Val);
  }

  /// Create a copy of Loan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoanUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $LoanUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoanImplCopyWith<$Res> implements $LoanCopyWith<$Res> {
  factory _$$LoanImplCopyWith(
          _$LoanImpl value, $Res Function(_$LoanImpl) then) =
      __$$LoanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? lid,
      @JsonKey(name: "loan_type") String? loanType,
      double? amount,
      int? duration,
      String? status,
      LoanUser? user});

  @override
  $LoanUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$LoanImplCopyWithImpl<$Res>
    extends _$LoanCopyWithImpl<$Res, _$LoanImpl>
    implements _$$LoanImplCopyWith<$Res> {
  __$$LoanImplCopyWithImpl(_$LoanImpl _value, $Res Function(_$LoanImpl) _then)
      : super(_value, _then);

  /// Create a copy of Loan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? lid = freezed,
    Object? loanType = freezed,
    Object? amount = freezed,
    Object? duration = freezed,
    Object? status = freezed,
    Object? user = freezed,
  }) {
    return _then(_$LoanImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      lid: freezed == lid
          ? _value.lid
          : lid // ignore: cast_nullable_to_non_nullable
              as String?,
      loanType: freezed == loanType
          ? _value.loanType
          : loanType // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as LoanUser?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoanImpl with DiagnosticableTreeMixin implements _Loan {
  const _$LoanImpl(
      {this.id,
      this.lid,
      @JsonKey(name: "loan_type") this.loanType,
      this.amount,
      this.duration,
      this.status,
      this.user});

  factory _$LoanImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoanImplFromJson(json);

  @override
  final int? id;
  @override
  final String? lid;
  @override
  @JsonKey(name: "loan_type")
  final String? loanType;
  @override
  final double? amount;
// Assuming amount could be a double
  @override
  final int? duration;
  @override
  final String? status;
  @override
  final LoanUser? user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Loan(id: $id, lid: $lid, loanType: $loanType, amount: $amount, duration: $duration, status: $status, user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Loan'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('lid', lid))
      ..add(DiagnosticsProperty('loanType', loanType))
      ..add(DiagnosticsProperty('amount', amount))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoanImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lid, lid) || other.lid == lid) &&
            (identical(other.loanType, loanType) ||
                other.loanType == loanType) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, lid, loanType, amount, duration, status, user);

  /// Create a copy of Loan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoanImplCopyWith<_$LoanImpl> get copyWith =>
      __$$LoanImplCopyWithImpl<_$LoanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoanImplToJson(
      this,
    );
  }
}

abstract class _Loan implements Loan {
  const factory _Loan(
      {final int? id,
      final String? lid,
      @JsonKey(name: "loan_type") final String? loanType,
      final double? amount,
      final int? duration,
      final String? status,
      final LoanUser? user}) = _$LoanImpl;

  factory _Loan.fromJson(Map<String, dynamic> json) = _$LoanImpl.fromJson;

  @override
  int? get id;
  @override
  String? get lid;
  @override
  @JsonKey(name: "loan_type")
  String? get loanType;
  @override
  double? get amount; // Assuming amount could be a double
  @override
  int? get duration;
  @override
  String? get status;
  @override
  LoanUser? get user;

  /// Create a copy of Loan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoanImplCopyWith<_$LoanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LoanUser _$LoanUserFromJson(Map<String, dynamic> json) {
  return _LoanUser.fromJson(json);
}

/// @nodoc
mixin _$LoanUser {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "ir_number")
  String? get irNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "first_name")
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "last_name")
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "image_url")
  String? get imageUrl => throw _privateConstructorUsedError;

  /// Serializes this LoanUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoanUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoanUserCopyWith<LoanUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanUserCopyWith<$Res> {
  factory $LoanUserCopyWith(LoanUser value, $Res Function(LoanUser) then) =
      _$LoanUserCopyWithImpl<$Res, LoanUser>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "ir_number") String? irNumber,
      @JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "last_name") String? lastName,
      @JsonKey(name: "image_url") String? imageUrl});
}

/// @nodoc
class _$LoanUserCopyWithImpl<$Res, $Val extends LoanUser>
    implements $LoanUserCopyWith<$Res> {
  _$LoanUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoanUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? irNumber = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? imageUrl = freezed,
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
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoanUserImplCopyWith<$Res>
    implements $LoanUserCopyWith<$Res> {
  factory _$$LoanUserImplCopyWith(
          _$LoanUserImpl value, $Res Function(_$LoanUserImpl) then) =
      __$$LoanUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "ir_number") String? irNumber,
      @JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "last_name") String? lastName,
      @JsonKey(name: "image_url") String? imageUrl});
}

/// @nodoc
class __$$LoanUserImplCopyWithImpl<$Res>
    extends _$LoanUserCopyWithImpl<$Res, _$LoanUserImpl>
    implements _$$LoanUserImplCopyWith<$Res> {
  __$$LoanUserImplCopyWithImpl(
      _$LoanUserImpl _value, $Res Function(_$LoanUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoanUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? irNumber = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_$LoanUserImpl(
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
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoanUserImpl with DiagnosticableTreeMixin implements _LoanUser {
  const _$LoanUserImpl(
      {this.id,
      @JsonKey(name: "ir_number") this.irNumber,
      @JsonKey(name: "first_name") this.firstName,
      @JsonKey(name: "last_name") this.lastName,
      @JsonKey(name: "image_url") this.imageUrl});

  factory _$LoanUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoanUserImplFromJson(json);

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
  @JsonKey(name: "image_url")
  final String? imageUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoanUser(id: $id, irNumber: $irNumber, firstName: $firstName, lastName: $lastName, imageUrl: $imageUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoanUser'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('irNumber', irNumber))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('imageUrl', imageUrl));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoanUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.irNumber, irNumber) ||
                other.irNumber == irNumber) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, irNumber, firstName, lastName, imageUrl);

  /// Create a copy of LoanUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoanUserImplCopyWith<_$LoanUserImpl> get copyWith =>
      __$$LoanUserImplCopyWithImpl<_$LoanUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoanUserImplToJson(
      this,
    );
  }
}

abstract class _LoanUser implements LoanUser {
  const factory _LoanUser(
      {final int? id,
      @JsonKey(name: "ir_number") final String? irNumber,
      @JsonKey(name: "first_name") final String? firstName,
      @JsonKey(name: "last_name") final String? lastName,
      @JsonKey(name: "image_url") final String? imageUrl}) = _$LoanUserImpl;

  factory _LoanUser.fromJson(Map<String, dynamic> json) =
      _$LoanUserImpl.fromJson;

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
  @override
  @JsonKey(name: "image_url")
  String? get imageUrl;

  /// Create a copy of LoanUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoanUserImplCopyWith<_$LoanUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
