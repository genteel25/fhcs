// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'investment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InvestmentData _$InvestmentDataFromJson(Map<String, dynamic> json) {
  return _InvestmentData.fromJson(json);
}

/// @nodoc
mixin _$InvestmentData {
  int? get id => throw _privateConstructorUsedError;
  String? get iid => throw _privateConstructorUsedError;
  @JsonKey(name: 'investment_type')
  InvestmentType? get investmentType => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'investment_amount')
  double? get investmentAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount_repaid')
  double? get amountRepaid => throw _privateConstructorUsedError;
  Tenure? get tenure => throw _privateConstructorUsedError;
  @JsonKey(name: 'profit_percentage')
  double? get profitPercentage => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'approval_status')
  String? get approvalStatus => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  List<RefereeItem>? get referees => throw _privateConstructorUsedError;
  @JsonKey(name: 'changes_requested')
  Map<String, dynamic>? get changesRequested =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'vendor_contact')
  String? get vendorContact => throw _privateConstructorUsedError;
  @JsonKey(name: 'vendor_name')
  String? get vendorName => throw _privateConstructorUsedError;
  List<Witness>? get witnesses => throw _privateConstructorUsedError;
  @JsonKey(name: 'investment_limit')
  double? get investmentLimit => throw _privateConstructorUsedError;
  @JsonKey(name: 'investment_balance')
  double? get investmentBalance => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'disbursed_at')
  DateTime? get disbursedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'approved_at')
  DateTime? get approvedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'rejected_at')
  DateTime? get rejectedAt => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get purpose => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_approve')
  bool? get canApprove => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_approval_step')
  NextApprovalStep? get nextApprovalStep => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_approval_step')
  Object? get currentApprovalStep => throw _privateConstructorUsedError;

  /// Serializes this InvestmentData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvestmentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvestmentDataCopyWith<InvestmentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvestmentDataCopyWith<$Res> {
  factory $InvestmentDataCopyWith(
          InvestmentData value, $Res Function(InvestmentData) then) =
      _$InvestmentDataCopyWithImpl<$Res, InvestmentData>;
  @useResult
  $Res call(
      {int? id,
      String? iid,
      @JsonKey(name: 'investment_type') InvestmentType? investmentType,
      double? amount,
      @JsonKey(name: 'investment_amount') double? investmentAmount,
      @JsonKey(name: 'amount_repaid') double? amountRepaid,
      Tenure? tenure,
      @JsonKey(name: 'profit_percentage') double? profitPercentage,
      String? status,
      @JsonKey(name: 'approval_status') String? approvalStatus,
      User? user,
      List<RefereeItem>? referees,
      @JsonKey(name: 'changes_requested')
      Map<String, dynamic>? changesRequested,
      @JsonKey(name: 'vendor_contact') String? vendorContact,
      @JsonKey(name: 'vendor_name') String? vendorName,
      List<Witness>? witnesses,
      @JsonKey(name: 'investment_limit') double? investmentLimit,
      @JsonKey(name: 'investment_balance') double? investmentBalance,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'disbursed_at') DateTime? disbursedAt,
      @JsonKey(name: 'approved_at') DateTime? approvedAt,
      @JsonKey(name: 'rejected_at') DateTime? rejectedAt,
      String? description,
      String? purpose,
      @JsonKey(name: 'can_approve') bool? canApprove,
      @JsonKey(name: 'next_approval_step') NextApprovalStep? nextApprovalStep,
      @JsonKey(name: 'current_approval_step') Object? currentApprovalStep});

  $InvestmentTypeCopyWith<$Res>? get investmentType;
  $TenureCopyWith<$Res>? get tenure;
  $UserCopyWith<$Res>? get user;
  $NextApprovalStepCopyWith<$Res>? get nextApprovalStep;
}

