// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransactionData _$TransactionDataFromJson(Map<String, dynamic> json) {
  return _TransactionData.fromJson(json);
}

/// @nodoc
mixin _$TransactionData {
  int? get id => throw _privateConstructorUsedError;
  String? get tid => throw _privateConstructorUsedError;
  @JsonKey(name: "account_type")
  String? get accountType => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "balance_before")
  double? get balanceBefore => throw _privateConstructorUsedError;
  @JsonKey(name: "balance_after")
  double? get balanceAfter => throw _privateConstructorUsedError;
  @JsonKey(name: "lien_balance_before")
  double? get lienBalanceBefore => throw _privateConstructorUsedError;
  @JsonKey(name: "lien_balance_after")
  double? get lienBalanceAfter => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "transaction_type")
  String? get transactionType => throw _privateConstructorUsedError;
  @JsonKey(name: "operation_type")
  String? get operationType => throw _privateConstructorUsedError;
  TransactionUser? get user =>
      throw _privateConstructorUsedError; // Nested user object for the transaction
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this TransactionData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TransactionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionDataCopyWith<TransactionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDataCopyWith<$Res> {
  factory $TransactionDataCopyWith(
          TransactionData value, $Res Function(TransactionData) then) =
      _$TransactionDataCopyWithImpl<$Res, TransactionData>;
  @useResult
  $Res call(
      {int? id,
      String? tid,
      @JsonKey(name: "account_type") String? accountType,
      double? amount,
      @JsonKey(name: "balance_before") double? balanceBefore,
      @JsonKey(name: "balance_after") double? balanceAfter,
      @JsonKey(name: "lien_balance_before") double? lienBalanceBefore,
      @JsonKey(name: "lien_balance_after") double? lienBalanceAfter,
      String? description,
      @JsonKey(name: "transaction_type") String? transactionType,
      @JsonKey(name: "operation_type") String? operationType,
      TransactionUser? user,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt});

  $TransactionUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$TransactionDataCopyWithImpl<$Res, $Val extends TransactionData>
    implements $TransactionDataCopyWith<$Res> {
  _$TransactionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tid = freezed,
    Object? accountType = freezed,
    Object? amount = freezed,
    Object? balanceBefore = freezed,
    Object? balanceAfter = freezed,
    Object? lienBalanceBefore = freezed,
    Object? lienBalanceAfter = freezed,
    Object? description = freezed,
    Object? transactionType = freezed,
    Object? operationType = freezed,
    Object? user = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      tid: freezed == tid
          ? _value.tid
          : tid // ignore: cast_nullable_to_non_nullable
              as String?,
      accountType: freezed == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      balanceBefore: freezed == balanceBefore
          ? _value.balanceBefore
          : balanceBefore // ignore: cast_nullable_to_non_nullable
              as double?,
      balanceAfter: freezed == balanceAfter
          ? _value.balanceAfter
          : balanceAfter // ignore: cast_nullable_to_non_nullable
              as double?,
      lienBalanceBefore: freezed == lienBalanceBefore
          ? _value.lienBalanceBefore
          : lienBalanceBefore // ignore: cast_nullable_to_non_nullable
              as double?,
      lienBalanceAfter: freezed == lienBalanceAfter
          ? _value.lienBalanceAfter
          : lienBalanceAfter // ignore: cast_nullable_to_non_nullable
              as double?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionType: freezed == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as String?,
      operationType: freezed == operationType
          ? _value.operationType
          : operationType // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as TransactionUser?,
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

  /// Create a copy of TransactionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $TransactionUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransactionDataImplCopyWith<$Res>
    implements $TransactionDataCopyWith<$Res> {
  factory _$$TransactionDataImplCopyWith(_$TransactionDataImpl value,
          $Res Function(_$TransactionDataImpl) then) =
      __$$TransactionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? tid,
      @JsonKey(name: "account_type") String? accountType,
      double? amount,
      @JsonKey(name: "balance_before") double? balanceBefore,
      @JsonKey(name: "balance_after") double? balanceAfter,
      @JsonKey(name: "lien_balance_before") double? lienBalanceBefore,
      @JsonKey(name: "lien_balance_after") double? lienBalanceAfter,
      String? description,
      @JsonKey(name: "transaction_type") String? transactionType,
      @JsonKey(name: "operation_type") String? operationType,
      TransactionUser? user,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt});

  @override
  $TransactionUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$TransactionDataImplCopyWithImpl<$Res>
    extends _$TransactionDataCopyWithImpl<$Res, _$TransactionDataImpl>
    implements _$$TransactionDataImplCopyWith<$Res> {
  __$$TransactionDataImplCopyWithImpl(
      _$TransactionDataImpl _value, $Res Function(_$TransactionDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tid = freezed,
    Object? accountType = freezed,
    Object? amount = freezed,
    Object? balanceBefore = freezed,
    Object? balanceAfter = freezed,
    Object? lienBalanceBefore = freezed,
    Object? lienBalanceAfter = freezed,
    Object? description = freezed,
    Object? transactionType = freezed,
    Object? operationType = freezed,
    Object? user = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$TransactionDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      tid: freezed == tid
          ? _value.tid
          : tid // ignore: cast_nullable_to_non_nullable
              as String?,
      accountType: freezed == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      balanceBefore: freezed == balanceBefore
          ? _value.balanceBefore
          : balanceBefore // ignore: cast_nullable_to_non_nullable
              as double?,
      balanceAfter: freezed == balanceAfter
          ? _value.balanceAfter
          : balanceAfter // ignore: cast_nullable_to_non_nullable
              as double?,
      lienBalanceBefore: freezed == lienBalanceBefore
          ? _value.lienBalanceBefore
          : lienBalanceBefore // ignore: cast_nullable_to_non_nullable
              as double?,
      lienBalanceAfter: freezed == lienBalanceAfter
          ? _value.lienBalanceAfter
          : lienBalanceAfter // ignore: cast_nullable_to_non_nullable
              as double?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionType: freezed == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as String?,
      operationType: freezed == operationType
          ? _value.operationType
          : operationType // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as TransactionUser?,
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
class _$TransactionDataImpl extends _TransactionData
    with DiagnosticableTreeMixin {
  const _$TransactionDataImpl(
      {this.id,
      this.tid,
      @JsonKey(name: "account_type") this.accountType,
      this.amount,
      @JsonKey(name: "balance_before") this.balanceBefore,
      @JsonKey(name: "balance_after") this.balanceAfter,
      @JsonKey(name: "lien_balance_before") this.lienBalanceBefore,
      @JsonKey(name: "lien_balance_after") this.lienBalanceAfter,
      this.description,
      @JsonKey(name: "transaction_type") this.transactionType,
      @JsonKey(name: "operation_type") this.operationType,
      this.user,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt})
      : super._();

  factory _$TransactionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionDataImplFromJson(json);

  @override
  final int? id;
  @override
  final String? tid;
  @override
  @JsonKey(name: "account_type")
  final String? accountType;
  @override
  final double? amount;
  @override
  @JsonKey(name: "balance_before")
  final double? balanceBefore;
  @override
  @JsonKey(name: "balance_after")
  final double? balanceAfter;
  @override
  @JsonKey(name: "lien_balance_before")
  final double? lienBalanceBefore;
  @override
  @JsonKey(name: "lien_balance_after")
  final double? lienBalanceAfter;
  @override
  final String? description;
  @override
  @JsonKey(name: "transaction_type")
  final String? transactionType;
  @override
  @JsonKey(name: "operation_type")
  final String? operationType;
  @override
  final TransactionUser? user;
// Nested user object for the transaction
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransactionData(id: $id, tid: $tid, accountType: $accountType, amount: $amount, balanceBefore: $balanceBefore, balanceAfter: $balanceAfter, lienBalanceBefore: $lienBalanceBefore, lienBalanceAfter: $lienBalanceAfter, description: $description, transactionType: $transactionType, operationType: $operationType, user: $user, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransactionData'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('tid', tid))
      ..add(DiagnosticsProperty('accountType', accountType))
      ..add(DiagnosticsProperty('amount', amount))
      ..add(DiagnosticsProperty('balanceBefore', balanceBefore))
      ..add(DiagnosticsProperty('balanceAfter', balanceAfter))
      ..add(DiagnosticsProperty('lienBalanceBefore', lienBalanceBefore))
      ..add(DiagnosticsProperty('lienBalanceAfter', lienBalanceAfter))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('transactionType', transactionType))
      ..add(DiagnosticsProperty('operationType', operationType))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tid, tid) || other.tid == tid) &&
            (identical(other.accountType, accountType) ||
                other.accountType == accountType) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.balanceBefore, balanceBefore) ||
                other.balanceBefore == balanceBefore) &&
            (identical(other.balanceAfter, balanceAfter) ||
                other.balanceAfter == balanceAfter) &&
            (identical(other.lienBalanceBefore, lienBalanceBefore) ||
                other.lienBalanceBefore == lienBalanceBefore) &&
            (identical(other.lienBalanceAfter, lienBalanceAfter) ||
                other.lienBalanceAfter == lienBalanceAfter) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType) &&
            (identical(other.operationType, operationType) ||
                other.operationType == operationType) &&
            (identical(other.user, user) || other.user == user) &&
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
      tid,
      accountType,
      amount,
      balanceBefore,
      balanceAfter,
      lienBalanceBefore,
      lienBalanceAfter,
      description,
      transactionType,
      operationType,
      user,
      createdAt,
      updatedAt);

  /// Create a copy of TransactionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionDataImplCopyWith<_$TransactionDataImpl> get copyWith =>
      __$$TransactionDataImplCopyWithImpl<_$TransactionDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionDataImplToJson(
      this,
    );
  }
}

