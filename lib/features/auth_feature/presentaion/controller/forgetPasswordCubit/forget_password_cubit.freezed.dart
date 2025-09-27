// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forget_password_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ForgetPasswordState {
  GlobalKey<FormState> get forgetKey => throw _privateConstructorUsedError;
  GlobalKey<FormState> get passwordKey => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get newPassword => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      GlobalKey<FormState> forgetKey,
      GlobalKey<FormState> passwordKey,
      String? phoneNumber,
      String? newPassword,
    )
    initial,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      GlobalKey<FormState> forgetKey,
      GlobalKey<FormState> passwordKey,
      String? phoneNumber,
      String? newPassword,
    )?
    initial,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      GlobalKey<FormState> forgetKey,
      GlobalKey<FormState> passwordKey,
      String? phoneNumber,
      String? newPassword,
    )?
    initial,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of ForgetPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForgetPasswordStateCopyWith<ForgetPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgetPasswordStateCopyWith<$Res> {
  factory $ForgetPasswordStateCopyWith(
    ForgetPasswordState value,
    $Res Function(ForgetPasswordState) then,
  ) = _$ForgetPasswordStateCopyWithImpl<$Res, ForgetPasswordState>;
  @useResult
  $Res call({
    GlobalKey<FormState> forgetKey,
    GlobalKey<FormState> passwordKey,
    String? phoneNumber,
    String? newPassword,
  });
}

/// @nodoc
class _$ForgetPasswordStateCopyWithImpl<$Res, $Val extends ForgetPasswordState>
    implements $ForgetPasswordStateCopyWith<$Res> {
  _$ForgetPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForgetPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forgetKey = null,
    Object? passwordKey = null,
    Object? phoneNumber = freezed,
    Object? newPassword = freezed,
  }) {
    return _then(
      _value.copyWith(
            forgetKey: null == forgetKey
                ? _value.forgetKey
                : forgetKey // ignore: cast_nullable_to_non_nullable
                      as GlobalKey<FormState>,
            passwordKey: null == passwordKey
                ? _value.passwordKey
                : passwordKey // ignore: cast_nullable_to_non_nullable
                      as GlobalKey<FormState>,
            phoneNumber: freezed == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
                      as String?,
            newPassword: freezed == newPassword
                ? _value.newPassword
                : newPassword // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $ForgetPasswordStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    GlobalKey<FormState> forgetKey,
    GlobalKey<FormState> passwordKey,
    String? phoneNumber,
    String? newPassword,
  });
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ForgetPasswordStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ForgetPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forgetKey = null,
    Object? passwordKey = null,
    Object? phoneNumber = freezed,
    Object? newPassword = freezed,
  }) {
    return _then(
      _$InitialImpl(
        forgetKey: null == forgetKey
            ? _value.forgetKey
            : forgetKey // ignore: cast_nullable_to_non_nullable
                  as GlobalKey<FormState>,
        passwordKey: null == passwordKey
            ? _value.passwordKey
            : passwordKey // ignore: cast_nullable_to_non_nullable
                  as GlobalKey<FormState>,
        phoneNumber: freezed == phoneNumber
            ? _value.phoneNumber
            : phoneNumber // ignore: cast_nullable_to_non_nullable
                  as String?,
        newPassword: freezed == newPassword
            ? _value.newPassword
            : newPassword // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({
    required this.forgetKey,
    required this.passwordKey,
    this.phoneNumber,
    this.newPassword,
  });

  @override
  final GlobalKey<FormState> forgetKey;
  @override
  final GlobalKey<FormState> passwordKey;
  @override
  final String? phoneNumber;
  @override
  final String? newPassword;

  @override
  String toString() {
    return 'ForgetPasswordState.initial(forgetKey: $forgetKey, passwordKey: $passwordKey, phoneNumber: $phoneNumber, newPassword: $newPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.forgetKey, forgetKey) ||
                other.forgetKey == forgetKey) &&
            (identical(other.passwordKey, passwordKey) ||
                other.passwordKey == passwordKey) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    forgetKey,
    passwordKey,
    phoneNumber,
    newPassword,
  );

  /// Create a copy of ForgetPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      GlobalKey<FormState> forgetKey,
      GlobalKey<FormState> passwordKey,
      String? phoneNumber,
      String? newPassword,
    )
    initial,
  }) {
    return initial(forgetKey, passwordKey, phoneNumber, newPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      GlobalKey<FormState> forgetKey,
      GlobalKey<FormState> passwordKey,
      String? phoneNumber,
      String? newPassword,
    )?
    initial,
  }) {
    return initial?.call(forgetKey, passwordKey, phoneNumber, newPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      GlobalKey<FormState> forgetKey,
      GlobalKey<FormState> passwordKey,
      String? phoneNumber,
      String? newPassword,
    )?
    initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(forgetKey, passwordKey, phoneNumber, newPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ForgetPasswordState {
  const factory _Initial({
    required final GlobalKey<FormState> forgetKey,
    required final GlobalKey<FormState> passwordKey,
    final String? phoneNumber,
    final String? newPassword,
  }) = _$InitialImpl;

  @override
  GlobalKey<FormState> get forgetKey;
  @override
  GlobalKey<FormState> get passwordKey;
  @override
  String? get phoneNumber;
  @override
  String? get newPassword;

  /// Create a copy of ForgetPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