/// @nodoc
class _$InvestmentDataCopyWithImpl<$Res, $Val extends InvestmentData>
    implements $InvestmentDataCopyWith<$Res> {
  _$InvestmentDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvestmentData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? iid = freezed,
    Object? investmentType = freezed,
    Object? amount = freezed,
    Object? investmentAmount = freezed,
    Object? amountRepaid = freezed,
    Object? tenure = freezed,
    Object? profitPercentage = freezed,
    Object? status = freezed,
    Object? approvalStatus = freezed,
    Object? user = freezed,
    Object? referees = freezed,
    Object? changesRequested = freezed,
    Object? vendorContact = freezed,
    Object? vendorName = freezed,
    Object? witnesses = freezed,
    Object? investmentLimit = freezed,
    Object? investmentBalance = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? disbursedAt = freezed,
    Object? approvedAt = freezed,
    Object? rejectedAt = freezed,
    Object? description = freezed,
    Object? purpose = freezed,
    Object? canApprove = freezed,
    Object? nextApprovalStep = freezed,
    Object? currentApprovalStep = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      iid: freezed == iid
          ? _value.iid
          : iid // ignore: cast_nullable_to_non_nullable
              as String?,
      investmentType: freezed == investmentType
          ? _value.investmentType
          : investmentType // ignore: cast_nullable_to_non_nullable
              as InvestmentType?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      investmentAmount: freezed == investmentAmount
          ? _value.investmentAmount
          : investmentAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      amountRepaid: freezed == amountRepaid
          ? _value.amountRepaid
          : amountRepaid // ignore: cast_nullable_to_non_nullable
              as double?,
      tenure: freezed == tenure
          ? _value.tenure
          : tenure // ignore: cast_nullable_to_non_nullable
              as Tenure?,
      profitPercentage: freezed == profitPercentage
          ? _value.profitPercentage
          : profitPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
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
              as User?,
      referees: freezed == referees
          ? _value.referees
          : referees // ignore: cast_nullable_to_non_nullable
              as List<RefereeItem>?,
      changesRequested: freezed == changesRequested
          ? _value.changesRequested
          : changesRequested // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      vendorContact: freezed == vendorContact
          ? _value.vendorContact
          : vendorContact // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorName: freezed == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String?,
      witnesses: freezed == witnesses
          ? _value.witnesses
          : witnesses // ignore: cast_nullable_to_non_nullable
              as List<Witness>?,
      investmentLimit: freezed == investmentLimit
          ? _value.investmentLimit
          : investmentLimit // ignore: cast_nullable_to_non_nullable
              as double?,
      investmentBalance: freezed == investmentBalance
          ? _value.investmentBalance
          : investmentBalance // ignore: cast_nullable_to_non_nullable
              as double?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      disbursedAt: freezed == disbursedAt
          ? _value.disbursedAt
          : disbursedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectedAt: freezed == rejectedAt
          ? _value.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      purpose: freezed == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String?,
      canApprove: freezed == canApprove
          ? _value.canApprove
          : canApprove // ignore: cast_nullable_to_non_nullable
              as bool?,
      nextApprovalStep: freezed == nextApprovalStep
          ? _value.nextApprovalStep
          : nextApprovalStep // ignore: cast_nullable_to_non_nullable
              as NextApprovalStep?,
      currentApprovalStep: freezed == currentApprovalStep
          ? _value.currentApprovalStep
          : currentApprovalStep,
    ) as $Val);
  }

  /// Create a copy of InvestmentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InvestmentTypeCopyWith<$Res>? get investmentType {
    if (_value.investmentType == null) {
      return null;
    }

    return $InvestmentTypeCopyWith<$Res>(_value.investmentType!, (value) {
      return _then(_value.copyWith(investmentType: value) as $Val);
    });
  }

  /// Create a copy of InvestmentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TenureCopyWith<$Res>? get tenure {
    if (_value.tenure == null) {
      return null;
    }

    return $TenureCopyWith<$Res>(_value.tenure!, (value) {
      return _then(_value.copyWith(tenure: value) as $Val);
    });
  }

  /// Create a copy of InvestmentData
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

  /// Create a copy of InvestmentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NextApprovalStepCopyWith<$Res>? get nextApprovalStep {
    if (_value.nextApprovalStep == null) {
      return null;
    }

    return $NextApprovalStepCopyWith<$Res>(_value.nextApprovalStep!, (value) {
      return _then(_value.copyWith(nextApprovalStep: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InvestmentDataImplCopyWith<$Res>
    implements $InvestmentDataCopyWith<$Res> {
  factory _$$InvestmentDataImplCopyWith(_$InvestmentDataImpl value,
          $Res Function(_$InvestmentDataImpl) then) =
      __$$InvestmentDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? iid,
      @JsonKey(name: 'investment_type') InvestmentType? investmentType,
      double? amount,
      @JsonKey(name: 'investment_amount') double? investmentAmount,
      @JsonKey(name: 'amount_repaid') double? amountRepaid,
      Tenure? tenure,
      @JsonKey(name: 'profit_percentage') double? profitPercentage,
      String? status,
      @JsonKey(name: 'approval_status') String? approvalStatus,
      User? user,
      List<RefereeItem>? referees,
      @JsonKey(name: 'changes_requested')
      Map<String, dynamic>? changesRequested,
      @JsonKey(name: 'vendor_contact') String? vendorContact,
      @JsonKey(name: 'vendor_name') String? vendorName,
      List<Witness>? witnesses,
      @JsonKey(name: 'investment_limit') double? investmentLimit,
      @JsonKey(name: 'investment_balance') double? investmentBalance,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'disbursed_at') DateTime? disbursedAt,
      @JsonKey(name: 'approved_at') DateTime? approvedAt,
      @JsonKey(name: 'rejected_at') DateTime? rejectedAt,
      String? description,
      String? purpose,
      @JsonKey(name: 'can_approve') bool? canApprove,
      @JsonKey(name: 'next_approval_step') NextApprovalStep? nextApprovalStep,
      @JsonKey(name: 'current_approval_step') Object? currentApprovalStep});

  @override
  $InvestmentTypeCopyWith<$Res>? get investmentType;
  @override
  $TenureCopyWith<$Res>? get tenure;
  @override
  $UserCopyWith<$Res>? get user;
  @override
  $NextApprovalStepCopyWith<$Res>? get nextApprovalStep;
}

/// @nodoc
class __$$InvestmentDataImplCopyWithImpl<$Res>
    extends _$InvestmentDataCopyWithImpl<$Res, _$InvestmentDataImpl>
    implements _$$InvestmentDataImplCopyWith<$Res> {
  __$$InvestmentDataImplCopyWithImpl(
      _$InvestmentDataImpl _value, $Res Function(_$InvestmentDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvestmentData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? iid = freezed,
    Object? investmentType = freezed,
    Object? amount = freezed,
    Object? investmentAmount = freezed,
    Object? amountRepaid = freezed,
    Object? tenure = freezed,
    Object? profitPercentage = freezed,
    Object? status = freezed,
    Object? approvalStatus = freezed,
    Object? user = freezed,
    Object? referees = freezed,
    Object? changesRequested = freezed,
    Object? vendorContact = freezed,
    Object? vendorName = freezed,
    Object? witnesses = freezed,
    Object? investmentLimit = freezed,
    Object? investmentBalance = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? disbursedAt = freezed,
    Object? approvedAt = freezed,
    Object? rejectedAt = freezed,
    Object? description = freezed,
    Object? purpose = freezed,
    Object? canApprove = freezed,
    Object? nextApprovalStep = freezed,
    Object? currentApprovalStep = freezed,
  }) {
    return _then(_$InvestmentDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      iid: freezed == iid
          ? _value.iid
          : iid // ignore: cast_nullable_to_non_nullable
              as String?,
      investmentType: freezed == investmentType
          ? _value.investmentType
          : investmentType // ignore: cast_nullable_to_non_nullable
              as InvestmentType?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      investmentAmount: freezed == investmentAmount
          ? _value.investmentAmount
          : investmentAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      amountRepaid: freezed == amountRepaid
          ? _value.amountRepaid
          : amountRepaid // ignore: cast_nullable_to_non_nullable
              as double?,
      tenure: freezed == tenure
          ? _value.tenure
          : tenure // ignore: cast_nullable_to_non_nullable
              as Tenure?,
      profitPercentage: freezed == profitPercentage
          ? _value.profitPercentage
          : profitPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
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
              as User?,
      referees: freezed == referees
          ? _value._referees
          : referees // ignore: cast_nullable_to_non_nullable
              as List<RefereeItem>?,
      changesRequested: freezed == changesRequested
          ? _value._changesRequested
          : changesRequested // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      vendorContact: freezed == vendorContact
          ? _value.vendorContact
          : vendorContact // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorName: freezed == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String?,
      witnesses: freezed == witnesses
          ? _value._witnesses
          : witnesses // ignore: cast_nullable_to_non_nullable
              as List<Witness>?,
      investmentLimit: freezed == investmentLimit
          ? _value.investmentLimit
          : investmentLimit // ignore: cast_nullable_to_non_nullable
              as double?,
      investmentBalance: freezed == investmentBalance
          ? _value.investmentBalance
          : investmentBalance // ignore: cast_nullable_to_non_nullable
              as double?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      disbursedAt: freezed == disbursedAt
          ? _value.disbursedAt
          : disbursedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectedAt: freezed == rejectedAt
          ? _value.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      purpose: freezed == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String?,
      canApprove: freezed == canApprove
          ? _value.canApprove
          : canApprove // ignore: cast_nullable_to_non_nullable
              as bool?,
      nextApprovalStep: freezed == nextApprovalStep
          ? _value.nextApprovalStep
          : nextApprovalStep // ignore: cast_nullable_to_non_nullable
              as NextApprovalStep?,
      currentApprovalStep: freezed == currentApprovalStep
          ? _value.currentApprovalStep
          : currentApprovalStep,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvestmentDataImpl
    with DiagnosticableTreeMixin
    implements _InvestmentData {
  const _$InvestmentDataImpl(
      {this.id,
      this.iid,
      @JsonKey(name: 'investment_type') this.investmentType,
      this.amount,
      @JsonKey(name: 'investment_amount') this.investmentAmount,
      @JsonKey(name: 'amount_repaid') this.amountRepaid,
      this.tenure,
      @JsonKey(name: 'profit_percentage') this.profitPercentage,
      this.status,
      @JsonKey(name: 'approval_status') this.approvalStatus,
      this.user,
      final List<RefereeItem>? referees,
      @JsonKey(name: 'changes_requested')
      final Map<String, dynamic>? changesRequested,
      @JsonKey(name: 'vendor_contact') this.vendorContact,
      @JsonKey(name: 'vendor_name') this.vendorName,
      final List<Witness>? witnesses,
      @JsonKey(name: 'investment_limit') this.investmentLimit,
      @JsonKey(name: 'investment_balance') this.investmentBalance,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'disbursed_at') this.disbursedAt,
      @JsonKey(name: 'approved_at') this.approvedAt,
      @JsonKey(name: 'rejected_at') this.rejectedAt,
      this.description,
      this.purpose,
      @JsonKey(name: 'can_approve') this.canApprove,
      @JsonKey(name: 'next_approval_step') this.nextApprovalStep,
      @JsonKey(name: 'current_approval_step') this.currentApprovalStep})
      : _referees = referees,
        _changesRequested = changesRequested,
        _witnesses = witnesses;

  factory _$InvestmentDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvestmentDataImplFromJson(json);

  @override
  final int? id;
  @override
  final String? iid;
  @override
  @JsonKey(name: 'investment_type')
  final InvestmentType? investmentType;
  @override
  final double? amount;
  @override
  @JsonKey(name: 'investment_amount')
  final double? investmentAmount;
  @override
  @JsonKey(name: 'amount_repaid')
  final double? amountRepaid;
  @override
  final Tenure? tenure;
  @override
  @JsonKey(name: 'profit_percentage')
  final double? profitPercentage;
  @override
  final String? status;
  @override
  @JsonKey(name: 'approval_status')
  final String? approvalStatus;
  @override
  final User? user;
  final List<RefereeItem>? _referees;
  @override
  List<RefereeItem>? get referees {
    final value = _referees;
    if (value == null) return null;
    if (_referees is EqualUnmodifiableListView) return _referees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _changesRequested;
  @override
  @JsonKey(name: 'changes_requested')
  Map<String, dynamic>? get changesRequested {
    final value = _changesRequested;
    if (value == null) return null;
    if (_changesRequested is EqualUnmodifiableMapView) return _changesRequested;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'vendor_contact')
  final String? vendorContact;
  @override
  @JsonKey(name: 'vendor_name')
  final String? vendorName;
  final List<Witness>? _witnesses;
  @override
  List<Witness>? get witnesses {
    final value = _witnesses;
    if (value == null) return null;
    if (_witnesses is EqualUnmodifiableListView) return _witnesses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'investment_limit')
  final double? investmentLimit;
  @override
  @JsonKey(name: 'investment_balance')
  final double? investmentBalance;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'disbursed_at')
  final DateTime? disbursedAt;
  @override
  @JsonKey(name: 'approved_at')
  final DateTime? approvedAt;
  @override
  @JsonKey(name: 'rejected_at')
  final DateTime? rejectedAt;
  @override
  final String? description;
  @override
  final String? purpose;
  @override
  @JsonKey(name: 'can_approve')
  final bool? canApprove;
  @override
  @JsonKey(name: 'next_approval_step')
  final NextApprovalStep? nextApprovalStep;
  @override
  @JsonKey(name: 'current_approval_step')
  final Object? currentApprovalStep;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InvestmentData(id: $id, iid: $iid, investmentType: $investmentType, amount: $amount, investmentAmount: $investmentAmount, amountRepaid: $amountRepaid, tenure: $tenure, profitPercentage: $profitPercentage, status: $status, approvalStatus: $approvalStatus, user: $user, referees: $referees, changesRequested: $changesRequested, vendorContact: $vendorContact, vendorName: $vendorName, witnesses: $witnesses, investmentLimit: $investmentLimit, investmentBalance: $investmentBalance, createdAt: $createdAt, updatedAt: $updatedAt, disbursedAt: $disbursedAt, approvedAt: $approvedAt, rejectedAt: $rejectedAt, description: $description, purpose: $purpose, canApprove: $canApprove, nextApprovalStep: $nextApprovalStep, currentApprovalStep: $currentApprovalStep)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InvestmentData'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('iid', iid))
      ..add(DiagnosticsProperty('investmentType', investmentType))
      ..add(DiagnosticsProperty('amount', amount))
      ..add(DiagnosticsProperty('investmentAmount', investmentAmount))
      ..add(DiagnosticsProperty('amountRepaid', amountRepaid))
      ..add(DiagnosticsProperty('tenure', tenure))
      ..add(DiagnosticsProperty('profitPercentage', profitPercentage))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('approvalStatus', approvalStatus))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('referees', referees))
      ..add(DiagnosticsProperty('changesRequested', changesRequested))
      ..add(DiagnosticsProperty('vendorContact', vendorContact))
      ..add(DiagnosticsProperty('vendorName', vendorName))
      ..add(DiagnosticsProperty('witnesses', witnesses))
      ..add(DiagnosticsProperty('investmentLimit', investmentLimit))
      ..add(DiagnosticsProperty('investmentBalance', investmentBalance))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('disbursedAt', disbursedAt))
      ..add(DiagnosticsProperty('approvedAt', approvedAt))
      ..add(DiagnosticsProperty('rejectedAt', rejectedAt))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('purpose', purpose))
      ..add(DiagnosticsProperty('canApprove', canApprove))
      ..add(DiagnosticsProperty('nextApprovalStep', nextApprovalStep))
      ..add(DiagnosticsProperty('currentApprovalStep', currentApprovalStep));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvestmentDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.iid, iid) || other.iid == iid) &&
            (identical(other.investmentType, investmentType) ||
                other.investmentType == investmentType) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.investmentAmount, investmentAmount) ||
                other.investmentAmount == investmentAmount) &&
            (identical(other.amountRepaid, amountRepaid) ||
                other.amountRepaid == amountRepaid) &&
            (identical(other.tenure, tenure) || other.tenure == tenure) &&
            (identical(other.profitPercentage, profitPercentage) ||
                other.profitPercentage == profitPercentage) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.approvalStatus, approvalStatus) ||
                other.approvalStatus == approvalStatus) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._referees, _referees) &&
            const DeepCollectionEquality()
                .equals(other._changesRequested, _changesRequested) &&
            (identical(other.vendorContact, vendorContact) ||
                other.vendorContact == vendorContact) &&
            (identical(other.vendorName, vendorName) ||
                other.vendorName == vendorName) &&
            const DeepCollectionEquality()
                .equals(other._witnesses, _witnesses) &&
            (identical(other.investmentLimit, investmentLimit) ||
                other.investmentLimit == investmentLimit) &&
            (identical(other.investmentBalance, investmentBalance) ||
                other.investmentBalance == investmentBalance) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.disbursedAt, disbursedAt) ||
                other.disbursedAt == disbursedAt) &&
            (identical(other.approvedAt, approvedAt) ||
                other.approvedAt == approvedAt) &&
            (identical(other.rejectedAt, rejectedAt) ||
                other.rejectedAt == rejectedAt) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.canApprove, canApprove) ||
                other.canApprove == canApprove) &&
            (identical(other.nextApprovalStep, nextApprovalStep) ||
                other.nextApprovalStep == nextApprovalStep) &&
            const DeepCollectionEquality()
                .equals(other.currentApprovalStep, currentApprovalStep));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        iid,
        investmentType,
        amount,
        investmentAmount,
        amountRepaid,
        tenure,
        profitPercentage,
        status,
        approvalStatus,
        user,
        const DeepCollectionEquality().hash(_referees),
        const DeepCollectionEquality().hash(_changesRequested),
        vendorContact,
        vendorName,
        const DeepCollectionEquality().hash(_witnesses),
        investmentLimit,
        investmentBalance,
        createdAt,
        updatedAt,
        disbursedAt,
        approvedAt,
        rejectedAt,
        description,
        purpose,
        canApprove,
        nextApprovalStep,
        const DeepCollectionEquality().hash(currentApprovalStep)
      ]);

  /// Create a copy of InvestmentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvestmentDataImplCopyWith<_$InvestmentDataImpl> get copyWith =>
      __$$InvestmentDataImplCopyWithImpl<_$InvestmentDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvestmentDataImplToJson(
      this,
    );
  }
}