abstract class _TransactionData extends TransactionData {
  const factory _TransactionData(
          {final int? id,
          final String? tid,
          @JsonKey(name: "account_type") final String? accountType,
          final double? amount,
          @JsonKey(name: "balance_before") final double? balanceBefore,
          @JsonKey(name: "balance_after") final double? balanceAfter,
          @JsonKey(name: "lien_balance_before") final double? lienBalanceBefore,
          @JsonKey(name: "lien_balance_after") final double? lienBalanceAfter,
          final String? description,
          @JsonKey(name: "transaction_type") final String? transactionType,
          @JsonKey(name: "operation_type") final String? operationType,
          final TransactionUser? user,
          @JsonKey(name: "created_at") final DateTime? createdAt,
          @JsonKey(name: "updated_at") final DateTime? updatedAt}) =
      _$TransactionDataImpl;
  const _TransactionData._() : super._();

  factory _TransactionData.fromJson(Map<String, dynamic> json) =
      _$TransactionDataImpl.fromJson;

  @override
  int? get id;
  @override
  String? get tid;
  @override
  @JsonKey(name: "account_type")
  String? get accountType;
  @override
  double? get amount;
  @override
  @JsonKey(name: "balance_before")
  double? get balanceBefore;
  @override
  @JsonKey(name: "balance_after")
  double? get balanceAfter;
  @override
  @JsonKey(name: "lien_balance_before")
  double? get lienBalanceBefore;
  @override
  @JsonKey(name: "lien_balance_after")
  double? get lienBalanceAfter;
  @override
  String? get description;
  @override
  @JsonKey(name: "transaction_type")
  String? get transactionType;
  @override
  @JsonKey(name: "operation_type")
  String? get operationType;
  @override
  TransactionUser? get user; // Nested user object for the transaction
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt;

