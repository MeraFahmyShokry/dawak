// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_verification_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$OtpVerificationState {
  OtpVerificationStatus get status => throw _privateConstructorUsedError;
  String? get otp => throw _privateConstructorUsedError;
  GlobalKey<FormState> get otpKey => throw _privateConstructorUsedError;

  /// Create a copy of OtpVerificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OtpVerificationStateCopyWith<OtpVerificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpVerificationStateCopyWith<$Res> {
  factory $OtpVerificationStateCopyWith(
    OtpVerificationState value,
    $Res Function(OtpVerificationState) then,
  ) = _$OtpVerificationStateCopyWithImpl<$Res, OtpVerificationState>;
  @useResult
  $Res call({
    OtpVerificationStatus status,
    String? otp,
    GlobalKey<FormState> otpKey,
  });

  $OtpVerificationStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$OtpVerificationStateCopyWithImpl<
  $Res,
  $Val extends OtpVerificationState
>
    implements $OtpVerificationStateCopyWith<$Res> {
  _$OtpVerificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OtpVerificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? otp = freezed,
    Object? otpKey = null,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as OtpVerificationStatus,
            otp: freezed == otp
                ? _value.otp
                : otp // ignore: cast_nullable_to_non_nullable
                      as String?,
            otpKey: null == otpKey
                ? _value.otpKey
                : otpKey // ignore: cast_nullable_to_non_nullable
                      as GlobalKey<FormState>,
          )
          as $Val,
    );
  }

  /// Create a copy of OtpVerificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OtpVerificationStatusCopyWith<$Res> get status {
    return $OtpVerificationStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OtpVerificationStateImplCopyWith<$Res>
    implements $OtpVerificationStateCopyWith<$Res> {
  factory _$$OtpVerificationStateImplCopyWith(
    _$OtpVerificationStateImpl value,
    $Res Function(_$OtpVerificationStateImpl) then,
  ) = __$$OtpVerificationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    OtpVerificationStatus status,
    String? otp,
    GlobalKey<FormState> otpKey,
  });

  @override
  $OtpVerificationStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$OtpVerificationStateImplCopyWithImpl<$Res>
    extends _$OtpVerificationStateCopyWithImpl<$Res, _$OtpVerificationStateImpl>
    implements _$$OtpVerificationStateImplCopyWith<$Res> {
  __$$OtpVerificationStateImplCopyWithImpl(
    _$OtpVerificationStateImpl _value,
    $Res Function(_$OtpVerificationStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OtpVerificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? otp = freezed,
    Object? otpKey = null,
  }) {
    return _then(
      _$OtpVerificationStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as OtpVerificationStatus,
        otp: freezed == otp
            ? _value.otp
            : otp // ignore: cast_nullable_to_non_nullable
                  as String?,
        otpKey: null == otpKey
            ? _value.otpKey
            : otpKey // ignore: cast_nullable_to_non_nullable
                  as GlobalKey<FormState>,
      ),
    );
  }
}

/// @nodoc

class _$OtpVerificationStateImpl implements _OtpVerificationState {
  const _$OtpVerificationStateImpl({
    required this.status,
    this.otp,
    required this.otpKey,
  });

  @override
  final OtpVerificationStatus status;
  @override
  final String? otp;
  @override
  final GlobalKey<FormState> otpKey;

  @override
  String toString() {
    return 'OtpVerificationState(status: $status, otp: $otp, otpKey: $otpKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpVerificationStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.otpKey, otpKey) || other.otpKey == otpKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, otp, otpKey);

  /// Create a copy of OtpVerificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpVerificationStateImplCopyWith<_$OtpVerificationStateImpl>
  get copyWith =>
      __$$OtpVerificationStateImplCopyWithImpl<_$OtpVerificationStateImpl>(
        this,
        _$identity,
      );
}

abstract class _OtpVerificationState implements OtpVerificationState {
  const factory _OtpVerificationState({
    required final OtpVerificationStatus status,
    final String? otp,
    required final GlobalKey<FormState> otpKey,
  }) = _$OtpVerificationStateImpl;

  @override
  OtpVerificationStatus get status;
  @override
  String? get otp;
  @override
  GlobalKey<FormState> get otpKey;

