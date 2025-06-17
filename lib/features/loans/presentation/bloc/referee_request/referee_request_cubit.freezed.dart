// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'referee_request_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RefereeRequestState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RefereeRequestData> response) success,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RefereeRequestData> response)? success,
    TResult? Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RefereeRequestData> response)? success,
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
abstract class $RefereeRequestStateCopyWith<$Res> {
  factory $RefereeRequestStateCopyWith(
          RefereeRequestState value, $Res Function(RefereeRequestState) then) =
      _$RefereeRequestStateCopyWithImpl<$Res, RefereeRequestState>;
}

/// @nodoc
class _$RefereeRequestStateCopyWithImpl<$Res, $Val extends RefereeRequestState>
    implements $RefereeRequestStateCopyWith<$Res> {
  _$RefereeRequestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefereeRequestState
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
    extends _$RefereeRequestStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefereeRequestState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'RefereeRequestState.initial()';
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
    required TResult Function(List<RefereeRequestData> response) success,
    required TResult Function(String error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RefereeRequestData> response)? success,
    TResult? Function(String error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RefereeRequestData> response)? success,
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

abstract class _Initial implements RefereeRequestState {
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
    extends _$RefereeRequestStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefereeRequestState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'RefereeRequestState.loading()';
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
    required TResult Function(List<RefereeRequestData> response) success,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RefereeRequestData> response)? success,
    TResult? Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RefereeRequestData> response)? success,
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

abstract class _Loading implements RefereeRequestState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RefereeRequestData> response});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$RefereeRequestStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefereeRequestState
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
              as List<RefereeRequestData>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl({required final List<RefereeRequestData> response})
      : _response = response;

  final List<RefereeRequestData> _response;
  @override
  List<RefereeRequestData> get response {
    if (_response is EqualUnmodifiableListView) return _response;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_response);
  }

  @override
  String toString() {
    return 'RefereeRequestState.success(response: $response)';
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

  /// Create a copy of RefereeRequestState
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
    required TResult Function(List<RefereeRequestData> response) success,
    required TResult Function(String error) failure,
  }) {
    return success(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RefereeRequestData> response)? success,
    TResult? Function(String error)? failure,
  }) {
    return success?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RefereeRequestData> response)? success,
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

abstract class _Success implements RefereeRequestState {
  const factory _Success({required final List<RefereeRequestData> response}) =
      _$SuccessImpl;

  List<RefereeRequestData> get response;

  /// Create a copy of RefereeRequestState
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
    extends _$RefereeRequestStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefereeRequestState
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
    return 'RefereeRequestState.failure(error: $error)';
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

  /// Create a copy of RefereeRequestState
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
    required TResult Function(List<RefereeRequestData> response) success,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RefereeRequestData> response)? success,
    TResult? Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RefereeRequestData> response)? success,
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

abstract class _Failure implements RefereeRequestState {
  const factory _Failure({required final String error}) = _$FailureImpl;

  String get error;