  /// Create a copy of TransactionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionDataImplCopyWith<_$TransactionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TransactionUser _$TransactionUserFromJson(Map<String, dynamic> json) {
  return _TransactionUser.fromJson(json);
}

/// @nodoc
mixin _$TransactionUser {
  @JsonKey(name: "first_name")
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "last_name")
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "ir_number")
  String? get irNumber => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  /// Serializes this TransactionUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TransactionUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionUserCopyWith<TransactionUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionUserCopyWith<$Res> {
  factory $TransactionUserCopyWith(
          TransactionUser value, $Res Function(TransactionUser) then) =
      _$TransactionUserCopyWithImpl<$Res, TransactionUser>;
  @useResult
  $Res call(
      {@JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "last_name") String? lastName,
      @JsonKey(name: "ir_number") String? irNumber,
      int? id});
}

/// @nodoc
class _$TransactionUserCopyWithImpl<$Res, $Val extends TransactionUser>
    implements $TransactionUserCopyWith<$Res> {
  _$TransactionUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? irNumber = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      irNumber: freezed == irNumber
          ? _value.irNumber
          : irNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionUserImplCopyWith<$Res>
    implements $TransactionUserCopyWith<$Res> {
  factory _$$TransactionUserImplCopyWith(_$TransactionUserImpl value,
          $Res Function(_$TransactionUserImpl) then) =
      __$$TransactionUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "last_name") String? lastName,
      @JsonKey(name: "ir_number") String? irNumber,
      int? id});
}