abstract class _InvestmentData implements InvestmentData {
  const factory _InvestmentData(
      {final int? id,
      final String? iid,
      @JsonKey(name: 'investment_type') final InvestmentType? investmentType,
      final double? amount,
      @JsonKey(name: 'investment_amount') final double? investmentAmount,
      @JsonKey(name: 'amount_repaid') final double? amountRepaid,
      final Tenure? tenure,
      @JsonKey(name: 'profit_percentage') final double? profitPercentage,
      final String? status,
      @JsonKey(name: 'approval_status') final String? approvalStatus,
      final User? user,
      final List<RefereeItem>? referees,
      @JsonKey(name: 'changes_requested')
      final Map<String, dynamic>? changesRequested,
      @JsonKey(name: 'vendor_contact') final String? vendorContact,
      @JsonKey(name: 'vendor_name') final String? vendorName,
      final List<Witness>? witnesses,
      @JsonKey(name: 'investment_limit') final double? investmentLimit,
      @JsonKey(name: 'investment_balance') final double? investmentBalance,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'disbursed_at') final DateTime? disbursedAt,
      @JsonKey(name: 'approved_at') final DateTime? approvedAt,
      @JsonKey(name: 'rejected_at') final DateTime? rejectedAt,
      final String? description,
      final String? purpose,
      @JsonKey(name: 'can_approve') final bool? canApprove,
      @JsonKey(name: 'next_approval_step')
      final NextApprovalStep? nextApprovalStep,
      @JsonKey(name: 'current_approval_step')
      final Object? currentApprovalStep}) = _$InvestmentDataImpl;

  factory _InvestmentData.fromJson(Map<String, dynamic> json) =
      _$InvestmentDataImpl.fromJson;

  @override
  int? get id;
  @override
  String? get iid;
  @override
  @JsonKey(name: 'investment_type')
  InvestmentType? get investmentType;
  @override
  double? get amount;
  @override
  @JsonKey(name: 'investment_amount')
  double? get investmentAmount;
  @override
  @JsonKey(name: 'amount_repaid')
  double? get amountRepaid;
  @override
  Tenure? get tenure;
  @override
  @JsonKey(name: 'profit_percentage')
  double? get profitPercentage;
  @override
  String? get status;
  @override
  @JsonKey(name: 'approval_status')
  String? get approvalStatus;
  @override
  User? get user;
  @override
  List<RefereeItem>? get referees;
  @override
  @JsonKey(name: 'changes_requested')
  Map<String, dynamic>? get changesRequested;
  @override
  @JsonKey(name: 'vendor_contact')
  String? get vendorContact;
  @override
  @JsonKey(name: 'vendor_name')
  String? get vendorName;
  @override
  List<Witness>? get witnesses;
  @override
  @JsonKey(name: 'investment_limit')
  double? get investmentLimit;
  @override
  @JsonKey(name: 'investment_balance')
  double? get investmentBalance;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'disbursed_at')
  DateTime? get disbursedAt;
  @override
  @JsonKey(name: 'approved_at')
  DateTime? get approvedAt;
  @override
  @JsonKey(name: 'rejected_at')
  DateTime? get rejectedAt;
  @override
  String? get description;
  @override
  String? get purpose;
  @override
  @JsonKey(name: 'can_approve')
  bool? get canApprove;
  @override
  @JsonKey(name: 'next_approval_step')
  NextApprovalStep? get nextApprovalStep;
  @override
  @JsonKey(name: 'current_approval_step')
  Object? get currentApprovalStep;

  /// Create a copy of InvestmentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvestmentDataImplCopyWith<_$InvestmentDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InvestmentType _$InvestmentTypeFromJson(Map<String, dynamic> json) {
  return _InvestmentType.fromJson(json);
}