  /// Create a copy of RefereeRequestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoanRefereeRequestState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RefereeRequestData> response) success,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RefereeRequestData> response)? success,
    TResult? Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RefereeRequestData> response)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoanInitial value) initial,
    required TResult Function(_LoanLoading value) loading,
    required TResult Function(_LoanSuccess value) success,
    required TResult Function(_LoanFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoanInitial value)? initial,
    TResult? Function(_LoanLoading value)? loading,
    TResult? Function(_LoanSuccess value)? success,
    TResult? Function(_LoanFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoanInitial value)? initial,
    TResult Function(_LoanLoading value)? loading,
    TResult Function(_LoanSuccess value)? success,
    TResult Function(_LoanFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanRefereeRequestStateCopyWith<$Res> {
  factory $LoanRefereeRequestStateCopyWith(LoanRefereeRequestState value,
          $Res Function(LoanRefereeRequestState) then) =
      _$LoanRefereeRequestStateCopyWithImpl<$Res, LoanRefereeRequestState>;
}

/// @nodoc
class _$LoanRefereeRequestStateCopyWithImpl<$Res,
        $Val extends LoanRefereeRequestState>
    implements $LoanRefereeRequestStateCopyWith<$Res> {
  _$LoanRefereeRequestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoanRefereeRequestState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoanInitialImplCopyWith<$Res> {
  factory _$$LoanInitialImplCopyWith(
          _$LoanInitialImpl value, $Res Function(_$LoanInitialImpl) then) =
      __$$LoanInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoanInitialImplCopyWithImpl<$Res>
    extends _$LoanRefereeRequestStateCopyWithImpl<$Res, _$LoanInitialImpl>
    implements _$$LoanInitialImplCopyWith<$Res> {
  __$$LoanInitialImplCopyWithImpl(
      _$LoanInitialImpl _value, $Res Function(_$LoanInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoanRefereeRequestState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoanInitialImpl implements _LoanInitial {
  const _$LoanInitialImpl();

  @override
  String toString() {
    return 'LoanRefereeRequestState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoanInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RefereeRequestData> response) success,
    required TResult Function(String error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RefereeRequestData> response)? success,
    TResult? Function(String error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RefereeRequestData> response)? success,
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
    required TResult Function(_LoanInitial value) initial,
    required TResult Function(_LoanLoading value) loading,
    required TResult Function(_LoanSuccess value) success,
    required TResult Function(_LoanFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoanInitial value)? initial,
    TResult? Function(_LoanLoading value)? loading,
    TResult? Function(_LoanSuccess value)? success,
    TResult? Function(_LoanFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoanInitial value)? initial,
    TResult Function(_LoanLoading value)? loading,
    TResult Function(_LoanSuccess value)? success,
    TResult Function(_LoanFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _LoanInitial implements LoanRefereeRequestState {
  const factory _LoanInitial() = _$LoanInitialImpl;
}

/// @nodoc
abstract class _$$LoanLoadingImplCopyWith<$Res> {
  factory _$$LoanLoadingImplCopyWith(
          _$LoanLoadingImpl value, $Res Function(_$LoanLoadingImpl) then) =
      __$$LoanLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoanLoadingImplCopyWithImpl<$Res>
    extends _$LoanRefereeRequestStateCopyWithImpl<$Res, _$LoanLoadingImpl>
    implements _$$LoanLoadingImplCopyWith<$Res> {
  __$$LoanLoadingImplCopyWithImpl(
      _$LoanLoadingImpl _value, $Res Function(_$LoanLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoanRefereeRequestState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoanLoadingImpl implements _LoanLoading {
  const _$LoanLoadingImpl();

  @override
  String toString() {
    return 'LoanRefereeRequestState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoanLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RefereeRequestData> response) success,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RefereeRequestData> response)? success,
    TResult? Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RefereeRequestData> response)? success,
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
    required TResult Function(_LoanInitial value) initial,
    required TResult Function(_LoanLoading value) loading,
    required TResult Function(_LoanSuccess value) success,
    required TResult Function(_LoanFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoanInitial value)? initial,
    TResult? Function(_LoanLoading value)? loading,
    TResult? Function(_LoanSuccess value)? success,
    TResult? Function(_LoanFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoanInitial value)? initial,
    TResult Function(_LoanLoading value)? loading,
    TResult Function(_LoanSuccess value)? success,
    TResult Function(_LoanFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoanLoading implements LoanRefereeRequestState {
  const factory _LoanLoading() = _$LoanLoadingImpl;
}

/// @nodoc
abstract class _$$LoanSuccessImplCopyWith<$Res> {
  factory _$$LoanSuccessImplCopyWith(
          _$LoanSuccessImpl value, $Res Function(_$LoanSuccessImpl) then) =
      __$$LoanSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RefereeRequestData> response});
}

/// @nodoc
class __$$LoanSuccessImplCopyWithImpl<$Res>
    extends _$LoanRefereeRequestStateCopyWithImpl<$Res, _$LoanSuccessImpl>
    implements _$$LoanSuccessImplCopyWith<$Res> {
  __$$LoanSuccessImplCopyWithImpl(
      _$LoanSuccessImpl _value, $Res Function(_$LoanSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoanRefereeRequestState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$LoanSuccessImpl(
      response: null == response
          ? _value._response
          : response // ignore: cast_nullable_to_non_nullable
              as List<RefereeRequestData>,
    ));
  }
}

/// @nodoc

class _$LoanSuccessImpl implements _LoanSuccess {
  const _$LoanSuccessImpl({required final List<RefereeRequestData> response})
      : _response = response;

  final List<RefereeRequestData> _response;
  @override
  List<RefereeRequestData> get response {
    if (_response is EqualUnmodifiableListView) return _response;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_response);
  }

  @override
  String toString() {
    return 'LoanRefereeRequestState.success(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoanSuccessImpl &&
            const DeepCollectionEquality().equals(other._response, _response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_response));

  /// Create a copy of LoanRefereeRequestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoanSuccessImplCopyWith<_$LoanSuccessImpl> get copyWith =>
      __$$LoanSuccessImplCopyWithImpl<_$LoanSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RefereeRequestData> response) success,
    required TResult Function(String error) failure,
  }) {
    return success(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RefereeRequestData> response)? success,
    TResult? Function(String error)? failure,
  }) {
    return success?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RefereeRequestData> response)? success,
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
    required TResult Function(_LoanInitial value) initial,
    required TResult Function(_LoanLoading value) loading,
    required TResult Function(_LoanSuccess value) success,
    required TResult Function(_LoanFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoanInitial value)? initial,
    TResult? Function(_LoanLoading value)? loading,
    TResult? Function(_LoanSuccess value)? success,
    TResult? Function(_LoanFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoanInitial value)? initial,
    TResult Function(_LoanLoading value)? loading,
    TResult Function(_LoanSuccess value)? success,
    TResult Function(_LoanFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _LoanSuccess implements LoanRefereeRequestState {
  const factory _LoanSuccess(
      {required final List<RefereeRequestData> response}) = _$LoanSuccessImpl;

  List<RefereeRequestData> get response;

  /// Create a copy of LoanRefereeRequestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoanSuccessImplCopyWith<_$LoanSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoanFailureImplCopyWith<$Res> {
  factory _$$LoanFailureImplCopyWith(
          _$LoanFailureImpl value, $Res Function(_$LoanFailureImpl) then) =
      __$$LoanFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$LoanFailureImplCopyWithImpl<$Res>
    extends _$LoanRefereeRequestStateCopyWithImpl<$Res, _$LoanFailureImpl>
    implements _$$LoanFailureImplCopyWith<$Res> {
  __$$LoanFailureImplCopyWithImpl(
      _$LoanFailureImpl _value, $Res Function(_$LoanFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoanRefereeRequestState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$LoanFailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoanFailureImpl implements _LoanFailure {
  const _$LoanFailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'LoanRefereeRequestState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoanFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of LoanRefereeRequestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoanFailureImplCopyWith<_$LoanFailureImpl> get copyWith =>
      __$$LoanFailureImplCopyWithImpl<_$LoanFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RefereeRequestData> response) success,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RefereeRequestData> response)? success,
    TResult? Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RefereeRequestData> response)? success,
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
    required TResult Function(_LoanInitial value) initial,
    required TResult Function(_LoanLoading value) loading,
    required TResult Function(_LoanSuccess value) success,
    required TResult Function(_LoanFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoanInitial value)? initial,
    TResult? Function(_LoanLoading value)? loading,
    TResult? Function(_LoanSuccess value)? success,
    TResult? Function(_LoanFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoanInitial value)? initial,
    TResult Function(_LoanLoading value)? loading,
    TResult Function(_LoanSuccess value)? success,
    TResult Function(_LoanFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _LoanFailure implements LoanRefereeRequestState {
  const factory _LoanFailure({required final String error}) = _$LoanFailureImpl;

  String get error;

  /// Create a copy of LoanRefereeRequestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoanFailureImplCopyWith<_$LoanFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InvestmentRefereeRequestState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RefereeRequestData> response) success,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RefereeRequestData> response)? success,
    TResult? Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RefereeRequestData> response)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvestmentInitial value) initial,
    required TResult Function(_InvestmentLoading value) loading,
    required TResult Function(_InvestmentSuccess value) success,
    required TResult Function(_InvestmentFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvestmentInitial value)? initial,
    TResult? Function(_InvestmentLoading value)? loading,
    TResult? Function(_InvestmentSuccess value)? success,
    TResult? Function(_InvestmentFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvestmentInitial value)? initial,
    TResult Function(_InvestmentLoading value)? loading,
    TResult Function(_InvestmentSuccess value)? success,
    TResult Function(_InvestmentFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvestmentRefereeRequestStateCopyWith<$Res> {
  factory $InvestmentRefereeRequestStateCopyWith(
          InvestmentRefereeRequestState value,
          $Res Function(InvestmentRefereeRequestState) then) =
      _$InvestmentRefereeRequestStateCopyWithImpl<$Res,
          InvestmentRefereeRequestState>;
}

/// @nodoc
class _$InvestmentRefereeRequestStateCopyWithImpl<$Res,
        $Val extends InvestmentRefereeRequestState>
    implements $InvestmentRefereeRequestStateCopyWith<$Res> {
  _$InvestmentRefereeRequestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvestmentRefereeRequestState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InvestmentInitialImplCopyWith<$Res> {
  factory _$$InvestmentInitialImplCopyWith(_$InvestmentInitialImpl value,
          $Res Function(_$InvestmentInitialImpl) then) =
      __$$InvestmentInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvestmentInitialImplCopyWithImpl<$Res>
    extends _$InvestmentRefereeRequestStateCopyWithImpl<$Res,
        _$InvestmentInitialImpl>
    implements _$$InvestmentInitialImplCopyWith<$Res> {
  __$$InvestmentInitialImplCopyWithImpl(_$InvestmentInitialImpl _value,
      $Res Function(_$InvestmentInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvestmentRefereeRequestState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InvestmentInitialImpl implements _InvestmentInitial {
  const _$InvestmentInitialImpl();

  @override
  String toString() {
    return 'InvestmentRefereeRequestState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InvestmentInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RefereeRequestData> response) success,
    required TResult Function(String error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RefereeRequestData> response)? success,
    TResult? Function(String error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RefereeRequestData> response)? success,
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
    required TResult Function(_InvestmentInitial value) initial,
    required TResult Function(_InvestmentLoading value) loading,
    required TResult Function(_InvestmentSuccess value) success,
    required TResult Function(_InvestmentFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvestmentInitial value)? initial,
    TResult? Function(_InvestmentLoading value)? loading,
    TResult? Function(_InvestmentSuccess value)? success,
    TResult? Function(_InvestmentFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvestmentInitial value)? initial,
    TResult Function(_InvestmentLoading value)? loading,
    TResult Function(_InvestmentSuccess value)? success,
    TResult Function(_InvestmentFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InvestmentInitial implements InvestmentRefereeRequestState {
  const factory _InvestmentInitial() = _$InvestmentInitialImpl;
}

/// @nodoc
abstract class _$$InvestmentLoadingImplCopyWith<$Res> {
  factory _$$InvestmentLoadingImplCopyWith(_$InvestmentLoadingImpl value,
          $Res Function(_$InvestmentLoadingImpl) then) =
      __$$InvestmentLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvestmentLoadingImplCopyWithImpl<$Res>
    extends _$InvestmentRefereeRequestStateCopyWithImpl<$Res,
        _$InvestmentLoadingImpl>
    implements _$$InvestmentLoadingImplCopyWith<$Res> {
  __$$InvestmentLoadingImplCopyWithImpl(_$InvestmentLoadingImpl _value,
      $Res Function(_$InvestmentLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvestmentRefereeRequestState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InvestmentLoadingImpl implements _InvestmentLoading {
  const _$InvestmentLoadingImpl();

  @override
  String toString() {
    return 'InvestmentRefereeRequestState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InvestmentLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RefereeRequestData> response) success,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RefereeRequestData> response)? success,
    TResult? Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RefereeRequestData> response)? success,
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
    required TResult Function(_InvestmentInitial value) initial,
    required TResult Function(_InvestmentLoading value) loading,
    required TResult Function(_InvestmentSuccess value) success,
    required TResult Function(_InvestmentFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvestmentInitial value)? initial,
    TResult? Function(_InvestmentLoading value)? loading,
    TResult? Function(_InvestmentSuccess value)? success,
    TResult? Function(_InvestmentFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvestmentInitial value)? initial,
    TResult Function(_InvestmentLoading value)? loading,
    TResult Function(_InvestmentSuccess value)? success,
    TResult Function(_InvestmentFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _InvestmentLoading implements InvestmentRefereeRequestState {
  const factory _InvestmentLoading() = _$InvestmentLoadingImpl;
}

/// @nodoc
abstract class _$$InvestmentSuccessImplCopyWith<$Res> {
  factory _$$InvestmentSuccessImplCopyWith(_$InvestmentSuccessImpl value,
          $Res Function(_$InvestmentSuccessImpl) then) =
      __$$InvestmentSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RefereeRequestData> response});
}

/// @nodoc
class __$$InvestmentSuccessImplCopyWithImpl<$Res>
    extends _$InvestmentRefereeRequestStateCopyWithImpl<$Res,
        _$InvestmentSuccessImpl>
    implements _$$InvestmentSuccessImplCopyWith<$Res> {
  __$$InvestmentSuccessImplCopyWithImpl(_$InvestmentSuccessImpl _value,
      $Res Function(_$InvestmentSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvestmentRefereeRequestState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$InvestmentSuccessImpl(
      response: null == response
          ? _value._response
          : response // ignore: cast_nullable_to_non_nullable
              as List<RefereeRequestData>,
    ));
  }
}

/// @nodoc

class _$InvestmentSuccessImpl implements _InvestmentSuccess {
  const _$InvestmentSuccessImpl(
      {required final List<RefereeRequestData> response})
      : _response = response;

  final List<RefereeRequestData> _response;
  @override
  List<RefereeRequestData> get response {
    if (_response is EqualUnmodifiableListView) return _response;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_response);
  }

  @override
  String toString() {
    return 'InvestmentRefereeRequestState.success(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvestmentSuccessImpl &&
            const DeepCollectionEquality().equals(other._response, _response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_response));

  /// Create a copy of InvestmentRefereeRequestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvestmentSuccessImplCopyWith<_$InvestmentSuccessImpl> get copyWith =>
      __$$InvestmentSuccessImplCopyWithImpl<_$InvestmentSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RefereeRequestData> response) success,
    required TResult Function(String error) failure,
  }) {
    return success(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RefereeRequestData> response)? success,
    TResult? Function(String error)? failure,
  }) {
    return success?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RefereeRequestData> response)? success,
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
    required TResult Function(_InvestmentInitial value) initial,
    required TResult Function(_InvestmentLoading value) loading,
    required TResult Function(_InvestmentSuccess value) success,
    required TResult Function(_InvestmentFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvestmentInitial value)? initial,
    TResult? Function(_InvestmentLoading value)? loading,
    TResult? Function(_InvestmentSuccess value)? success,
    TResult? Function(_InvestmentFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvestmentInitial value)? initial,
    TResult Function(_InvestmentLoading value)? loading,
    TResult Function(_InvestmentSuccess value)? success,
    TResult Function(_InvestmentFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _InvestmentSuccess implements InvestmentRefereeRequestState {
  const factory _InvestmentSuccess(
          {required final List<RefereeRequestData> response}) =
      _$InvestmentSuccessImpl;

  List<RefereeRequestData> get response;

  /// Create a copy of InvestmentRefereeRequestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvestmentSuccessImplCopyWith<_$InvestmentSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvestmentFailureImplCopyWith<$Res> {
  factory _$$InvestmentFailureImplCopyWith(_$InvestmentFailureImpl value,
          $Res Function(_$InvestmentFailureImpl) then) =
      __$$InvestmentFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$InvestmentFailureImplCopyWithImpl<$Res>
    extends _$InvestmentRefereeRequestStateCopyWithImpl<$Res,
        _$InvestmentFailureImpl>
    implements _$$InvestmentFailureImplCopyWith<$Res> {
  __$$InvestmentFailureImplCopyWithImpl(_$InvestmentFailureImpl _value,
      $Res Function(_$InvestmentFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvestmentRefereeRequestState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$InvestmentFailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvestmentFailureImpl implements _InvestmentFailure {
  const _$InvestmentFailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'InvestmentRefereeRequestState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvestmentFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of InvestmentRefereeRequestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvestmentFailureImplCopyWith<_$InvestmentFailureImpl> get copyWith =>
      __$$InvestmentFailureImplCopyWithImpl<_$InvestmentFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RefereeRequestData> response) success,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RefereeRequestData> response)? success,
    TResult? Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RefereeRequestData> response)? success,
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
    required TResult Function(_InvestmentInitial value) initial,
    required TResult Function(_InvestmentLoading value) loading,
    required TResult Function(_InvestmentSuccess value) success,
    required TResult Function(_InvestmentFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvestmentInitial value)? initial,
    TResult? Function(_InvestmentLoading value)? loading,
    TResult? Function(_InvestmentSuccess value)? success,
    TResult? Function(_InvestmentFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvestmentInitial value)? initial,
    TResult Function(_InvestmentLoading value)? loading,
    TResult Function(_InvestmentSuccess value)? success,
    TResult Function(_InvestmentFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _InvestmentFailure implements InvestmentRefereeRequestState {
  const factory _InvestmentFailure({required final String error}) =
      _$InvestmentFailureImpl;

  String get error;

  /// Create a copy of InvestmentRefereeRequestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvestmentFailureImplCopyWith<_$InvestmentFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