  /// Create a copy of OtpVerificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpVerificationStateImplCopyWith<_$OtpVerificationStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OtpVerificationStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendOtpLoading,
    required TResult Function() sendOtpFailure,
    required TResult Function() sendOtpSuccess,
    required TResult Function() validateOtpLoading,
    required TResult Function() validateOtpFailure,
    required TResult Function() validateOtpSuccess,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendOtpLoading,
    TResult? Function()? sendOtpFailure,
    TResult? Function()? sendOtpSuccess,
    TResult? Function()? validateOtpLoading,
    TResult? Function()? validateOtpFailure,
    TResult? Function()? validateOtpSuccess,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendOtpLoading,
    TResult Function()? sendOtpFailure,
    TResult Function()? sendOtpSuccess,
    TResult Function()? validateOtpLoading,
    TResult Function()? validateOtpFailure,
    TResult Function()? validateOtpSuccess,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SendOtpLoading value) sendOtpLoading,
    required TResult Function(SendOtpFailure value) sendOtpFailure,
    required TResult Function(SendOtpSuccess value) sendOtpSuccess,
    required TResult Function(ValidateOtpLoading value) validateOtpLoading,
    required TResult Function(ValidateOtpFailure value) validateOtpFailure,
    required TResult Function(ValidateOtpSuccess value) validateOtpSuccess,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SendOtpLoading value)? sendOtpLoading,
    TResult? Function(SendOtpFailure value)? sendOtpFailure,
    TResult? Function(SendOtpSuccess value)? sendOtpSuccess,
    TResult? Function(ValidateOtpLoading value)? validateOtpLoading,
    TResult? Function(ValidateOtpFailure value)? validateOtpFailure,
    TResult? Function(ValidateOtpSuccess value)? validateOtpSuccess,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SendOtpLoading value)? sendOtpLoading,
    TResult Function(SendOtpFailure value)? sendOtpFailure,
    TResult Function(SendOtpSuccess value)? sendOtpSuccess,
    TResult Function(ValidateOtpLoading value)? validateOtpLoading,
    TResult Function(ValidateOtpFailure value)? validateOtpFailure,
    TResult Function(ValidateOtpSuccess value)? validateOtpSuccess,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpVerificationStatusCopyWith<$Res> {
  factory $OtpVerificationStatusCopyWith(
    OtpVerificationStatus value,
    $Res Function(OtpVerificationStatus) then,
  ) = _$OtpVerificationStatusCopyWithImpl<$Res, OtpVerificationStatus>;
}

/// @nodoc
class _$OtpVerificationStatusCopyWithImpl<
  $Res,
  $Val extends OtpVerificationStatus
