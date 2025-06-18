// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loan_history_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoanHistoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LoanData> response) success,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<LoanData> response)? success,
    TResult? Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LoanData> response)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanHistoryStateCopyWith<$Res> {
  factory $LoanHistoryStateCopyWith(
          LoanHistoryState value, $Res Function(LoanHistoryState) then) =
      _$LoanHistoryStateCopyWithImpl<$Res, LoanHistoryState>;
}

/// @nodoc
class _$LoanHistoryStateCopyWithImpl<$Res, $Val extends LoanHistoryState>
    implements $LoanHistoryStateCopyWith<$Res> {
  _$LoanHistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoanHistoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$LoanHistoryStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoanHistoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'LoanHistoryState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LoanData> response) success,
    required TResult Function(String error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<LoanData> response)? success,
    TResult? Function(String error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LoanData> response)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LoanHistoryState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$LoanHistoryStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoanHistoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'LoanHistoryState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LoanData> response) success,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<LoanData> response)? success,
    TResult? Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LoanData> response)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements LoanHistoryState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<LoanData> response});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$LoanHistoryStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoanHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$SuccessImpl(
      response: null == response
          ? _value._response
          : response // ignore: cast_nullable_to_non_nullable
              as List<LoanData>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl({required final List<LoanData> response})
      : _response = response;

  final List<LoanData> _response;
  @override
  List<LoanData> get response {
    if (_response is EqualUnmodifiableListView) return _response;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_response);
  }

  @override
  String toString() {
    return 'LoanHistoryState.success(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other._response, _response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_response));

  /// Create a copy of LoanHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LoanData> response) success,
    required TResult Function(String error) failure,
  }) {
    return success(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<LoanData> response)? success,
    TResult? Function(String error)? failure,
  }) {
    return success?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LoanData> response)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements LoanHistoryState {
  const factory _Success({required final List<LoanData> response}) =
      _$SuccessImpl;

  List<LoanData> get response;

  /// Create a copy of LoanHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$LoanHistoryStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoanHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'LoanHistoryState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of LoanHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LoanData> response) success,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<LoanData> response)? success,
    TResult? Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LoanData> response)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements LoanHistoryState {
  const factory _Failure({required final String error}) = _$FailureImpl;

  String get error;

  /// Create a copy of LoanHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoanApplicationsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LoanData> response) success,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<LoanData> response)? success,
    TResult? Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LoanData> response)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApplicationsInitial value) initial,
    required TResult Function(_ApplicationsLoading value) loading,
    required TResult Function(_ApplicationsSuccess value) success,
    required TResult Function(_ApplicationsFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApplicationsInitial value)? initial,
    TResult? Function(_ApplicationsLoading value)? loading,
    TResult? Function(_ApplicationsSuccess value)? success,
    TResult? Function(_ApplicationsFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApplicationsInitial value)? initial,
    TResult Function(_ApplicationsLoading value)? loading,
    TResult Function(_ApplicationsSuccess value)? success,
    TResult Function(_ApplicationsFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanApplicationsStateCopyWith<$Res> {
  factory $LoanApplicationsStateCopyWith(LoanApplicationsState value,
          $Res Function(LoanApplicationsState) then) =
      _$LoanApplicationsStateCopyWithImpl<$Res, LoanApplicationsState>;
}

/// @nodoc
class _$LoanApplicationsStateCopyWithImpl<$Res,
        $Val extends LoanApplicationsState>
    implements $LoanApplicationsStateCopyWith<$Res> {
  _$LoanApplicationsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoanApplicationsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ApplicationsInitialImplCopyWith<$Res> {
  factory _$$ApplicationsInitialImplCopyWith(_$ApplicationsInitialImpl value,
          $Res Function(_$ApplicationsInitialImpl) then) =
      __$$ApplicationsInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ApplicationsInitialImplCopyWithImpl<$Res>
    extends _$LoanApplicationsStateCopyWithImpl<$Res, _$ApplicationsInitialImpl>
    implements _$$ApplicationsInitialImplCopyWith<$Res> {
  __$$ApplicationsInitialImplCopyWithImpl(_$ApplicationsInitialImpl _value,
      $Res Function(_$ApplicationsInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoanApplicationsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ApplicationsInitialImpl implements _ApplicationsInitial {
  const _$ApplicationsInitialImpl();

  @override
  String toString() {
    return 'LoanApplicationsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplicationsInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LoanData> response) success,
    required TResult Function(String error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<LoanData> response)? success,
    TResult? Function(String error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LoanData> response)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApplicationsInitial value) initial,
    required TResult Function(_ApplicationsLoading value) loading,
    required TResult Function(_ApplicationsSuccess value) success,
    required TResult Function(_ApplicationsFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApplicationsInitial value)? initial,
    TResult? Function(_ApplicationsLoading value)? loading,
    TResult? Function(_ApplicationsSuccess value)? success,
    TResult? Function(_ApplicationsFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApplicationsInitial value)? initial,
    TResult Function(_ApplicationsLoading value)? loading,
    TResult Function(_ApplicationsSuccess value)? success,
    TResult Function(_ApplicationsFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ApplicationsInitial implements LoanApplicationsState {
  const factory _ApplicationsInitial() = _$ApplicationsInitialImpl;
}

/// @nodoc
abstract class _$$ApplicationsLoadingImplCopyWith<$Res> {
  factory _$$ApplicationsLoadingImplCopyWith(_$ApplicationsLoadingImpl value,
          $Res Function(_$ApplicationsLoadingImpl) then) =
      __$$ApplicationsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ApplicationsLoadingImplCopyWithImpl<$Res>
    extends _$LoanApplicationsStateCopyWithImpl<$Res, _$ApplicationsLoadingImpl>
    implements _$$ApplicationsLoadingImplCopyWith<$Res> {
  __$$ApplicationsLoadingImplCopyWithImpl(_$ApplicationsLoadingImpl _value,
      $Res Function(_$ApplicationsLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoanApplicationsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ApplicationsLoadingImpl implements _ApplicationsLoading {
  const _$ApplicationsLoadingImpl();

  @override
  String toString() {
    return 'LoanApplicationsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplicationsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LoanData> response) success,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<LoanData> response)? success,
    TResult? Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LoanData> response)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApplicationsInitial value) initial,
    required TResult Function(_ApplicationsLoading value) loading,
    required TResult Function(_ApplicationsSuccess value) success,
    required TResult Function(_ApplicationsFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApplicationsInitial value)? initial,
    TResult? Function(_ApplicationsLoading value)? loading,
    TResult? Function(_ApplicationsSuccess value)? success,
    TResult? Function(_ApplicationsFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApplicationsInitial value)? initial,
    TResult Function(_ApplicationsLoading value)? loading,
    TResult Function(_ApplicationsSuccess value)? success,
    TResult Function(_ApplicationsFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ApplicationsLoading implements LoanApplicationsState {
  const factory _ApplicationsLoading() = _$ApplicationsLoadingImpl;
}

/// @nodoc
abstract class _$$ApplicationsSuccessImplCopyWith<$Res> {
  factory _$$ApplicationsSuccessImplCopyWith(_$ApplicationsSuccessImpl value,
          $Res Function(_$ApplicationsSuccessImpl) then) =
      __$$ApplicationsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<LoanData> response});
}

/// @nodoc
class __$$ApplicationsSuccessImplCopyWithImpl<$Res>
    extends _$LoanApplicationsStateCopyWithImpl<$Res, _$ApplicationsSuccessImpl>
    implements _$$ApplicationsSuccessImplCopyWith<$Res> {
  __$$ApplicationsSuccessImplCopyWithImpl(_$ApplicationsSuccessImpl _value,
      $Res Function(_$ApplicationsSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoanApplicationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$ApplicationsSuccessImpl(
      response: null == response
          ? _value._response
          : response // ignore: cast_nullable_to_non_nullable
              as List<LoanData>,
    ));
  }
}

/// @nodoc

class _$ApplicationsSuccessImpl implements _ApplicationsSuccess {
  const _$ApplicationsSuccessImpl({required final List<LoanData> response})
      : _response = response;

  final List<LoanData> _response;
  @override
  List<LoanData> get response {
    if (_response is EqualUnmodifiableListView) return _response;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_response);
  }

  @override
  String toString() {
    return 'LoanApplicationsState.success(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplicationsSuccessImpl &&
            const DeepCollectionEquality().equals(other._response, _response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_response));

  /// Create a copy of LoanApplicationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplicationsSuccessImplCopyWith<_$ApplicationsSuccessImpl> get copyWith =>
      __$$ApplicationsSuccessImplCopyWithImpl<_$ApplicationsSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LoanData> response) success,
    required TResult Function(String error) failure,
  }) {
    return success(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<LoanData> response)? success,
    TResult? Function(String error)? failure,
  }) {
    return success?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LoanData> response)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApplicationsInitial value) initial,
    required TResult Function(_ApplicationsLoading value) loading,
    required TResult Function(_ApplicationsSuccess value) success,
    required TResult Function(_ApplicationsFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApplicationsInitial value)? initial,
    TResult? Function(_ApplicationsLoading value)? loading,
    TResult? Function(_ApplicationsSuccess value)? success,
    TResult? Function(_ApplicationsFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApplicationsInitial value)? initial,
    TResult Function(_ApplicationsLoading value)? loading,
    TResult Function(_ApplicationsSuccess value)? success,
    TResult Function(_ApplicationsFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _ApplicationsSuccess implements LoanApplicationsState {
  const factory _ApplicationsSuccess({required final List<LoanData> response}) =
      _$ApplicationsSuccessImpl;

  List<LoanData> get response;

  /// Create a copy of LoanApplicationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApplicationsSuccessImplCopyWith<_$ApplicationsSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApplicationsFailureImplCopyWith<$Res> {
  factory _$$ApplicationsFailureImplCopyWith(_$ApplicationsFailureImpl value,
          $Res Function(_$ApplicationsFailureImpl) then) =
      __$$ApplicationsFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ApplicationsFailureImplCopyWithImpl<$Res>
    extends _$LoanApplicationsStateCopyWithImpl<$Res, _$ApplicationsFailureImpl>
    implements _$$ApplicationsFailureImplCopyWith<$Res> {
  __$$ApplicationsFailureImplCopyWithImpl(_$ApplicationsFailureImpl _value,
      $Res Function(_$ApplicationsFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoanApplicationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ApplicationsFailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ApplicationsFailureImpl implements _ApplicationsFailure {
  const _$ApplicationsFailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'LoanApplicationsState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplicationsFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of LoanApplicationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplicationsFailureImplCopyWith<_$ApplicationsFailureImpl> get copyWith =>
      __$$ApplicationsFailureImplCopyWithImpl<_$ApplicationsFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LoanData> response) success,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<LoanData> response)? success,
    TResult? Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LoanData> response)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApplicationsInitial value) initial,
    required TResult Function(_ApplicationsLoading value) loading,
    required TResult Function(_ApplicationsSuccess value) success,
    required TResult Function(_ApplicationsFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApplicationsInitial value)? initial,
    TResult? Function(_ApplicationsLoading value)? loading,
    TResult? Function(_ApplicationsSuccess value)? success,
    TResult? Function(_ApplicationsFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApplicationsInitial value)? initial,
    TResult Function(_ApplicationsLoading value)? loading,
    TResult Function(_ApplicationsSuccess value)? success,
    TResult Function(_ApplicationsFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _ApplicationsFailure implements LoanApplicationsState {
  const factory _ApplicationsFailure({required final String error}) =
      _$ApplicationsFailureImpl;

  String get error;

  /// Create a copy of LoanApplicationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApplicationsFailureImplCopyWith<_$ApplicationsFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ActiveLoansState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LoanData> response) success,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<LoanData> response)? success,
    TResult? Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LoanData> response)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ActiveInitial value) initial,
    required TResult Function(_ActiveLoading value) loading,
    required TResult Function(_ActiveSuccess value) success,
    required TResult Function(_ActiveFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ActiveInitial value)? initial,
    TResult? Function(_ActiveLoading value)? loading,
    TResult? Function(_ActiveSuccess value)? success,
    TResult? Function(_ActiveFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActiveInitial value)? initial,
    TResult Function(_ActiveLoading value)? loading,
    TResult Function(_ActiveSuccess value)? success,
    TResult Function(_ActiveFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveLoansStateCopyWith<$Res> {
  factory $ActiveLoansStateCopyWith(
          ActiveLoansState value, $Res Function(ActiveLoansState) then) =
      _$ActiveLoansStateCopyWithImpl<$Res, ActiveLoansState>;
}

/// @nodoc
class _$ActiveLoansStateCopyWithImpl<$Res, $Val extends ActiveLoansState>
    implements $ActiveLoansStateCopyWith<$Res> {
  _$ActiveLoansStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActiveLoansState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ActiveInitialImplCopyWith<$Res> {
  factory _$$ActiveInitialImplCopyWith(
          _$ActiveInitialImpl value, $Res Function(_$ActiveInitialImpl) then) =
      __$$ActiveInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ActiveInitialImplCopyWithImpl<$Res>
    extends _$ActiveLoansStateCopyWithImpl<$Res, _$ActiveInitialImpl>
    implements _$$ActiveInitialImplCopyWith<$Res> {
  __$$ActiveInitialImplCopyWithImpl(
      _$ActiveInitialImpl _value, $Res Function(_$ActiveInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActiveLoansState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ActiveInitialImpl implements _ActiveInitial {
  const _$ActiveInitialImpl();

  @override
  String toString() {
    return 'ActiveLoansState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ActiveInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LoanData> response) success,
    required TResult Function(String error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<LoanData> response)? success,
    TResult? Function(String error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LoanData> response)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ActiveInitial value) initial,
    required TResult Function(_ActiveLoading value) loading,
    required TResult Function(_ActiveSuccess value) success,
    required TResult Function(_ActiveFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ActiveInitial value)? initial,
    TResult? Function(_ActiveLoading value)? loading,
    TResult? Function(_ActiveSuccess value)? success,
    TResult? Function(_ActiveFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActiveInitial value)? initial,
    TResult Function(_ActiveLoading value)? loading,
    TResult Function(_ActiveSuccess value)? success,
    TResult Function(_ActiveFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ActiveInitial implements ActiveLoansState {
  const factory _ActiveInitial() = _$ActiveInitialImpl;
}

/// @nodoc
abstract class _$$ActiveLoadingImplCopyWith<$Res> {
  factory _$$ActiveLoadingImplCopyWith(
          _$ActiveLoadingImpl value, $Res Function(_$ActiveLoadingImpl) then) =
      __$$ActiveLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ActiveLoadingImplCopyWithImpl<$Res>
    extends _$ActiveLoansStateCopyWithImpl<$Res, _$ActiveLoadingImpl>
    implements _$$ActiveLoadingImplCopyWith<$Res> {
  __$$ActiveLoadingImplCopyWithImpl(
      _$ActiveLoadingImpl _value, $Res Function(_$ActiveLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActiveLoansState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ActiveLoadingImpl implements _ActiveLoading {
  const _$ActiveLoadingImpl();

  @override
  String toString() {
    return 'ActiveLoansState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ActiveLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LoanData> response) success,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<LoanData> response)? success,
    TResult? Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LoanData> response)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ActiveInitial value) initial,
    required TResult Function(_ActiveLoading value) loading,
    required TResult Function(_ActiveSuccess value) success,
    required TResult Function(_ActiveFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ActiveInitial value)? initial,
    TResult? Function(_ActiveLoading value)? loading,
    TResult? Function(_ActiveSuccess value)? success,
    TResult? Function(_ActiveFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActiveInitial value)? initial,
    TResult Function(_ActiveLoading value)? loading,
    TResult Function(_ActiveSuccess value)? success,
    TResult Function(_ActiveFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ActiveLoading implements ActiveLoansState {
  const factory _ActiveLoading() = _$ActiveLoadingImpl;
}

/// @nodoc
abstract class _$$ActiveSuccessImplCopyWith<$Res> {
  factory _$$ActiveSuccessImplCopyWith(
          _$ActiveSuccessImpl value, $Res Function(_$ActiveSuccessImpl) then) =
      __$$ActiveSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<LoanData> response});
}

/// @nodoc
class __$$ActiveSuccessImplCopyWithImpl<$Res>
    extends _$ActiveLoansStateCopyWithImpl<$Res, _$ActiveSuccessImpl>
    implements _$$ActiveSuccessImplCopyWith<$Res> {
  __$$ActiveSuccessImplCopyWithImpl(
      _$ActiveSuccessImpl _value, $Res Function(_$ActiveSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActiveLoansState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$ActiveSuccessImpl(
      response: null == response
          ? _value._response
          : response // ignore: cast_nullable_to_non_nullable
              as List<LoanData>,
    ));
  }
}

/// @nodoc

class _$ActiveSuccessImpl implements _ActiveSuccess {
  const _$ActiveSuccessImpl({required final List<LoanData> response})
      : _response = response;

  final List<LoanData> _response;
  @override
  List<LoanData> get response {
    if (_response is EqualUnmodifiableListView) return _response;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_response);
  }

  @override
  String toString() {
    return 'ActiveLoansState.success(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActiveSuccessImpl &&
            const DeepCollectionEquality().equals(other._response, _response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_response));

  /// Create a copy of ActiveLoansState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActiveSuccessImplCopyWith<_$ActiveSuccessImpl> get copyWith =>
      __$$ActiveSuccessImplCopyWithImpl<_$ActiveSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LoanData> response) success,
    required TResult Function(String error) failure,
  }) {
    return success(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<LoanData> response)? success,
    TResult? Function(String error)? failure,
  }) {
    return success?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LoanData> response)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ActiveInitial value) initial,
    required TResult Function(_ActiveLoading value) loading,
    required TResult Function(_ActiveSuccess value) success,
    required TResult Function(_ActiveFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ActiveInitial value)? initial,
    TResult? Function(_ActiveLoading value)? loading,
    TResult? Function(_ActiveSuccess value)? success,
    TResult? Function(_ActiveFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActiveInitial value)? initial,
    TResult Function(_ActiveLoading value)? loading,
    TResult Function(_ActiveSuccess value)? success,
    TResult Function(_ActiveFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _ActiveSuccess implements ActiveLoansState {
  const factory _ActiveSuccess({required final List<LoanData> response}) =
      _$ActiveSuccessImpl;

  List<LoanData> get response;

  /// Create a copy of ActiveLoansState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActiveSuccessImplCopyWith<_$ActiveSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ActiveFailureImplCopyWith<$Res> {
  factory _$$ActiveFailureImplCopyWith(
          _$ActiveFailureImpl value, $Res Function(_$ActiveFailureImpl) then) =
      __$$ActiveFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ActiveFailureImplCopyWithImpl<$Res>
    extends _$ActiveLoansStateCopyWithImpl<$Res, _$ActiveFailureImpl>
    implements _$$ActiveFailureImplCopyWith<$Res> {
  __$$ActiveFailureImplCopyWithImpl(
      _$ActiveFailureImpl _value, $Res Function(_$ActiveFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActiveLoansState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ActiveFailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ActiveFailureImpl implements _ActiveFailure {
  const _$ActiveFailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'ActiveLoansState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActiveFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ActiveLoansState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActiveFailureImplCopyWith<_$ActiveFailureImpl> get copyWith =>
      __$$ActiveFailureImplCopyWithImpl<_$ActiveFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LoanData> response) success,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<LoanData> response)? success,
    TResult? Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LoanData> response)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ActiveInitial value) initial,
    required TResult Function(_ActiveLoading value) loading,
    required TResult Function(_ActiveSuccess value) success,
    required TResult Function(_ActiveFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ActiveInitial value)? initial,
    TResult? Function(_ActiveLoading value)? loading,
    TResult? Function(_ActiveSuccess value)? success,
    TResult? Function(_ActiveFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActiveInitial value)? initial,
    TResult Function(_ActiveLoading value)? loading,
    TResult Function(_ActiveSuccess value)? success,
    TResult Function(_ActiveFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _ActiveFailure implements ActiveLoansState {
  const factory _ActiveFailure({required final String error}) =
      _$ActiveFailureImpl;

  String get error;

  /// Create a copy of ActiveLoansState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActiveFailureImplCopyWith<_$ActiveFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
