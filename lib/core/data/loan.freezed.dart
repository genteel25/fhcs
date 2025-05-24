// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoanData _$LoanDataFromJson(Map<String, dynamic> json) {
  return _LoanData.fromJson(json);
}

/// @nodoc
mixin _$LoanData {
  int? get id => throw _privateConstructorUsedError;
  String? get lid => throw _privateConstructorUsedError;
  @JsonKey(name: "loan_type")
  String? get loanType => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "amount_disbursed")
  double? get amountDisbursed => throw _privateConstructorUsedError;
  @JsonKey(name: "amount_repaid")
  double? get amountRePaid => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "approval_status")
  String? get approvalStatus => throw _privateConstructorUsedError;
  LoanUser? get user =>
      throw _privateConstructorUsedError; // Nested user details for the loan
  List<dynamic>? get referees =>
      throw _privateConstructorUsedError; // Assuming referees is a list of dynamic items (can be List<String>? if it's names)
  @JsonKey(name: "payslip_url")
  String? get payslipUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "annual_salary")
  double? get annualSalary => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "can_approve")
  bool? get canApprove => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "application_fee")
  double? get applicationFee => throw _privateConstructorUsedError;
  @JsonKey(name: "monthly_repayment")
  double? get monthlyRepayment => throw _privateConstructorUsedError;
  @JsonKey(name: "savings_balance")
  double? get savingsBalance => throw _privateConstructorUsedError;
  @JsonKey(name: "loan_limit")
  double? get loanLimit => throw _privateConstructorUsedError;
  @JsonKey(name: "next_approval_step")
  ApprovalStep? get nextApprovalStep =>
      throw _privateConstructorUsedError; // Nullable, can be dynamic or a specific type if defined
  @JsonKey(name: "current_approval_step")
  ApprovalStep? get currentApprovalStep => throw _privateConstructorUsedError;

  /// Serializes this LoanData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoanData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoanDataCopyWith<LoanData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanDataCopyWith<$Res> {
  factory $LoanDataCopyWith(LoanData value, $Res Function(LoanData) then) =
      _$LoanDataCopyWithImpl<$Res, LoanData>;
  @useResult
  $Res call(
      {int? id,
      String? lid,
      @JsonKey(name: "loan_type") String? loanType,
      double? amount,
      @JsonKey(name: "amount_disbursed") double? amountDisbursed,
      @JsonKey(name: "amount_repaid") double? amountRePaid,
      int? duration,
      String? status,
      @JsonKey(name: "approval_status") String? approvalStatus,
      LoanUser? user,
      List<dynamic>? referees,
      @JsonKey(name: "payslip_url") String? payslipUrl,
      @JsonKey(name: "annual_salary") double? annualSalary,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt,
      @JsonKey(name: "can_approve") bool? canApprove,
      String? description,
      @JsonKey(name: "application_fee") double? applicationFee,
      @JsonKey(name: "monthly_repayment") double? monthlyRepayment,
      @JsonKey(name: "savings_balance") double? savingsBalance,
      @JsonKey(name: "loan_limit") double? loanLimit,
      @JsonKey(name: "next_approval_step") ApprovalStep? nextApprovalStep,
      @JsonKey(name: "current_approval_step")
      ApprovalStep? currentApprovalStep});

  $LoanUserCopyWith<$Res>? get user;
  $ApprovalStepCopyWith<$Res>? get nextApprovalStep;
  $ApprovalStepCopyWith<$Res>? get currentApprovalStep;
}