>
    implements $OtpVerificationStatusCopyWith<$Res> {
  _$OtpVerificationStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OtpVerificationStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$OtpVerificationStatusCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OtpVerificationStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'OtpVerificationStatus.initial()';
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
    required TResult Function() sendOtpLoading,
    required TResult Function() sendOtpFailure,
    required TResult Function() sendOtpSuccess,
    required TResult Function() validateOtpLoading,
    required TResult Function() validateOtpFailure,
    required TResult Function() validateOtpSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendOtpLoading,
    TResult? Function()? sendOtpFailure,
    TResult? Function()? sendOtpSuccess,
    TResult? Function()? validateOtpLoading,
    TResult? Function()? validateOtpFailure,
    TResult? Function()? validateOtpSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendOtpLoading,
    TResult Function()? sendOtpFailure,
    TResult Function()? sendOtpSuccess,
    TResult Function()? validateOtpLoading,
    TResult Function()? validateOtpFailure,
    TResult Function()? validateOtpSuccess,
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
    required TResult Function(Initial value) initial,
    required TResult Function(SendOtpLoading value) sendOtpLoading,
    required TResult Function(SendOtpFailure value) sendOtpFailure,
    required TResult Function(SendOtpSuccess value) sendOtpSuccess,
    required TResult Function(ValidateOtpLoading value) validateOtpLoading,
    required TResult Function(ValidateOtpFailure value) validateOtpFailure,
    required TResult Function(ValidateOtpSuccess value) validateOtpSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SendOtpLoading value)? sendOtpLoading,
    TResult? Function(SendOtpFailure value)? sendOtpFailure,
    TResult? Function(SendOtpSuccess value)? sendOtpSuccess,
    TResult? Function(ValidateOtpLoading value)? validateOtpLoading,
    TResult? Function(ValidateOtpFailure value)? validateOtpFailure,
    TResult? Function(ValidateOtpSuccess value)? validateOtpSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SendOtpLoading value)? sendOtpLoading,
    TResult Function(SendOtpFailure value)? sendOtpFailure,
    TResult Function(SendOtpSuccess value)? sendOtpSuccess,
    TResult Function(ValidateOtpLoading value)? validateOtpLoading,
    TResult Function(ValidateOtpFailure value)? validateOtpFailure,
    TResult Function(ValidateOtpSuccess value)? validateOtpSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements OtpVerificationStatus {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SendOtpLoadingImplCopyWith<$Res> {
  factory _$$SendOtpLoadingImplCopyWith(
    _$SendOtpLoadingImpl value,
    $Res Function(_$SendOtpLoadingImpl) then,
  ) = __$$SendOtpLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendOtpLoadingImplCopyWithImpl<$Res>
    extends _$OtpVerificationStatusCopyWithImpl<$Res, _$SendOtpLoadingImpl>
    implements _$$SendOtpLoadingImplCopyWith<$Res> {
  __$$SendOtpLoadingImplCopyWithImpl(
    _$SendOtpLoadingImpl _value,
    $Res Function(_$SendOtpLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OtpVerificationStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SendOtpLoadingImpl implements SendOtpLoading {
  const _$SendOtpLoadingImpl();

  @override
  String toString() {
    return 'OtpVerificationStatus.sendOtpLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendOtpLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendOtpLoading,
    required TResult Function() sendOtpFailure,
    required TResult Function() sendOtpSuccess,
    required TResult Function() validateOtpLoading,
    required TResult Function() validateOtpFailure,
    required TResult Function() validateOtpSuccess,
  }) {
    return sendOtpLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendOtpLoading,
    TResult? Function()? sendOtpFailure,
    TResult? Function()? sendOtpSuccess,
    TResult? Function()? validateOtpLoading,
    TResult? Function()? validateOtpFailure,
    TResult? Function()? validateOtpSuccess,
  }) {
    return sendOtpLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendOtpLoading,
    TResult Function()? sendOtpFailure,
    TResult Function()? sendOtpSuccess,
    TResult Function()? validateOtpLoading,
    TResult Function()? validateOtpFailure,
    TResult Function()? validateOtpSuccess,
    required TResult orElse(),
  }) {
    if (sendOtpLoading != null) {
      return sendOtpLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SendOtpLoading value) sendOtpLoading,
    required TResult Function(SendOtpFailure value) sendOtpFailure,
    required TResult Function(SendOtpSuccess value) sendOtpSuccess,
    required TResult Function(ValidateOtpLoading value) validateOtpLoading,
    required TResult Function(ValidateOtpFailure value) validateOtpFailure,
    required TResult Function(ValidateOtpSuccess value) validateOtpSuccess,
  }) {
    return sendOtpLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SendOtpLoading value)? sendOtpLoading,
    TResult? Function(SendOtpFailure value)? sendOtpFailure,
    TResult? Function(SendOtpSuccess value)? sendOtpSuccess,
    TResult? Function(ValidateOtpLoading value)? validateOtpLoading,
    TResult? Function(ValidateOtpFailure value)? validateOtpFailure,
    TResult? Function(ValidateOtpSuccess value)? validateOtpSuccess,
  }) {
    return sendOtpLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SendOtpLoading value)? sendOtpLoading,
    TResult Function(SendOtpFailure value)? sendOtpFailure,
    TResult Function(SendOtpSuccess value)? sendOtpSuccess,
    TResult Function(ValidateOtpLoading value)? validateOtpLoading,
    TResult Function(ValidateOtpFailure value)? validateOtpFailure,
    TResult Function(ValidateOtpSuccess value)? validateOtpSuccess,
    required TResult orElse(),
  }) {
    if (sendOtpLoading != null) {
      return sendOtpLoading(this);
    }
    return orElse();
  }
}

abstract class SendOtpLoading implements OtpVerificationStatus {
  const factory SendOtpLoading() = _$SendOtpLoadingImpl;
}