/// @nodoc
mixin _$InvestmentType {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this InvestmentType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvestmentType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvestmentTypeCopyWith<InvestmentType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvestmentTypeCopyWith<$Res> {
  factory $InvestmentTypeCopyWith(
          InvestmentType value, $Res Function(InvestmentType) then) =
      _$InvestmentTypeCopyWithImpl<$Res, InvestmentType>;
  @useResult
  $Res call({int? id, String? name, String? description});
}

/// @nodoc
class _$InvestmentTypeCopyWithImpl<$Res, $Val extends InvestmentType>
    implements $InvestmentTypeCopyWith<$Res> {
  _$InvestmentTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvestmentType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvestmentTypeImplCopyWith<$Res>
    implements $InvestmentTypeCopyWith<$Res> {
  factory _$$InvestmentTypeImplCopyWith(_$InvestmentTypeImpl value,
          $Res Function(_$InvestmentTypeImpl) then) =
      __$$InvestmentTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? description});
}

/// @nodoc
class __$$InvestmentTypeImplCopyWithImpl<$Res>
    extends _$InvestmentTypeCopyWithImpl<$Res, _$InvestmentTypeImpl>
    implements _$$InvestmentTypeImplCopyWith<$Res> {
  __$$InvestmentTypeImplCopyWithImpl(
      _$InvestmentTypeImpl _value, $Res Function(_$InvestmentTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvestmentType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_$InvestmentTypeImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvestmentTypeImpl
    with DiagnosticableTreeMixin
    implements _InvestmentType {
  const _$InvestmentTypeImpl({this.id, this.name, this.description});

  factory _$InvestmentTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvestmentTypeImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InvestmentType(id: $id, name: $name, description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InvestmentType'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvestmentTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description);

  /// Create a copy of InvestmentType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvestmentTypeImplCopyWith<_$InvestmentTypeImpl> get copyWith =>
      __$$InvestmentTypeImplCopyWithImpl<_$InvestmentTypeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvestmentTypeImplToJson(
      this,
    );
  }
}

abstract class _InvestmentType implements InvestmentType {
  const factory _InvestmentType(
      {final int? id,
      final String? name,
      final String? description}) = _$InvestmentTypeImpl;

  factory _InvestmentType.fromJson(Map<String, dynamic> json) =
      _$InvestmentTypeImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;

  /// Create a copy of InvestmentType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvestmentTypeImplCopyWith<_$InvestmentTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Tenure _$TenureFromJson(Map<String, dynamic> json) {
  return _Tenure.fromJson(json);
}

/// @nodoc
mixin _$Tenure {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'profit_percentage')
  double? get profitPercentage => throw _privateConstructorUsedError;

  /// Serializes this Tenure to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Tenure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TenureCopyWith<Tenure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TenureCopyWith<$Res> {
  factory $TenureCopyWith(Tenure value, $Res Function(Tenure) then) =
      _$TenureCopyWithImpl<$Res, Tenure>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      int? duration,
      @JsonKey(name: 'profit_percentage') double? profitPercentage});
}