/// @nodoc
class _$LoanDataCopyWithImpl<$Res, $Val extends LoanData>
    implements $LoanDataCopyWith<$Res> {
  _$LoanDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoanData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? lid = freezed,
    Object? loanType = freezed,
    Object? amount = freezed,
    Object? amountDisbursed = freezed,
    Object? amountRePaid = freezed,
    Object? duration = freezed,
    Object? status = freezed,
    Object? approvalStatus = freezed,
    Object? user = freezed,
    Object? referees = freezed,
    Object? payslipUrl = freezed,
    Object? annualSalary = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? canApprove = freezed,
    Object? description = freezed,
    Object? applicationFee = freezed,
    Object? monthlyRepayment = freezed,
    Object? savingsBalance = freezed,
    Object? loanLimit = freezed,
    Object? nextApprovalStep = freezed,
    Object? currentApprovalStep = freezed,
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
      amountDisbursed: freezed == amountDisbursed
          ? _value.amountDisbursed
          : amountDisbursed // ignore: cast_nullable_to_non_nullable
              as double?,
      amountRePaid: freezed == amountRePaid
          ? _value.amountRePaid
          : amountRePaid // ignore: cast_nullable_to_non_nullable
              as double?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      approvalStatus: freezed == approvalStatus
          ? _value.approvalStatus
          : approvalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as LoanUser?,
      referees: freezed == referees
          ? _value.referees
          : referees // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      payslipUrl: freezed == payslipUrl
          ? _value.payslipUrl
          : payslipUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      annualSalary: freezed == annualSalary
          ? _value.annualSalary
          : annualSalary // ignore: cast_nullable_to_non_nullable
              as double?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      canApprove: freezed == canApprove
          ? _value.canApprove
          : canApprove // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      applicationFee: freezed == applicationFee
          ? _value.applicationFee
          : applicationFee // ignore: cast_nullable_to_non_nullable
              as double?,
      monthlyRepayment: freezed == monthlyRepayment
          ? _value.monthlyRepayment
          : monthlyRepayment // ignore: cast_nullable_to_non_nullable
              as double?,
      savingsBalance: freezed == savingsBalance
          ? _value.savingsBalance
          : savingsBalance // ignore: cast_nullable_to_non_nullable
              as double?,
      loanLimit: freezed == loanLimit
          ? _value.loanLimit
          : loanLimit // ignore: cast_nullable_to_non_nullable
              as double?,
      nextApprovalStep: freezed == nextApprovalStep
          ? _value.nextApprovalStep
          : nextApprovalStep // ignore: cast_nullable_to_non_nullable
              as ApprovalStep?,
      currentApprovalStep: freezed == currentApprovalStep
          ? _value.currentApprovalStep
          : currentApprovalStep // ignore: cast_nullable_to_non_nullable
              as ApprovalStep?,
    ) as $Val);
  }

  /// Create a copy of LoanData
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

  /// Create a copy of LoanData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalStepCopyWith<$Res>? get nextApprovalStep {
    if (_value.nextApprovalStep == null) {
      return null;
    }

    return $ApprovalStepCopyWith<$Res>(_value.nextApprovalStep!, (value) {
      return _then(_value.copyWith(nextApprovalStep: value) as $Val);
    });
  }

  /// Create a copy of LoanData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalStepCopyWith<$Res>? get currentApprovalStep {
    if (_value.currentApprovalStep == null) {
      return null;
    }

    return $ApprovalStepCopyWith<$Res>(_value.currentApprovalStep!, (value) {
      return _then(_value.copyWith(currentApprovalStep: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoanDataImplCopyWith<$Res>
    implements $LoanDataCopyWith<$Res> {
  factory _$$LoanDataImplCopyWith(
          _$LoanDataImpl value, $Res Function(_$LoanDataImpl) then) =
      __$$LoanDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? lid,
      @JsonKey(name: "loan_type") String? loanType,
      double? amount,
      @JsonKey(name: "amount_disbursed") double? amountDisbursed,
      @JsonKey(name: "amount_repaid") double? amountRePaid,
      int? duration,
      String? status,
      @JsonKey(name: "approval_status") String? approvalStatus,
      LoanUser? user,
      List<dynamic>? referees,
      @JsonKey(name: "payslip_url") String? payslipUrl,
      @JsonKey(name: "annual_salary") double? annualSalary,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt,
      @JsonKey(name: "can_approve") bool? canApprove,
      String? description,
      @JsonKey(name: "application_fee") double? applicationFee,
      @JsonKey(name: "monthly_repayment") double? monthlyRepayment,
      @JsonKey(name: "savings_balance") double? savingsBalance,
      @JsonKey(name: "loan_limit") double? loanLimit,
      @JsonKey(name: "next_approval_step") ApprovalStep? nextApprovalStep,
      @JsonKey(name: "current_approval_step")
      ApprovalStep? currentApprovalStep});

  @override
  $LoanUserCopyWith<$Res>? get user;
  @override
  $ApprovalStepCopyWith<$Res>? get nextApprovalStep;
  @override
  $ApprovalStepCopyWith<$Res>? get currentApprovalStep;
}

/// @nodoc
class __$$LoanDataImplCopyWithImpl<$Res>
    extends _$LoanDataCopyWithImpl<$Res, _$LoanDataImpl>
    implements _$$LoanDataImplCopyWith<$Res> {
  __$$LoanDataImplCopyWithImpl(
      _$LoanDataImpl _value, $Res Function(_$LoanDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoanData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? lid = freezed,
    Object? loanType = freezed,
    Object? amount = freezed,
    Object? amountDisbursed = freezed,
    Object? amountRePaid = freezed,
    Object? duration = freezed,
    Object? status = freezed,
    Object? approvalStatus = freezed,
    Object? user = freezed,
    Object? referees = freezed,
    Object? payslipUrl = freezed,
    Object? annualSalary = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? canApprove = freezed,
    Object? description = freezed,
    Object? applicationFee = freezed,
    Object? monthlyRepayment = freezed,
    Object? savingsBalance = freezed,
    Object? loanLimit = freezed,
    Object? nextApprovalStep = freezed,
    Object? currentApprovalStep = freezed,
  }) {
    return _then(_$LoanDataImpl(
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
      amountDisbursed: freezed == amountDisbursed
          ? _value.amountDisbursed
          : amountDisbursed // ignore: cast_nullable_to_non_nullable
              as double?,
      amountRePaid: freezed == amountRePaid
          ? _value.amountRePaid
          : amountRePaid // ignore: cast_nullable_to_non_nullable
              as double?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      approvalStatus: freezed == approvalStatus
          ? _value.approvalStatus
          : approvalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as LoanUser?,
      referees: freezed == referees
          ? _value._referees
          : referees // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      payslipUrl: freezed == payslipUrl
          ? _value.payslipUrl
          : payslipUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      annualSalary: freezed == annualSalary
          ? _value.annualSalary
          : annualSalary // ignore: cast_nullable_to_non_nullable
              as double?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      canApprove: freezed == canApprove
          ? _value.canApprove
          : canApprove // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      applicationFee: freezed == applicationFee
          ? _value.applicationFee
          : applicationFee // ignore: cast_nullable_to_non_nullable
              as double?,
      monthlyRepayment: freezed == monthlyRepayment
          ? _value.monthlyRepayment
          : monthlyRepayment // ignore: cast_nullable_to_non_nullable
              as double?,
      savingsBalance: freezed == savingsBalance
          ? _value.savingsBalance
          : savingsBalance // ignore: cast_nullable_to_non_nullable
              as double?,
      loanLimit: freezed == loanLimit
          ? _value.loanLimit
          : loanLimit // ignore: cast_nullable_to_non_nullable
              as double?,
      nextApprovalStep: freezed == nextApprovalStep
          ? _value.nextApprovalStep
          : nextApprovalStep // ignore: cast_nullable_to_non_nullable
              as ApprovalStep?,
      currentApprovalStep: freezed == currentApprovalStep
          ? _value.currentApprovalStep
          : currentApprovalStep // ignore: cast_nullable_to_non_nullable
              as ApprovalStep?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoanDataImpl extends _LoanData with DiagnosticableTreeMixin {
  const _$LoanDataImpl(
      {this.id,
      this.lid,
      @JsonKey(name: "loan_type") this.loanType,
      this.amount,
      @JsonKey(name: "amount_disbursed") this.amountDisbursed,
      @JsonKey(name: "amount_repaid") this.amountRePaid,
      this.duration,
      this.status,
      @JsonKey(name: "approval_status") this.approvalStatus,
      this.user,
      final List<dynamic>? referees,
      @JsonKey(name: "payslip_url") this.payslipUrl,
      @JsonKey(name: "annual_salary") this.annualSalary,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "can_approve") this.canApprove,
      this.description,
      @JsonKey(name: "application_fee") this.applicationFee,
      @JsonKey(name: "monthly_repayment") this.monthlyRepayment,
      @JsonKey(name: "savings_balance") this.savingsBalance,
      @JsonKey(name: "loan_limit") this.loanLimit,
      @JsonKey(name: "next_approval_step") this.nextApprovalStep,
      @JsonKey(name: "current_approval_step") this.currentApprovalStep})
      : _referees = referees,
        super._();

  factory _$LoanDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoanDataImplFromJson(json);

  @override
  final int? id;
  @override
  final String? lid;
  @override
  @JsonKey(name: "loan_type")
  final String? loanType;
  @override
  final double? amount;
  @override
  @JsonKey(name: "amount_disbursed")
  final double? amountDisbursed;
  @override
  @JsonKey(name: "amount_repaid")
  final double? amountRePaid;
  @override
  final int? duration;
  @override
  final String? status;
  @override
  @JsonKey(name: "approval_status")
  final String? approvalStatus;
  @override
  final LoanUser? user;
// Nested user details for the loan
  final List<dynamic>? _referees;
// Nested user details for the loan
  @override
  List<dynamic>? get referees {
    final value = _referees;
    if (value == null) return null;
    if (_referees is EqualUnmodifiableListView) return _referees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// Assuming referees is a list of dynamic items (can be List<String>? if it's names)
  @override
  @JsonKey(name: "payslip_url")
  final String? payslipUrl;
  @override
  @JsonKey(name: "annual_salary")
  final double? annualSalary;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "can_approve")
  final bool? canApprove;
  @override
  final String? description;
  @override
  @JsonKey(name: "application_fee")
  final double? applicationFee;
  @override
  @JsonKey(name: "monthly_repayment")
  final double? monthlyRepayment;
  @override
  @JsonKey(name: "savings_balance")
  final double? savingsBalance;
  @override
  @JsonKey(name: "loan_limit")
  final double? loanLimit;
  @override
  @JsonKey(name: "next_approval_step")
  final ApprovalStep? nextApprovalStep;
// Nullable, can be dynamic or a specific type if defined
  @override
  @JsonKey(name: "current_approval_step")
  final ApprovalStep? currentApprovalStep;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoanData(id: $id, lid: $lid, loanType: $loanType, amount: $amount, amountDisbursed: $amountDisbursed, amountRePaid: $amountRePaid, duration: $duration, status: $status, approvalStatus: $approvalStatus, user: $user, referees: $referees, payslipUrl: $payslipUrl, annualSalary: $annualSalary, createdAt: $createdAt, updatedAt: $updatedAt, canApprove: $canApprove, description: $description, applicationFee: $applicationFee, monthlyRepayment: $monthlyRepayment, savingsBalance: $savingsBalance, loanLimit: $loanLimit, nextApprovalStep: $nextApprovalStep, currentApprovalStep: $currentApprovalStep)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoanData'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('lid', lid))
      ..add(DiagnosticsProperty('loanType', loanType))
      ..add(DiagnosticsProperty('amount', amount))
      ..add(DiagnosticsProperty('amountDisbursed', amountDisbursed))
      ..add(DiagnosticsProperty('amountRePaid', amountRePaid))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('approvalStatus', approvalStatus))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('referees', referees))
      ..add(DiagnosticsProperty('payslipUrl', payslipUrl))
      ..add(DiagnosticsProperty('annualSalary', annualSalary))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('canApprove', canApprove))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('applicationFee', applicationFee))
      ..add(DiagnosticsProperty('monthlyRepayment', monthlyRepayment))
      ..add(DiagnosticsProperty('savingsBalance', savingsBalance))
      ..add(DiagnosticsProperty('loanLimit', loanLimit))
      ..add(DiagnosticsProperty('nextApprovalStep', nextApprovalStep))
      ..add(DiagnosticsProperty('currentApprovalStep', currentApprovalStep));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoanDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lid, lid) || other.lid == lid) &&
            (identical(other.loanType, loanType) ||
                other.loanType == loanType) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.amountDisbursed, amountDisbursed) ||
                other.amountDisbursed == amountDisbursed) &&
            (identical(other.amountRePaid, amountRePaid) ||
                other.amountRePaid == amountRePaid) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.approvalStatus, approvalStatus) ||
                other.approvalStatus == approvalStatus) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._referees, _referees) &&
            (identical(other.payslipUrl, payslipUrl) ||
                other.payslipUrl == payslipUrl) &&
            (identical(other.annualSalary, annualSalary) ||
                other.annualSalary == annualSalary) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.canApprove, canApprove) ||
                other.canApprove == canApprove) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.applicationFee, applicationFee) ||
                other.applicationFee == applicationFee) &&
            (identical(other.monthlyRepayment, monthlyRepayment) ||
                other.monthlyRepayment == monthlyRepayment) &&
            (identical(other.savingsBalance, savingsBalance) ||
                other.savingsBalance == savingsBalance) &&
            (identical(other.loanLimit, loanLimit) ||
                other.loanLimit == loanLimit) &&
            (identical(other.nextApprovalStep, nextApprovalStep) ||
                other.nextApprovalStep == nextApprovalStep) &&
            (identical(other.currentApprovalStep, currentApprovalStep) ||
                other.currentApprovalStep == currentApprovalStep));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        lid,
        loanType,
        amount,
        amountDisbursed,
        amountRePaid,
        duration,
        status,
        approvalStatus,
        user,
        const DeepCollectionEquality().hash(_referees),
        payslipUrl,
        annualSalary,
        createdAt,
        updatedAt,
        canApprove,
        description,
        applicationFee,
        monthlyRepayment,
        savingsBalance,
        loanLimit,
        nextApprovalStep,
        currentApprovalStep
      ]);

  /// Create a copy of LoanData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoanDataImplCopyWith<_$LoanDataImpl> get copyWith =>
      __$$LoanDataImplCopyWithImpl<_$LoanDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoanDataImplToJson(
      this,
    );
  }
}