/// @nodoc
class __$$TransactionUserImplCopyWithImpl<$Res>
    extends _$TransactionUserCopyWithImpl<$Res, _$TransactionUserImpl>
    implements _$$TransactionUserImplCopyWith<$Res> {
  __$$TransactionUserImplCopyWithImpl(
      _$TransactionUserImpl _value, $Res Function(_$TransactionUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? irNumber = freezed,
    Object? id = freezed,
  }) {
    return _then(_$TransactionUserImpl(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      irNumber: freezed == irNumber
          ? _value.irNumber
          : irNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionUserImpl extends _TransactionUser
    with DiagnosticableTreeMixin {
  const _$TransactionUserImpl(
      {@JsonKey(name: "first_name") this.firstName,
      @JsonKey(name: "last_name") this.lastName,
      @JsonKey(name: "ir_number") this.irNumber,
      this.id})
      : super._();

  factory _$TransactionUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionUserImplFromJson(json);

  @override
  @JsonKey(name: "first_name")
  final String? firstName;
  @override
  @JsonKey(name: "last_name")
  final String? lastName;
  @override
  @JsonKey(name: "ir_number")
  final String? irNumber;
  @override
  final int? id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransactionUser(firstName: $firstName, lastName: $lastName, irNumber: $irNumber, id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransactionUser'))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('irNumber', irNumber))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionUserImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.irNumber, irNumber) ||
                other.irNumber == irNumber) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, firstName, lastName, irNumber, id);

  /// Create a copy of TransactionUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionUserImplCopyWith<_$TransactionUserImpl> get copyWith =>
      __$$TransactionUserImplCopyWithImpl<_$TransactionUserImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionUserImplToJson(
      this,
    );
  }
}

abstract class _TransactionUser extends TransactionUser {
  const factory _TransactionUser(
      {@JsonKey(name: "first_name") final String? firstName,
      @JsonKey(name: "last_name") final String? lastName,
      @JsonKey(name: "ir_number") final String? irNumber,
      final int? id}) = _$TransactionUserImpl;
  const _TransactionUser._() : super._();

  factory _TransactionUser.fromJson(Map<String, dynamic> json) =
      _$TransactionUserImpl.fromJson;

  @override
  @JsonKey(name: "first_name")
  String? get firstName;
  @override
  @JsonKey(name: "last_name")
  String? get lastName;
  @override
  @JsonKey(name: "ir_number")
  String? get irNumber;
  @override
  int? get id;

  /// Create a copy of TransactionUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionUserImplCopyWith<_$TransactionUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