/// @nodoc
class _$TenureCopyWithImpl<$Res, $Val extends Tenure>
    implements $TenureCopyWith<$Res> {
  _$TenureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Tenure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? duration = freezed,
    Object? profitPercentage = freezed,
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
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TenureImplCopyWith<$Res> implements $TenureCopyWith<$Res> {
  factory _$$TenureImplCopyWith(
          _$TenureImpl value, $Res Function(_$TenureImpl) then) =
      __$$TenureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      int? duration,
      @JsonKey(name: 'profit_percentage') double? profitPercentage});
}

/// @nodoc
class __$$TenureImplCopyWithImpl<$Res>
    extends _$TenureCopyWithImpl<$Res, _$TenureImpl>
    implements _$$TenureImplCopyWith<$Res> {
  __$$TenureImplCopyWithImpl(
      _$TenureImpl _value, $Res Function(_$TenureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Tenure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? duration = freezed,
    Object? profitPercentage = freezed,
  }) {
    return _then(_$TenureImpl(
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
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TenureImpl with DiagnosticableTreeMixin implements _Tenure {
  const _$TenureImpl(
      {this.id,
      this.name,
      this.duration,
      @JsonKey(name: 'profit_percentage') this.profitPercentage});

  factory _$TenureImpl.fromJson(Map<String, dynamic> json) =>
      _$$TenureImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? duration;
  @override
  @JsonKey(name: 'profit_percentage')
  final double? profitPercentage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Tenure(id: $id, name: $name, duration: $duration, profitPercentage: $profitPercentage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Tenure'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('profitPercentage', profitPercentage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TenureImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.profitPercentage, profitPercentage) ||
                other.profitPercentage == profitPercentage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, duration, profitPercentage);

  /// Create a copy of Tenure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TenureImplCopyWith<_$TenureImpl> get copyWith =>
      __$$TenureImplCopyWithImpl<_$TenureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TenureImplToJson(
      this,
    );
  }
}

abstract class _Tenure implements Tenure {
  const factory _Tenure(
          {final int? id,
          final String? name,
          final int? duration,
          @JsonKey(name: 'profit_percentage') final double? profitPercentage}) =
      _$TenureImpl;

  factory _Tenure.fromJson(Map<String, dynamic> json) = _$TenureImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  int? get duration;
  @override
  @JsonKey(name: 'profit_percentage')
  double? get profitPercentage;

  /// Create a copy of Tenure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TenureImplCopyWith<_$TenureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RefereeItem _$RefereeItemFromJson(Map<String, dynamic> json) {
  return _RefereeItem.fromJson(json);
}

/// @nodoc
mixin _$RefereeItem {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "user")
  RefereeUser? get referee => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  /// Serializes this RefereeItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefereeItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefereeItemCopyWith<RefereeItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefereeItemCopyWith<$Res> {
  factory $RefereeItemCopyWith(
          RefereeItem value, $Res Function(RefereeItem) then) =
      _$RefereeItemCopyWithImpl<$Res, RefereeItem>;
  @useResult
  $Res call(
      {int? id, @JsonKey(name: "user") RefereeUser? referee, String? status});

  $RefereeUserCopyWith<$Res>? get referee;
}

/// @nodoc
class _$RefereeItemCopyWithImpl<$Res, $Val extends RefereeItem>
    implements $RefereeItemCopyWith<$Res> {
  _$RefereeItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefereeItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? referee = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      referee: freezed == referee
          ? _value.referee
          : referee // ignore: cast_nullable_to_non_nullable
              as RefereeUser?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of RefereeItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RefereeUserCopyWith<$Res>? get referee {
    if (_value.referee == null) {
      return null;
    }

    return $RefereeUserCopyWith<$Res>(_value.referee!, (value) {
      return _then(_value.copyWith(referee: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RefereeItemImplCopyWith<$Res>
    implements $RefereeItemCopyWith<$Res> {
  factory _$$RefereeItemImplCopyWith(
          _$RefereeItemImpl value, $Res Function(_$RefereeItemImpl) then) =
      __$$RefereeItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id, @JsonKey(name: "user") RefereeUser? referee, String? status});

  @override
  $RefereeUserCopyWith<$Res>? get referee;
}

/// @nodoc
class __$$RefereeItemImplCopyWithImpl<$Res>
    extends _$RefereeItemCopyWithImpl<$Res, _$RefereeItemImpl>
    implements _$$RefereeItemImplCopyWith<$Res> {
  __$$RefereeItemImplCopyWithImpl(
      _$RefereeItemImpl _value, $Res Function(_$RefereeItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefereeItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? referee = freezed,
    Object? status = freezed,
  }) {
    return _then(_$RefereeItemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      referee: freezed == referee
          ? _value.referee
          : referee // ignore: cast_nullable_to_non_nullable
              as RefereeUser?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefereeItemImpl with DiagnosticableTreeMixin implements _RefereeItem {
  const _$RefereeItemImpl(
      {this.id, @JsonKey(name: "user") this.referee, this.status});

  factory _$RefereeItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefereeItemImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "user")
  final RefereeUser? referee;
  @override
  final String? status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RefereeItem(id: $id, referee: $referee, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RefereeItem'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('referee', referee))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefereeItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.referee, referee) || other.referee == referee) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, referee, status);

  /// Create a copy of RefereeItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefereeItemImplCopyWith<_$RefereeItemImpl> get copyWith =>
      __$$RefereeItemImplCopyWithImpl<_$RefereeItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefereeItemImplToJson(
      this,
    );
  }
}

abstract class _RefereeItem implements RefereeItem {
  const factory _RefereeItem(
      {final int? id,
      @JsonKey(name: "user") final RefereeUser? referee,
      final String? status}) = _$RefereeItemImpl;

  factory _RefereeItem.fromJson(Map<String, dynamic> json) =
      _$RefereeItemImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "user")
  RefereeUser? get referee;
  @override
  String? get status;

  /// Create a copy of RefereeItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefereeItemImplCopyWith<_$RefereeItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RefereeUser _$RefereeUserFromJson(Map<String, dynamic> json) {
  return _RefereeUser.fromJson(json);
}

/// @nodoc
mixin _$RefereeUser {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'ir_number')
  String? get irNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;

  /// Serializes this RefereeUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefereeUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefereeUserCopyWith<RefereeUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefereeUserCopyWith<$Res> {
  factory $RefereeUserCopyWith(
          RefereeUser value, $Res Function(RefereeUser) then) =
      _$RefereeUserCopyWithImpl<$Res, RefereeUser>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'ir_number') String? irNumber,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'image_url') String? imageUrl});
}

/// @nodoc
class _$RefereeUserCopyWithImpl<$Res, $Val extends RefereeUser>
    implements $RefereeUserCopyWith<$Res> {
  _$RefereeUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefereeUser
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
abstract class _$$RefereeUserImplCopyWith<$Res>
    implements $RefereeUserCopyWith<$Res> {
  factory _$$RefereeUserImplCopyWith(
          _$RefereeUserImpl value, $Res Function(_$RefereeUserImpl) then) =
      __$$RefereeUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'ir_number') String? irNumber,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'image_url') String? imageUrl});
}