abstract class _LoanData extends LoanData {
  const factory _LoanData(
      {final int? id,
      final String? lid,
      @JsonKey(name: "loan_type") final String? loanType,
      final double? amount,
      @JsonKey(name: "amount_disbursed") final double? amountDisbursed,
      @JsonKey(name: "amount_repaid") final double? amountRePaid,
      final int? duration,
      final String? status,
      @JsonKey(name: "approval_status") final String? approvalStatus,
      final LoanUser? user,
      final List<dynamic>? referees,
      @JsonKey(name: "payslip_url") final String? payslipUrl,
      @JsonKey(name: "annual_salary") final double? annualSalary,
      @JsonKey(name: "created_at") final DateTime? createdAt,
      @JsonKey(name: "updated_at") final DateTime? updatedAt,
      @JsonKey(name: "can_approve") final bool? canApprove,
      final String? description,
      @JsonKey(name: "application_fee") final double? applicationFee,
      @JsonKey(name: "monthly_repayment") final double? monthlyRepayment,
      @JsonKey(name: "savings_balance") final double? savingsBalance,
      @JsonKey(name: "loan_limit") final double? loanLimit,
      @JsonKey(name: "next_approval_step") final ApprovalStep? nextApprovalStep,
      @JsonKey(name: "current_approval_step")
      final ApprovalStep? currentApprovalStep}) = _$LoanDataImpl;
  const _LoanData._() : super._();