/// @nodoc
abstract class _$$SendOtpFailureImplCopyWith<$Res> {
  factory _$$SendOtpFailureImplCopyWith(
    _$SendOtpFailureImpl value,
    $Res Function(_$SendOtpFailureImpl) then,
  ) = __$$SendOtpFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendOtpFailureImplCopyWithImpl<$Res>
    extends _$OtpVerificationStatusCopyWithImpl<$Res, _$SendOtpFailureImpl>
    implements _$$SendOtpFailureImplCopyWith<$Res> {
  __$$SendOtpFailureImplCopyWithImpl(
    _$SendOtpFailureImpl _value,
    $Res Function(_$SendOtpFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OtpVerificationStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SendOtpFailureImpl implements SendOtpFailure {
  const _$SendOtpFailureImpl();

  @override
  String toString() {
    return 'OtpVerificationStatus.sendOtpFailure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendOtpFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendOtpLoading,
    required TResult Function() sendOtpFailure,
    required TResult Function() sendOtpSuccess,
    required TResult Function() validateOtpLoading,
    required TResult Function() validateOtpFailure,
    required TResult Function() validateOtpSuccess,
  }) {
    return sendOtpFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendOtpLoading,
    TResult? Function()? sendOtpFailure,
    TResult? Function()? sendOtpSuccess,
    TResult? Function()? validateOtpLoading,
    TResult? Function()? validateOtpFailure,
    TResult? Function()? validateOtpSuccess,
  }) {
    return sendOtpFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendOtpLoading,
    TResult Function()? sendOtpFailure,
    TResult Function()? sendOtpSuccess,
    TResult Function()? validateOtpLoading,
    TResult Function()? validateOtpFailure,
    TResult Function()? validateOtpSuccess,
    required TResult orElse(),
  }) {
    if (sendOtpFailure != null) {
      return sendOtpFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SendOtpLoading value) sendOtpLoading,
    required TResult Function(SendOtpFailure value) sendOtpFailure,
    required TResult Function(SendOtpSuccess value) sendOtpSuccess,
    required TResult Function(ValidateOtpLoading value) validateOtpLoading,
    required TResult Function(ValidateOtpFailure value) validateOtpFailure,
    required TResult Function(ValidateOtpSuccess value) validateOtpSuccess,
  }) {
    return sendOtpFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SendOtpLoading value)? sendOtpLoading,
    TResult? Function(SendOtpFailure value)? sendOtpFailure,
    TResult? Function(SendOtpSuccess value)? sendOtpSuccess,
    TResult? Function(ValidateOtpLoading value)? validateOtpLoading,
    TResult? Function(ValidateOtpFailure value)? validateOtpFailure,
    TResult? Function(ValidateOtpSuccess value)? validateOtpSuccess,
  }) {
    return sendOtpFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SendOtpLoading value)? sendOtpLoading,
    TResult Function(SendOtpFailure value)? sendOtpFailure,
    TResult Function(SendOtpSuccess value)? sendOtpSuccess,
    TResult Function(ValidateOtpLoading value)? validateOtpLoading,
    TResult Function(ValidateOtpFailure value)? validateOtpFailure,
    TResult Function(ValidateOtpSuccess value)? validateOtpSuccess,
    required TResult orElse(),
  }) {
    if (sendOtpFailure != null) {
      return sendOtpFailure(this);
    }
    return orElse();
  }
}

abstract class SendOtpFailure implements OtpVerificationStatus {
  const factory SendOtpFailure() = _$SendOtpFailureImpl;
}