/// @nodoc
class __$$RefereeUserImplCopyWithImpl<$Res>
    extends _$RefereeUserCopyWithImpl<$Res, _$RefereeUserImpl>
    implements _$$RefereeUserImplCopyWith<$Res> {
  __$$RefereeUserImplCopyWithImpl(
      _$RefereeUserImpl _value, $Res Function(_$RefereeUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefereeUser
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
    return _then(_$RefereeUserImpl(
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
class _$RefereeUserImpl with DiagnosticableTreeMixin implements _RefereeUser {
  const _$RefereeUserImpl(
      {this.id,
      @JsonKey(name: 'ir_number') this.irNumber,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      @JsonKey(name: 'image_url') this.imageUrl});

  factory _$RefereeUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefereeUserImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'ir_number')
  final String? irNumber;
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RefereeUser(id: $id, irNumber: $irNumber, firstName: $firstName, lastName: $lastName, imageUrl: $imageUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RefereeUser'))
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
            other is _$RefereeUserImpl &&
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

  /// Create a copy of RefereeUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefereeUserImplCopyWith<_$RefereeUserImpl> get copyWith =>
      __$$RefereeUserImplCopyWithImpl<_$RefereeUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefereeUserImplToJson(
      this,
    );
  }
}

abstract class _RefereeUser implements RefereeUser {
  const factory _RefereeUser(
      {final int? id,
      @JsonKey(name: 'ir_number') final String? irNumber,
      @JsonKey(name: 'first_name') final String? firstName,
      @JsonKey(name: 'last_name') final String? lastName,
      @JsonKey(name: 'image_url') final String? imageUrl}) = _$RefereeUserImpl;

  factory _RefereeUser.fromJson(Map<String, dynamic> json) =
      _$RefereeUserImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'ir_number')
  String? get irNumber;
  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;

  /// Create a copy of RefereeUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefereeUserImplCopyWith<_$RefereeUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Witness _$WitnessFromJson(Map<String, dynamic> json) {
  return _Witness.fromJson(json);
}

/// @nodoc
mixin _$Witness {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'ir_number')
  String? get irNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;

  /// Serializes this Witness to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Witness
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WitnessCopyWith<Witness> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WitnessCopyWith<$Res> {
  factory $WitnessCopyWith(Witness value, $Res Function(Witness) then) =
      _$WitnessCopyWithImpl<$Res, Witness>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'ir_number') String? irNumber,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'image_url') String? imageUrl});
}