  factory _LoanData.fromJson(Map<String, dynamic> json) =
      _$LoanDataImpl.fromJson;

  @override
  int? get id;
  @override
  String? get lid;
  @override
  @JsonKey(name: "loan_type")
  String? get loanType;
  @override
  double? get amount;
  @override
  @JsonKey(name: "amount_disbursed")
  double? get amountDisbursed;
  @override
  @JsonKey(name: "amount_repaid")
  double? get amountRePaid;
  @override
  int? get duration;
  @override
  String? get status;
  @override
  @JsonKey(name: "approval_status")
  String? get approvalStatus;
  @override
  LoanUser? get user; // Nested user details for the loan
  @override
  List<dynamic>?
      get referees; // Assuming referees is a list of dynamic items (can be List<String>? if it's names)
  @override
  @JsonKey(name: "payslip_url")
  String? get payslipUrl;
  @override
  @JsonKey(name: "annual_salary")
  double? get annualSalary;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "can_approve")
  bool? get canApprove;
  @override
  String? get description;
  @override
  @JsonKey(name: "application_fee")
  double? get applicationFee;
  @override
  @JsonKey(name: "monthly_repayment")
  double? get monthlyRepayment;
  @override
  @JsonKey(name: "savings_balance")
  double? get savingsBalance;
  @override
  @JsonKey(name: "loan_limit")
  double? get loanLimit;
  @override
  @JsonKey(name: "next_approval_step")
  ApprovalStep?
      get nextApprovalStep; // Nullable, can be dynamic or a specific type if defined
  @override
  @JsonKey(name: "current_approval_step")
  ApprovalStep? get currentApprovalStep;

  /// Create a copy of LoanData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoanDataImplCopyWith<_$LoanDataImpl> get copyWith =>
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
class _$LoanUserImpl extends _LoanUser with DiagnosticableTreeMixin {
  const _$LoanUserImpl(
      {this.id,
      @JsonKey(name: "ir_number") this.irNumber,
      @JsonKey(name: "first_name") this.firstName,
      @JsonKey(name: "last_name") this.lastName,
      @JsonKey(name: "image_url") this.imageUrl})
      : super._();

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

abstract class _LoanUser extends LoanUser {
  const factory _LoanUser(
      {final int? id,
      @JsonKey(name: "ir_number") final String? irNumber,
      @JsonKey(name: "first_name") final String? firstName,
      @JsonKey(name: "last_name") final String? lastName,
      @JsonKey(name: "image_url") final String? imageUrl}) = _$LoanUserImpl;
  const _LoanUser._() : super._();

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

ApprovalStep _$ApprovalStepFromJson(Map<String, dynamic> json) {
  return _ApprovalStep.fromJson(json);
}

/// @nodoc
mixin _$ApprovalStep {
  int? get order => throw _privateConstructorUsedError;
  List<ApprovalRole>? get roles => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "action_by")
  ApprovalActionBy? get actionBy => throw _privateConstructorUsedError;
  @JsonKey(name: "action_type")
  String? get actionType => throw _privateConstructorUsedError;