/// @nodoc
abstract class _$$SendOtpSuccessImplCopyWith<$Res> {
  factory _$$SendOtpSuccessImplCopyWith(
    _$SendOtpSuccessImpl value,
    $Res Function(_$SendOtpSuccessImpl) then,
  ) = __$$SendOtpSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendOtpSuccessImplCopyWithImpl<$Res>
    extends _$OtpVerificationStatusCopyWithImpl<$Res, _$SendOtpSuccessImpl>
    implements _$$SendOtpSuccessImplCopyWith<$Res> {
  __$$SendOtpSuccessImplCopyWithImpl(
    _$SendOtpSuccessImpl _value,
    $Res Function(_$SendOtpSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OtpVerificationStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SendOtpSuccessImpl implements SendOtpSuccess {
  const _$SendOtpSuccessImpl();

  @override
  String toString() {
    return 'OtpVerificationStatus.sendOtpSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendOtpSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendOtpLoading,
    required TResult Function() sendOtpFailure,
    required TResult Function() sendOtpSuccess,
    required TResult Function() validateOtpLoading,
    required TResult Function() validateOtpFailure,
    required TResult Function() validateOtpSuccess,
  }) {
    return sendOtpSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendOtpLoading,
    TResult? Function()? sendOtpFailure,
    TResult? Function()? sendOtpSuccess,
    TResult? Function()? validateOtpLoading,
    TResult? Function()? validateOtpFailure,
    TResult? Function()? validateOtpSuccess,
  }) {
    return sendOtpSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendOtpLoading,
    TResult Function()? sendOtpFailure,
    TResult Function()? sendOtpSuccess,
    TResult Function()? validateOtpLoading,
    TResult Function()? validateOtpFailure,
    TResult Function()? validateOtpSuccess,
    required TResult orElse(),
  }) {
    if (sendOtpSuccess != null) {
      return sendOtpSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SendOtpLoading value) sendOtpLoading,
    required TResult Function(SendOtpFailure value) sendOtpFailure,
    required TResult Function(SendOtpSuccess value) sendOtpSuccess,
    required TResult Function(ValidateOtpLoading value) validateOtpLoading,
    required TResult Function(ValidateOtpFailure value) validateOtpFailure,
    required TResult Function(ValidateOtpSuccess value) validateOtpSuccess,
  }) {
    return sendOtpSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SendOtpLoading value)? sendOtpLoading,
    TResult? Function(SendOtpFailure value)? sendOtpFailure,
    TResult? Function(SendOtpSuccess value)? sendOtpSuccess,
    TResult? Function(ValidateOtpLoading value)? validateOtpLoading,
    TResult? Function(ValidateOtpFailure value)? validateOtpFailure,
    TResult? Function(ValidateOtpSuccess value)? validateOtpSuccess,
  }) {
    return sendOtpSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SendOtpLoading value)? sendOtpLoading,
    TResult Function(SendOtpFailure value)? sendOtpFailure,
    TResult Function(SendOtpSuccess value)? sendOtpSuccess,
    TResult Function(ValidateOtpLoading value)? validateOtpLoading,
    TResult Function(ValidateOtpFailure value)? validateOtpFailure,
    TResult Function(ValidateOtpSuccess value)? validateOtpSuccess,
    required TResult orElse(),
  }) {
    if (sendOtpSuccess != null) {
      return sendOtpSuccess(this);
    }
    return orElse();
  }
}

abstract class SendOtpSuccess implements OtpVerificationStatus {
  const factory SendOtpSuccess() = _$SendOtpSuccessImpl;
}

/// @nodoc
abstract class _$$ValidateOtpLoadingImplCopyWith<$Res> {
  factory _$$ValidateOtpLoadingImplCopyWith(
    _$ValidateOtpLoadingImpl value,
    $Res Function(_$ValidateOtpLoadingImpl) then,
  ) = __$$ValidateOtpLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ValidateOtpLoadingImplCopyWithImpl<$Res>
    extends _$OtpVerificationStatusCopyWithImpl<$Res, _$ValidateOtpLoadingImpl>
    implements _$$ValidateOtpLoadingImplCopyWith<$Res> {
  __$$ValidateOtpLoadingImplCopyWithImpl(
    _$ValidateOtpLoadingImpl _value,
    $Res Function(_$ValidateOtpLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OtpVerificationStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ValidateOtpLoadingImpl implements ValidateOtpLoading {
  const _$ValidateOtpLoadingImpl();

  @override
  String toString() {
    return 'OtpVerificationStatus.validateOtpLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ValidateOtpLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendOtpLoading,
    required TResult Function() sendOtpFailure,
    required TResult Function() sendOtpSuccess,
    required TResult Function() validateOtpLoading,
    required TResult Function() validateOtpFailure,
    required TResult Function() validateOtpSuccess,
  }) {
    return validateOtpLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendOtpLoading,
    TResult? Function()? sendOtpFailure,
    TResult? Function()? sendOtpSuccess,
    TResult? Function()? validateOtpLoading,
    TResult? Function()? validateOtpFailure,
    TResult? Function()? validateOtpSuccess,
  }) {
    return validateOtpLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendOtpLoading,
    TResult Function()? sendOtpFailure,
    TResult Function()? sendOtpSuccess,
    TResult Function()? validateOtpLoading,
    TResult Function()? validateOtpFailure,
    TResult Function()? validateOtpSuccess,
    required TResult orElse(),
  }) {
    if (validateOtpLoading != null) {
      return validateOtpLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SendOtpLoading value) sendOtpLoading,
    required TResult Function(SendOtpFailure value) sendOtpFailure,
    required TResult Function(SendOtpSuccess value) sendOtpSuccess,
    required TResult Function(ValidateOtpLoading value) validateOtpLoading,
    required TResult Function(ValidateOtpFailure value) validateOtpFailure,
    required TResult Function(ValidateOtpSuccess value) validateOtpSuccess,
  }) {
    return validateOtpLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SendOtpLoading value)? sendOtpLoading,
    TResult? Function(SendOtpFailure value)? sendOtpFailure,
    TResult? Function(SendOtpSuccess value)? sendOtpSuccess,
    TResult? Function(ValidateOtpLoading value)? validateOtpLoading,
    TResult? Function(ValidateOtpFailure value)? validateOtpFailure,
    TResult? Function(ValidateOtpSuccess value)? validateOtpSuccess,
  }) {
    return validateOtpLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SendOtpLoading value)? sendOtpLoading,
    TResult Function(SendOtpFailure value)? sendOtpFailure,
    TResult Function(SendOtpSuccess value)? sendOtpSuccess,
    TResult Function(ValidateOtpLoading value)? validateOtpLoading,
    TResult Function(ValidateOtpFailure value)? validateOtpFailure,
    TResult Function(ValidateOtpSuccess value)? validateOtpSuccess,
    required TResult orElse(),
  }) {
    if (validateOtpLoading != null) {
      return validateOtpLoading(this);
    }
    return orElse();
  }
}