/// @nodoc
class _$WitnessCopyWithImpl<$Res, $Val extends Witness>
    implements $WitnessCopyWith<$Res> {
  _$WitnessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Witness
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
abstract class _$$WitnessImplCopyWith<$Res> implements $WitnessCopyWith<$Res> {
  factory _$$WitnessImplCopyWith(
          _$WitnessImpl value, $Res Function(_$WitnessImpl) then) =
      __$$WitnessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'ir_number') String? irNumber,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'image_url') String? imageUrl});
}

/// @nodoc
class __$$WitnessImplCopyWithImpl<$Res>
    extends _$WitnessCopyWithImpl<$Res, _$WitnessImpl>
    implements _$$WitnessImplCopyWith<$Res> {
  __$$WitnessImplCopyWithImpl(
      _$WitnessImpl _value, $Res Function(_$WitnessImpl) _then)
      : super(_value, _then);

  /// Create a copy of Witness
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
    return _then(_$WitnessImpl(
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
class _$WitnessImpl with DiagnosticableTreeMixin implements _Witness {
  const _$WitnessImpl(
      {this.id,
      @JsonKey(name: 'ir_number') this.irNumber,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      @JsonKey(name: 'image_url') this.imageUrl});

  factory _$WitnessImpl.fromJson(Map<String, dynamic> json) =>
      _$$WitnessImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'ir_number')
  final String? irNumber;
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Witness(id: $id, irNumber: $irNumber, firstName: $firstName, lastName: $lastName, imageUrl: $imageUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Witness'))
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
            other is _$WitnessImpl &&
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

  /// Create a copy of Witness
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WitnessImplCopyWith<_$WitnessImpl> get copyWith =>
      __$$WitnessImplCopyWithImpl<_$WitnessImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WitnessImplToJson(
      this,
    );
  }
}

abstract class _Witness implements Witness {
  const factory _Witness(
      {final int? id,
      @JsonKey(name: 'ir_number') final String? irNumber,
      @JsonKey(name: 'first_name') final String? firstName,
      @JsonKey(name: 'last_name') final String? lastName,
      @JsonKey(name: 'image_url') final String? imageUrl}) = _$WitnessImpl;

  factory _Witness.fromJson(Map<String, dynamic> json) = _$WitnessImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'ir_number')
  String? get irNumber;
  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;

  /// Create a copy of Witness
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WitnessImplCopyWith<_$WitnessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'ir_number')
  String? get irNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'ir_number') String? irNumber,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'image_url') String? imageUrl});
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
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'ir_number') String? irNumber,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'image_url') String? imageUrl});
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
    Object? irNumber = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_$UserImpl(
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
class _$UserImpl with DiagnosticableTreeMixin implements _User {
  const _$UserImpl(
      {this.id,
      @JsonKey(name: 'ir_number') this.irNumber,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      @JsonKey(name: 'image_url') this.imageUrl});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'ir_number')
  final String? irNumber;
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(id: $id, irNumber: $irNumber, firstName: $firstName, lastName: $lastName, imageUrl: $imageUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
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
            other is _$UserImpl &&
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

abstract class _User implements User {
  const factory _User(
      {final int? id,
      @JsonKey(name: 'ir_number') final String? irNumber,
      @JsonKey(name: 'first_name') final String? firstName,
      @JsonKey(name: 'last_name') final String? lastName,
      @JsonKey(name: 'image_url') final String? imageUrl}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'ir_number')
  String? get irNumber;
  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NextApprovalStep _$NextApprovalStepFromJson(Map<String, dynamic> json) {
  return _NextApprovalStep.fromJson(json);
}

/// @nodoc
mixin _$NextApprovalStep {
  int? get order => throw _privateConstructorUsedError;
  List<Role>? get roles => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'action_by')
  String? get actionBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'action_type')
  String? get actionType => throw _privateConstructorUsedError;

  /// Serializes this NextApprovalStep to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NextApprovalStep
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NextApprovalStepCopyWith<NextApprovalStep> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NextApprovalStepCopyWith<$Res> {
  factory $NextApprovalStepCopyWith(
          NextApprovalStep value, $Res Function(NextApprovalStep) then) =
      _$NextApprovalStepCopyWithImpl<$Res, NextApprovalStep>;
  @useResult
  $Res call(
      {int? order,
      List<Role>? roles,
      String? status,
      @JsonKey(name: 'action_by') String? actionBy,
      @JsonKey(name: 'action_type') String? actionType});
}

/// @nodoc
class _$NextApprovalStepCopyWithImpl<$Res, $Val extends NextApprovalStep>
    implements $NextApprovalStepCopyWith<$Res> {
  _$NextApprovalStepCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NextApprovalStep
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
              as List<Role>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      actionBy: freezed == actionBy
          ? _value.actionBy
          : actionBy // ignore: cast_nullable_to_non_nullable
              as String?,
      actionType: freezed == actionType
          ? _value.actionType
          : actionType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NextApprovalStepImplCopyWith<$Res>
    implements $NextApprovalStepCopyWith<$Res> {
  factory _$$NextApprovalStepImplCopyWith(_$NextApprovalStepImpl value,
          $Res Function(_$NextApprovalStepImpl) then) =
      __$$NextApprovalStepImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? order,
      List<Role>? roles,
      String? status,
      @JsonKey(name: 'action_by') String? actionBy,
      @JsonKey(name: 'action_type') String? actionType});
}

/// @nodoc
class __$$NextApprovalStepImplCopyWithImpl<$Res>
    extends _$NextApprovalStepCopyWithImpl<$Res, _$NextApprovalStepImpl>
    implements _$$NextApprovalStepImplCopyWith<$Res> {
  __$$NextApprovalStepImplCopyWithImpl(_$NextApprovalStepImpl _value,
      $Res Function(_$NextApprovalStepImpl) _then)
      : super(_value, _then);

  /// Create a copy of NextApprovalStep
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
    return _then(_$NextApprovalStepImpl(
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      roles: freezed == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<Role>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      actionBy: freezed == actionBy
          ? _value.actionBy
          : actionBy // ignore: cast_nullable_to_non_nullable
              as String?,
      actionType: freezed == actionType
          ? _value.actionType
          : actionType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NextApprovalStepImpl extends _NextApprovalStep
    with DiagnosticableTreeMixin {
  const _$NextApprovalStepImpl(
      {this.order,
      final List<Role>? roles,
      this.status,
      @JsonKey(name: 'action_by') this.actionBy,
      @JsonKey(name: 'action_type') this.actionType})
      : _roles = roles,
        super._();

  factory _$NextApprovalStepImpl.fromJson(Map<String, dynamic> json) =>
      _$$NextApprovalStepImplFromJson(json);

  @override
  final int? order;
  final List<Role>? _roles;
  @override
  List<Role>? get roles {
    final value = _roles;
    if (value == null) return null;
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? status;
  @override
  @JsonKey(name: 'action_by')
  final String? actionBy;
  @override
  @JsonKey(name: 'action_type')
  final String? actionType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NextApprovalStep(order: $order, roles: $roles, status: $status, actionBy: $actionBy, actionType: $actionType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NextApprovalStep'))
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
            other is _$NextApprovalStepImpl &&
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

  /// Create a copy of NextApprovalStep
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NextApprovalStepImplCopyWith<_$NextApprovalStepImpl> get copyWith =>
      __$$NextApprovalStepImplCopyWithImpl<_$NextApprovalStepImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NextApprovalStepImplToJson(
      this,
    );
  }
}

abstract class _NextApprovalStep extends NextApprovalStep {
  const factory _NextApprovalStep(
          {final int? order,
          final List<Role>? roles,
          final String? status,
          @JsonKey(name: 'action_by') final String? actionBy,
          @JsonKey(name: 'action_type') final String? actionType}) =
      _$NextApprovalStepImpl;
  const _NextApprovalStep._() : super._();

  factory _NextApprovalStep.fromJson(Map<String, dynamic> json) =
      _$NextApprovalStepImpl.fromJson;

  @override
  int? get order;
  @override
  List<Role>? get roles;
  @override
  String? get status;
  @override
  @JsonKey(name: 'action_by')
  String? get actionBy;
  @override
  @JsonKey(name: 'action_type')
  String? get actionType;

  /// Create a copy of NextApprovalStep
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NextApprovalStepImplCopyWith<_$NextApprovalStepImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Role _$RoleFromJson(Map<String, dynamic> json) {
  return _Role.fromJson(json);
}

/// @nodoc
mixin _$Role {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this Role to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Role
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoleCopyWith<Role> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleCopyWith<$Res> {
  factory $RoleCopyWith(Role value, $Res Function(Role) then) =
      _$RoleCopyWithImpl<$Res, Role>;
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class _$RoleCopyWithImpl<$Res, $Val extends Role>
    implements $RoleCopyWith<$Res> {
  _$RoleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Role
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
abstract class _$$RoleImplCopyWith<$Res> implements $RoleCopyWith<$Res> {
  factory _$$RoleImplCopyWith(
          _$RoleImpl value, $Res Function(_$RoleImpl) then) =
      __$$RoleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class __$$RoleImplCopyWithImpl<$Res>
    extends _$RoleCopyWithImpl<$Res, _$RoleImpl>
    implements _$$RoleImplCopyWith<$Res> {
  __$$RoleImplCopyWithImpl(_$RoleImpl _value, $Res Function(_$RoleImpl) _then)
      : super(_value, _then);

  /// Create a copy of Role
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$RoleImpl(
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
class _$RoleImpl with DiagnosticableTreeMixin implements _Role {
  const _$RoleImpl({this.id, this.name});

  factory _$RoleImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoleImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Role(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Role'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of Role
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoleImplCopyWith<_$RoleImpl> get copyWith =>
      __$$RoleImplCopyWithImpl<_$RoleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoleImplToJson(
      this,
    );
  }
}

abstract class _Role implements Role {
  const factory _Role({final String? id, final String? name}) = _$RoleImpl;

  factory _Role.fromJson(Map<String, dynamic> json) = _$RoleImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;

  /// Create a copy of Role
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoleImplCopyWith<_$RoleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