  /// Serializes this ApprovalStep to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApprovalStep
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApprovalStepCopyWith<ApprovalStep> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApprovalStepCopyWith<$Res> {
  factory $ApprovalStepCopyWith(
          ApprovalStep value, $Res Function(ApprovalStep) then) =
      _$ApprovalStepCopyWithImpl<$Res, ApprovalStep>;
  @useResult
  $Res call(
      {int? order,
      List<ApprovalRole>? roles,
      String? status,
      @JsonKey(name: "action_by") ApprovalActionBy? actionBy,
      @JsonKey(name: "action_type") String? actionType});

  $ApprovalActionByCopyWith<$Res>? get actionBy;
}

/// @nodoc
class _$ApprovalStepCopyWithImpl<$Res, $Val extends ApprovalStep>
    implements $ApprovalStepCopyWith<$Res> {
  _$ApprovalStepCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApprovalStep
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = freezed,
    Object? roles = freezed,
    Object? status = freezed,
    Object? actionBy = freezed,
    Object? actionType = freezed,
  }) {
    return _then(_value.copyWith(
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      roles: freezed == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<ApprovalRole>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      actionBy: freezed == actionBy
          ? _value.actionBy
          : actionBy // ignore: cast_nullable_to_non_nullable
              as ApprovalActionBy?,
      actionType: freezed == actionType
          ? _value.actionType
          : actionType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of ApprovalStep
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalActionByCopyWith<$Res>? get actionBy {
    if (_value.actionBy == null) {
      return null;
    }

    return $ApprovalActionByCopyWith<$Res>(_value.actionBy!, (value) {
      return _then(_value.copyWith(actionBy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApprovalStepImplCopyWith<$Res>
    implements $ApprovalStepCopyWith<$Res> {
  factory _$$ApprovalStepImplCopyWith(
          _$ApprovalStepImpl value, $Res Function(_$ApprovalStepImpl) then) =
      __$$ApprovalStepImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? order,
      List<ApprovalRole>? roles,
      String? status,
      @JsonKey(name: "action_by") ApprovalActionBy? actionBy,
      @JsonKey(name: "action_type") String? actionType});

  @override
  $ApprovalActionByCopyWith<$Res>? get actionBy;
}

/// @nodoc
class __$$ApprovalStepImplCopyWithImpl<$Res>
    extends _$ApprovalStepCopyWithImpl<$Res, _$ApprovalStepImpl>
    implements _$$ApprovalStepImplCopyWith<$Res> {
  __$$ApprovalStepImplCopyWithImpl(
      _$ApprovalStepImpl _value, $Res Function(_$ApprovalStepImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApprovalStep
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = freezed,
    Object? roles = freezed,
    Object? status = freezed,
    Object? actionBy = freezed,
    Object? actionType = freezed,
  }) {
    return _then(_$ApprovalStepImpl(
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      roles: freezed == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<ApprovalRole>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      actionBy: freezed == actionBy
          ? _value.actionBy
          : actionBy // ignore: cast_nullable_to_non_nullable
              as ApprovalActionBy?,
      actionType: freezed == actionType
          ? _value.actionType
          : actionType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApprovalStepImpl extends _ApprovalStep with DiagnosticableTreeMixin {
  const _$ApprovalStepImpl(
      {this.order,
      final List<ApprovalRole>? roles,
      this.status,
      @JsonKey(name: "action_by") this.actionBy,
      @JsonKey(name: "action_type") this.actionType})
      : _roles = roles,
        super._();

  factory _$ApprovalStepImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApprovalStepImplFromJson(json);

  @override
  final int? order;
  final List<ApprovalRole>? _roles;
  @override
  List<ApprovalRole>? get roles {
    final value = _roles;
    if (value == null) return null;
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? status;
  @override
  @JsonKey(name: "action_by")
  final ApprovalActionBy? actionBy;
  @override
  @JsonKey(name: "action_type")
  final String? actionType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApprovalStep(order: $order, roles: $roles, status: $status, actionBy: $actionBy, actionType: $actionType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApprovalStep'))
      ..add(DiagnosticsProperty('order', order))
      ..add(DiagnosticsProperty('roles', roles))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('actionBy', actionBy))
      ..add(DiagnosticsProperty('actionType', actionType));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApprovalStepImpl &&
            (identical(other.order, order) || other.order == order) &&
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.actionBy, actionBy) ||
                other.actionBy == actionBy) &&
            (identical(other.actionType, actionType) ||
                other.actionType == actionType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      order,
      const DeepCollectionEquality().hash(_roles),
      status,
      actionBy,
      actionType);

  /// Create a copy of ApprovalStep
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApprovalStepImplCopyWith<_$ApprovalStepImpl> get copyWith =>
      __$$ApprovalStepImplCopyWithImpl<_$ApprovalStepImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApprovalStepImplToJson(
      this,
    );
  }
}

abstract class _ApprovalStep extends ApprovalStep {
  const factory _ApprovalStep(
          {final int? order,
          final List<ApprovalRole>? roles,
          final String? status,
          @JsonKey(name: "action_by") final ApprovalActionBy? actionBy,
          @JsonKey(name: "action_type") final String? actionType}) =
      _$ApprovalStepImpl;
  const _ApprovalStep._() : super._();

  factory _ApprovalStep.fromJson(Map<String, dynamic> json) =
      _$ApprovalStepImpl.fromJson;

  @override
  int? get order;
  @override
  List<ApprovalRole>? get roles;
  @override
  String? get status;
  @override
  @JsonKey(name: "action_by")
  ApprovalActionBy? get actionBy;
  @override
  @JsonKey(name: "action_type")
  String? get actionType;

  /// Create a copy of ApprovalStep
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApprovalStepImplCopyWith<_$ApprovalStepImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApprovalRole _$ApprovalRoleFromJson(Map<String, dynamic> json) {
  return _ApprovalRole.fromJson(json);
}

/// @nodoc
mixin _$ApprovalRole {
  String? get id =>
      throw _privateConstructorUsedError; // ID is a string in your JSON example for roles
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this ApprovalRole to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApprovalRole
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApprovalRoleCopyWith<ApprovalRole> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApprovalRoleCopyWith<$Res> {
  factory $ApprovalRoleCopyWith(
          ApprovalRole value, $Res Function(ApprovalRole) then) =
      _$ApprovalRoleCopyWithImpl<$Res, ApprovalRole>;
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class _$ApprovalRoleCopyWithImpl<$Res, $Val extends ApprovalRole>
    implements $ApprovalRoleCopyWith<$Res> {
  _$ApprovalRoleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApprovalRole
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApprovalRoleImplCopyWith<$Res>
    implements $ApprovalRoleCopyWith<$Res> {
  factory _$$ApprovalRoleImplCopyWith(
          _$ApprovalRoleImpl value, $Res Function(_$ApprovalRoleImpl) then) =
      __$$ApprovalRoleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class __$$ApprovalRoleImplCopyWithImpl<$Res>
    extends _$ApprovalRoleCopyWithImpl<$Res, _$ApprovalRoleImpl>
    implements _$$ApprovalRoleImplCopyWith<$Res> {
  __$$ApprovalRoleImplCopyWithImpl(
      _$ApprovalRoleImpl _value, $Res Function(_$ApprovalRoleImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApprovalRole
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$ApprovalRoleImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApprovalRoleImpl extends _ApprovalRole with DiagnosticableTreeMixin {
  const _$ApprovalRoleImpl({this.id, this.name}) : super._();

  factory _$ApprovalRoleImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApprovalRoleImplFromJson(json);

  @override
  final String? id;
// ID is a string in your JSON example for roles
  @override
  final String? name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApprovalRole(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApprovalRole'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApprovalRoleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of ApprovalRole
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApprovalRoleImplCopyWith<_$ApprovalRoleImpl> get copyWith =>
      __$$ApprovalRoleImplCopyWithImpl<_$ApprovalRoleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApprovalRoleImplToJson(
      this,
    );
  }
}

abstract class _ApprovalRole extends ApprovalRole {
  const factory _ApprovalRole({final String? id, final String? name}) =
      _$ApprovalRoleImpl;
  const _ApprovalRole._() : super._();

  factory _ApprovalRole.fromJson(Map<String, dynamic> json) =
      _$ApprovalRoleImpl.fromJson;

  @override
  String? get id; // ID is a string in your JSON example for roles
  @override
  String? get name;

  /// Create a copy of ApprovalRole
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApprovalRoleImplCopyWith<_$ApprovalRoleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApprovalActionBy _$ApprovalActionByFromJson(Map<String, dynamic> json) {
  return _ApprovalActionBy.fromJson(json);
}

/// @nodoc
mixin _$ApprovalActionBy {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "ir_number")
  String? get irNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "first_name")
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "last_name")
  String? get lastName => throw _privateConstructorUsedError;

  /// Serializes this ApprovalActionBy to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApprovalActionBy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApprovalActionByCopyWith<ApprovalActionBy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApprovalActionByCopyWith<$Res> {
  factory $ApprovalActionByCopyWith(
          ApprovalActionBy value, $Res Function(ApprovalActionBy) then) =
      _$ApprovalActionByCopyWithImpl<$Res, ApprovalActionBy>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "ir_number") String? irNumber,
      @JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "last_name") String? lastName});
}

/// @nodoc
class _$ApprovalActionByCopyWithImpl<$Res, $Val extends ApprovalActionBy>
    implements $ApprovalActionByCopyWith<$Res> {
  _$ApprovalActionByCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApprovalActionBy
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
abstract class _$$ApprovalActionByImplCopyWith<$Res>
    implements $ApprovalActionByCopyWith<$Res> {
  factory _$$ApprovalActionByImplCopyWith(_$ApprovalActionByImpl value,
          $Res Function(_$ApprovalActionByImpl) then) =
      __$$ApprovalActionByImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "ir_number") String? irNumber,
      @JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "last_name") String? lastName});
}

/// @nodoc
class __$$ApprovalActionByImplCopyWithImpl<$Res>
    extends _$ApprovalActionByCopyWithImpl<$Res, _$ApprovalActionByImpl>
    implements _$$ApprovalActionByImplCopyWith<$Res> {
  __$$ApprovalActionByImplCopyWithImpl(_$ApprovalActionByImpl _value,
      $Res Function(_$ApprovalActionByImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApprovalActionBy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? irNumber = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
  }) {
    return _then(_$ApprovalActionByImpl(
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
class _$ApprovalActionByImpl extends _ApprovalActionBy
    with DiagnosticableTreeMixin {
  const _$ApprovalActionByImpl(
      {this.id,
      @JsonKey(name: "ir_number") this.irNumber,
      @JsonKey(name: "first_name") this.firstName,
      @JsonKey(name: "last_name") this.lastName})
      : super._();

  factory _$ApprovalActionByImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApprovalActionByImplFromJson(json);

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
    return 'ApprovalActionBy(id: $id, irNumber: $irNumber, firstName: $firstName, lastName: $lastName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApprovalActionBy'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('irNumber', irNumber))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApprovalActionByImpl &&
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

  /// Create a copy of ApprovalActionBy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApprovalActionByImplCopyWith<_$ApprovalActionByImpl> get copyWith =>
      __$$ApprovalActionByImplCopyWithImpl<_$ApprovalActionByImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApprovalActionByImplToJson(
      this,
    );
  }
}

abstract class _ApprovalActionBy extends ApprovalActionBy {
  const factory _ApprovalActionBy(
          {final int? id,
          @JsonKey(name: "ir_number") final String? irNumber,
          @JsonKey(name: "first_name") final String? firstName,
          @JsonKey(name: "last_name") final String? lastName}) =
      _$ApprovalActionByImpl;
  const _ApprovalActionBy._() : super._();

  factory _ApprovalActionBy.fromJson(Map<String, dynamic> json) =
      _$ApprovalActionByImpl.fromJson;

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

  /// Create a copy of ApprovalActionBy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApprovalActionByImplCopyWith<_$ApprovalActionByImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