abstract class ValidateOtpLoading implements OtpVerificationStatus {
  const factory ValidateOtpLoading() = _$ValidateOtpLoadingImpl;
}

/// @nodoc
abstract class _$$ValidateOtpFailureImplCopyWith<$Res> {
  factory _$$ValidateOtpFailureImplCopyWith(
    _$ValidateOtpFailureImpl value,
    $Res Function(_$ValidateOtpFailureImpl) then,
  ) = __$$ValidateOtpFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ValidateOtpFailureImplCopyWithImpl<$Res>
    extends _$OtpVerificationStatusCopyWithImpl<$Res, _$ValidateOtpFailureImpl>
    implements _$$ValidateOtpFailureImplCopyWith<$Res> {
  __$$ValidateOtpFailureImplCopyWithImpl(
    _$ValidateOtpFailureImpl _value,
    $Res Function(_$ValidateOtpFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OtpVerificationStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ValidateOtpFailureImpl implements ValidateOtpFailure {
  const _$ValidateOtpFailureImpl();

  @override
  String toString() {
    return 'OtpVerificationStatus.validateOtpFailure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ValidateOtpFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendOtpLoading,
    required TResult Function() sendOtpFailure,
    required TResult Function() sendOtpSuccess,
    required TResult Function() validateOtpLoading,
    required TResult Function() validateOtpFailure,
    required TResult Function() validateOtpSuccess,
  }) {
    return validateOtpFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendOtpLoading,
    TResult? Function()? sendOtpFailure,
    TResult? Function()? sendOtpSuccess,
    TResult? Function()? validateOtpLoading,
    TResult? Function()? validateOtpFailure,
    TResult? Function()? validateOtpSuccess,
  }) {
    return validateOtpFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendOtpLoading,
    TResult Function()? sendOtpFailure,
    TResult Function()? sendOtpSuccess,
    TResult Function()? validateOtpLoading,
    TResult Function()? validateOtpFailure,
    TResult Function()? validateOtpSuccess,
    required TResult orElse(),
  }) {
    if (validateOtpFailure != null) {
      return validateOtpFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SendOtpLoading value) sendOtpLoading,
    required TResult Function(SendOtpFailure value) sendOtpFailure,
    required TResult Function(SendOtpSuccess value) sendOtpSuccess,
    required TResult Function(ValidateOtpLoading value) validateOtpLoading,
    required TResult Function(ValidateOtpFailure value) validateOtpFailure,
    required TResult Function(ValidateOtpSuccess value) validateOtpSuccess,
  }) {
    return validateOtpFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SendOtpLoading value)? sendOtpLoading,
    TResult? Function(SendOtpFailure value)? sendOtpFailure,
    TResult? Function(SendOtpSuccess value)? sendOtpSuccess,
    TResult? Function(ValidateOtpLoading value)? validateOtpLoading,
    TResult? Function(ValidateOtpFailure value)? validateOtpFailure,
    TResult? Function(ValidateOtpSuccess value)? validateOtpSuccess,
  }) {
    return validateOtpFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SendOtpLoading value)? sendOtpLoading,
    TResult Function(SendOtpFailure value)? sendOtpFailure,
    TResult Function(SendOtpSuccess value)? sendOtpSuccess,
    TResult Function(ValidateOtpLoading value)? validateOtpLoading,
    TResult Function(ValidateOtpFailure value)? validateOtpFailure,
    TResult Function(ValidateOtpSuccess value)? validateOtpSuccess,
    required TResult orElse(),
  }) {
    if (validateOtpFailure != null) {
      return validateOtpFailure(this);
    }
    return orElse();
  }
}

abstract class ValidateOtpFailure implements OtpVerificationStatus {
  const factory ValidateOtpFailure() = _$ValidateOtpFailureImpl;
}

/// @nodoc
abstract class _$$ValidateOtpSuccessImplCopyWith<$Res> {
  factory _$$ValidateOtpSuccessImplCopyWith(
    _$ValidateOtpSuccessImpl value,
    $Res Function(_$ValidateOtpSuccessImpl) then,
  ) = __$$ValidateOtpSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ValidateOtpSuccessImplCopyWithImpl<$Res>
    extends _$OtpVerificationStatusCopyWithImpl<$Res, _$ValidateOtpSuccessImpl>
    implements _$$ValidateOtpSuccessImplCopyWith<$Res> {
  __$$ValidateOtpSuccessImplCopyWithImpl(
    _$ValidateOtpSuccessImpl _value,
    $Res Function(_$ValidateOtpSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OtpVerificationStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ValidateOtpSuccessImpl implements ValidateOtpSuccess {
  const _$ValidateOtpSuccessImpl();

  @override
  String toString() {
    return 'OtpVerificationStatus.validateOtpSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ValidateOtpSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendOtpLoading,
    required TResult Function() sendOtpFailure,
    required TResult Function() sendOtpSuccess,
    required TResult Function() validateOtpLoading,
    required TResult Function() validateOtpFailure,
    required TResult Function() validateOtpSuccess,
  }) {
    return validateOtpSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendOtpLoading,
    TResult? Function()? sendOtpFailure,
    TResult? Function()? sendOtpSuccess,
    TResult? Function()? validateOtpLoading,
    TResult? Function()? validateOtpFailure,
    TResult? Function()? validateOtpSuccess,
  }) {
    return validateOtpSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendOtpLoading,
    TResult Function()? sendOtpFailure,
    TResult Function()? sendOtpSuccess,
    TResult Function()? validateOtpLoading,
    TResult Function()? validateOtpFailure,
    TResult Function()? validateOtpSuccess,
    required TResult orElse(),
  }) {
    if (validateOtpSuccess != null) {
      return validateOtpSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SendOtpLoading value) sendOtpLoading,
    required TResult Function(SendOtpFailure value) sendOtpFailure,
    required TResult Function(SendOtpSuccess value) sendOtpSuccess,
    required TResult Function(ValidateOtpLoading value) validateOtpLoading,
    required TResult Function(ValidateOtpFailure value) validateOtpFailure,
    required TResult Function(ValidateOtpSuccess value) validateOtpSuccess,
  }) {
    return validateOtpSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SendOtpLoading value)? sendOtpLoading,
    TResult? Function(SendOtpFailure value)? sendOtpFailure,
    TResult? Function(SendOtpSuccess value)? sendOtpSuccess,
    TResult? Function(ValidateOtpLoading value)? validateOtpLoading,
    TResult? Function(ValidateOtpFailure value)? validateOtpFailure,
    TResult? Function(ValidateOtpSuccess value)? validateOtpSuccess,
  }) {
    return validateOtpSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SendOtpLoading value)? sendOtpLoading,
    TResult Function(SendOtpFailure value)? sendOtpFailure,
    TResult Function(SendOtpSuccess value)? sendOtpSuccess,
    TResult Function(ValidateOtpLoading value)? validateOtpLoading,
    TResult Function(ValidateOtpFailure value)? validateOtpFailure,
    TResult Function(ValidateOtpSuccess value)? validateOtpSuccess,
    required TResult orElse(),
  }) {
    if (validateOtpSuccess != null) {
      return validateOtpSuccess(this);
    }
    return orElse();
  }
}

abstract class ValidateOtpSuccess implements OtpVerificationStatus {
  const factory ValidateOtpSuccess() = _$ValidateOtpSuccessImpl;
}
