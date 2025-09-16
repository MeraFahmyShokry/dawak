// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_doctors_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$MainDoctorsState {
  MainDoctorsStatus get status => throw _privateConstructorUsedError;
  BaseResponseModel<List<SpecialistsModel>>? get specialists =>
      throw _privateConstructorUsedError;
  BaseResponseModel<List<DoctorModel>>? get doctors =>
      throw _privateConstructorUsedError;

  /// Create a copy of MainDoctorsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MainDoctorsStateCopyWith<MainDoctorsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainDoctorsStateCopyWith<$Res> {
  factory $MainDoctorsStateCopyWith(
    MainDoctorsState value,
    $Res Function(MainDoctorsState) then,
  ) = _$MainDoctorsStateCopyWithImpl<$Res, MainDoctorsState>;
  @useResult
  $Res call({
    MainDoctorsStatus status,
    BaseResponseModel<List<SpecialistsModel>>? specialists,
    BaseResponseModel<List<DoctorModel>>? doctors,
  });

  $MainDoctorsStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$MainDoctorsStateCopyWithImpl<$Res, $Val extends MainDoctorsState>
    implements $MainDoctorsStateCopyWith<$Res> {
  _$MainDoctorsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainDoctorsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? specialists = freezed,
    Object? doctors = freezed,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as MainDoctorsStatus,
            specialists: freezed == specialists
                ? _value.specialists
                : specialists // ignore: cast_nullable_to_non_nullable
                      as BaseResponseModel<List<SpecialistsModel>>?,
            doctors: freezed == doctors
                ? _value.doctors
                : doctors // ignore: cast_nullable_to_non_nullable
                      as BaseResponseModel<List<DoctorModel>>?,
          )
          as $Val,
    );
  }

  /// Create a copy of MainDoctorsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MainDoctorsStatusCopyWith<$Res> get status {
    return $MainDoctorsStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MainDoctorsStateImplCopyWith<$Res>
    implements $MainDoctorsStateCopyWith<$Res> {
  factory _$$MainDoctorsStateImplCopyWith(
    _$MainDoctorsStateImpl value,
    $Res Function(_$MainDoctorsStateImpl) then,
  ) = __$$MainDoctorsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    MainDoctorsStatus status,
    BaseResponseModel<List<SpecialistsModel>>? specialists,
    BaseResponseModel<List<DoctorModel>>? doctors,
  });

  @override
  $MainDoctorsStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$MainDoctorsStateImplCopyWithImpl<$Res>
    extends _$MainDoctorsStateCopyWithImpl<$Res, _$MainDoctorsStateImpl>
    implements _$$MainDoctorsStateImplCopyWith<$Res> {
  __$$MainDoctorsStateImplCopyWithImpl(
    _$MainDoctorsStateImpl _value,
    $Res Function(_$MainDoctorsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MainDoctorsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? specialists = freezed,
    Object? doctors = freezed,
  }) {
    return _then(
      _$MainDoctorsStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as MainDoctorsStatus,
        specialists: freezed == specialists
            ? _value.specialists
            : specialists // ignore: cast_nullable_to_non_nullable
                  as BaseResponseModel<List<SpecialistsModel>>?,
        doctors: freezed == doctors
            ? _value.doctors
            : doctors // ignore: cast_nullable_to_non_nullable
                  as BaseResponseModel<List<DoctorModel>>?,
      ),
    );
  }
}

/// @nodoc

class _$MainDoctorsStateImpl implements _MainDoctorsState {
  const _$MainDoctorsStateImpl({
    required this.status,
    this.specialists,
    this.doctors,
  });

  @override
  final MainDoctorsStatus status;
  @override
  final BaseResponseModel<List<SpecialistsModel>>? specialists;
  @override
  final BaseResponseModel<List<DoctorModel>>? doctors;

  @override
  String toString() {
    return 'MainDoctorsState(status: $status, specialists: $specialists, doctors: $doctors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainDoctorsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.specialists, specialists) ||
                other.specialists == specialists) &&
            (identical(other.doctors, doctors) || other.doctors == doctors));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, specialists, doctors);

  /// Create a copy of MainDoctorsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MainDoctorsStateImplCopyWith<_$MainDoctorsStateImpl> get copyWith =>
      __$$MainDoctorsStateImplCopyWithImpl<_$MainDoctorsStateImpl>(
        this,
        _$identity,
      );
}

abstract class _MainDoctorsState implements MainDoctorsState {
  const factory _MainDoctorsState({
    required final MainDoctorsStatus status,
    final BaseResponseModel<List<SpecialistsModel>>? specialists,
    final BaseResponseModel<List<DoctorModel>>? doctors,
  }) = _$MainDoctorsStateImpl;

  @override
  MainDoctorsStatus get status;
  @override
  BaseResponseModel<List<SpecialistsModel>>? get specialists;
  @override
  BaseResponseModel<List<DoctorModel>>? get doctors;

  /// Create a copy of MainDoctorsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainDoctorsStateImplCopyWith<_$MainDoctorsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainDoctorsStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() getDoctorsLoading,
    required TResult Function() getDoctorsSuccess,
    required TResult Function() getCategoriesLoading,
    required TResult Function() getCategoriesSuccess,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? getDoctorsLoading,
    TResult? Function()? getDoctorsSuccess,
    TResult? Function()? getCategoriesLoading,
    TResult? Function()? getCategoriesSuccess,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? getDoctorsLoading,
    TResult Function()? getDoctorsSuccess,
    TResult Function()? getCategoriesLoading,
    TResult Function()? getCategoriesSuccess,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(GetDoctorsFailure value) getDoctorsLoading,
    required TResult Function(GetDoctorsSuccess value) getDoctorsSuccess,
    required TResult Function(GetCategoriesFailure value) getCategoriesLoading,
    required TResult Function(GetCategoriesSuccess value) getCategoriesSuccess,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(GetDoctorsFailure value)? getDoctorsLoading,
    TResult? Function(GetDoctorsSuccess value)? getDoctorsSuccess,
    TResult? Function(GetCategoriesFailure value)? getCategoriesLoading,
    TResult? Function(GetCategoriesSuccess value)? getCategoriesSuccess,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetDoctorsFailure value)? getDoctorsLoading,
    TResult Function(GetDoctorsSuccess value)? getDoctorsSuccess,
    TResult Function(GetCategoriesFailure value)? getCategoriesLoading,
    TResult Function(GetCategoriesSuccess value)? getCategoriesSuccess,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainDoctorsStatusCopyWith<$Res> {
  factory $MainDoctorsStatusCopyWith(
    MainDoctorsStatus value,
    $Res Function(MainDoctorsStatus) then,
  ) = _$MainDoctorsStatusCopyWithImpl<$Res, MainDoctorsStatus>;
}

/// @nodoc
class _$MainDoctorsStatusCopyWithImpl<$Res, $Val extends MainDoctorsStatus>
    implements $MainDoctorsStatusCopyWith<$Res> {
  _$MainDoctorsStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainDoctorsStatus
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
    extends _$MainDoctorsStatusCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MainDoctorsStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'MainDoctorsStatus.initial()';
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
    required TResult Function() getDoctorsLoading,
    required TResult Function() getDoctorsSuccess,
    required TResult Function() getCategoriesLoading,
    required TResult Function() getCategoriesSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? getDoctorsLoading,
    TResult? Function()? getDoctorsSuccess,
    TResult? Function()? getCategoriesLoading,
    TResult? Function()? getCategoriesSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? getDoctorsLoading,
    TResult Function()? getDoctorsSuccess,
    TResult Function()? getCategoriesLoading,
    TResult Function()? getCategoriesSuccess,
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
    required TResult Function(Loading value) loading,
    required TResult Function(GetDoctorsFailure value) getDoctorsLoading,
    required TResult Function(GetDoctorsSuccess value) getDoctorsSuccess,
    required TResult Function(GetCategoriesFailure value) getCategoriesLoading,
    required TResult Function(GetCategoriesSuccess value) getCategoriesSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(GetDoctorsFailure value)? getDoctorsLoading,
    TResult? Function(GetDoctorsSuccess value)? getDoctorsSuccess,
    TResult? Function(GetCategoriesFailure value)? getCategoriesLoading,
    TResult? Function(GetCategoriesSuccess value)? getCategoriesSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetDoctorsFailure value)? getDoctorsLoading,
    TResult Function(GetDoctorsSuccess value)? getDoctorsSuccess,
    TResult Function(GetCategoriesFailure value)? getCategoriesLoading,
    TResult Function(GetCategoriesSuccess value)? getCategoriesSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements MainDoctorsStatus {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
    _$LoadingImpl value,
    $Res Function(_$LoadingImpl) then,
  ) = __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$MainDoctorsStatusCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MainDoctorsStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'MainDoctorsStatus.loading()';
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
    required TResult Function() getDoctorsLoading,
    required TResult Function() getDoctorsSuccess,
    required TResult Function() getCategoriesLoading,
    required TResult Function() getCategoriesSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? getDoctorsLoading,
    TResult? Function()? getDoctorsSuccess,
    TResult? Function()? getCategoriesLoading,
    TResult? Function()? getCategoriesSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? getDoctorsLoading,
    TResult Function()? getDoctorsSuccess,
    TResult Function()? getCategoriesLoading,
    TResult Function()? getCategoriesSuccess,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(GetDoctorsFailure value) getDoctorsLoading,
    required TResult Function(GetDoctorsSuccess value) getDoctorsSuccess,
    required TResult Function(GetCategoriesFailure value) getCategoriesLoading,
    required TResult Function(GetCategoriesSuccess value) getCategoriesSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(GetDoctorsFailure value)? getDoctorsLoading,
    TResult? Function(GetDoctorsSuccess value)? getDoctorsSuccess,
    TResult? Function(GetCategoriesFailure value)? getCategoriesLoading,
    TResult? Function(GetCategoriesSuccess value)? getCategoriesSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetDoctorsFailure value)? getDoctorsLoading,
    TResult Function(GetDoctorsSuccess value)? getDoctorsSuccess,
    TResult Function(GetCategoriesFailure value)? getCategoriesLoading,
    TResult Function(GetCategoriesSuccess value)? getCategoriesSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements MainDoctorsStatus {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$GetDoctorsFailureImplCopyWith<$Res> {
  factory _$$GetDoctorsFailureImplCopyWith(
    _$GetDoctorsFailureImpl value,
    $Res Function(_$GetDoctorsFailureImpl) then,
  ) = __$$GetDoctorsFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetDoctorsFailureImplCopyWithImpl<$Res>
    extends _$MainDoctorsStatusCopyWithImpl<$Res, _$GetDoctorsFailureImpl>
    implements _$$GetDoctorsFailureImplCopyWith<$Res> {
  __$$GetDoctorsFailureImplCopyWithImpl(
    _$GetDoctorsFailureImpl _value,
    $Res Function(_$GetDoctorsFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MainDoctorsStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetDoctorsFailureImpl implements GetDoctorsFailure {
  const _$GetDoctorsFailureImpl();

  @override
  String toString() {
    return 'MainDoctorsStatus.getDoctorsLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetDoctorsFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() getDoctorsLoading,
    required TResult Function() getDoctorsSuccess,
    required TResult Function() getCategoriesLoading,
    required TResult Function() getCategoriesSuccess,
  }) {
    return getDoctorsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? getDoctorsLoading,
    TResult? Function()? getDoctorsSuccess,
    TResult? Function()? getCategoriesLoading,
    TResult? Function()? getCategoriesSuccess,
  }) {
    return getDoctorsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? getDoctorsLoading,
    TResult Function()? getDoctorsSuccess,
    TResult Function()? getCategoriesLoading,
    TResult Function()? getCategoriesSuccess,
    required TResult orElse(),
  }) {
    if (getDoctorsLoading != null) {
      return getDoctorsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(GetDoctorsFailure value) getDoctorsLoading,
    required TResult Function(GetDoctorsSuccess value) getDoctorsSuccess,
    required TResult Function(GetCategoriesFailure value) getCategoriesLoading,
    required TResult Function(GetCategoriesSuccess value) getCategoriesSuccess,
  }) {
    return getDoctorsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(GetDoctorsFailure value)? getDoctorsLoading,
    TResult? Function(GetDoctorsSuccess value)? getDoctorsSuccess,
    TResult? Function(GetCategoriesFailure value)? getCategoriesLoading,
    TResult? Function(GetCategoriesSuccess value)? getCategoriesSuccess,
  }) {
    return getDoctorsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetDoctorsFailure value)? getDoctorsLoading,
    TResult Function(GetDoctorsSuccess value)? getDoctorsSuccess,
    TResult Function(GetCategoriesFailure value)? getCategoriesLoading,
    TResult Function(GetCategoriesSuccess value)? getCategoriesSuccess,
    required TResult orElse(),
  }) {
    if (getDoctorsLoading != null) {
      return getDoctorsLoading(this);
    }
    return orElse();
  }
}

abstract class GetDoctorsFailure implements MainDoctorsStatus {
  const factory GetDoctorsFailure() = _$GetDoctorsFailureImpl;
}

/// @nodoc
abstract class _$$GetDoctorsSuccessImplCopyWith<$Res> {
  factory _$$GetDoctorsSuccessImplCopyWith(
    _$GetDoctorsSuccessImpl value,
    $Res Function(_$GetDoctorsSuccessImpl) then,
  ) = __$$GetDoctorsSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetDoctorsSuccessImplCopyWithImpl<$Res>
    extends _$MainDoctorsStatusCopyWithImpl<$Res, _$GetDoctorsSuccessImpl>
    implements _$$GetDoctorsSuccessImplCopyWith<$Res> {
  __$$GetDoctorsSuccessImplCopyWithImpl(
    _$GetDoctorsSuccessImpl _value,
    $Res Function(_$GetDoctorsSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MainDoctorsStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetDoctorsSuccessImpl implements GetDoctorsSuccess {
  const _$GetDoctorsSuccessImpl();

  @override
  String toString() {
    return 'MainDoctorsStatus.getDoctorsSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetDoctorsSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() getDoctorsLoading,
    required TResult Function() getDoctorsSuccess,
    required TResult Function() getCategoriesLoading,
    required TResult Function() getCategoriesSuccess,
  }) {
    return getDoctorsSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? getDoctorsLoading,
    TResult? Function()? getDoctorsSuccess,
    TResult? Function()? getCategoriesLoading,
    TResult? Function()? getCategoriesSuccess,
  }) {
    return getDoctorsSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? getDoctorsLoading,
    TResult Function()? getDoctorsSuccess,
    TResult Function()? getCategoriesLoading,
    TResult Function()? getCategoriesSuccess,
    required TResult orElse(),
  }) {
    if (getDoctorsSuccess != null) {
      return getDoctorsSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(GetDoctorsFailure value) getDoctorsLoading,
    required TResult Function(GetDoctorsSuccess value) getDoctorsSuccess,
    required TResult Function(GetCategoriesFailure value) getCategoriesLoading,
    required TResult Function(GetCategoriesSuccess value) getCategoriesSuccess,
  }) {
    return getDoctorsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(GetDoctorsFailure value)? getDoctorsLoading,
    TResult? Function(GetDoctorsSuccess value)? getDoctorsSuccess,
    TResult? Function(GetCategoriesFailure value)? getCategoriesLoading,
    TResult? Function(GetCategoriesSuccess value)? getCategoriesSuccess,
  }) {
    return getDoctorsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetDoctorsFailure value)? getDoctorsLoading,
    TResult Function(GetDoctorsSuccess value)? getDoctorsSuccess,
    TResult Function(GetCategoriesFailure value)? getCategoriesLoading,
    TResult Function(GetCategoriesSuccess value)? getCategoriesSuccess,
    required TResult orElse(),
  }) {
    if (getDoctorsSuccess != null) {
      return getDoctorsSuccess(this);
    }
    return orElse();
  }
}

abstract class GetDoctorsSuccess implements MainDoctorsStatus {
  const factory GetDoctorsSuccess() = _$GetDoctorsSuccessImpl;
}

/// @nodoc
abstract class _$$GetCategoriesFailureImplCopyWith<$Res> {
  factory _$$GetCategoriesFailureImplCopyWith(
    _$GetCategoriesFailureImpl value,
    $Res Function(_$GetCategoriesFailureImpl) then,
  ) = __$$GetCategoriesFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCategoriesFailureImplCopyWithImpl<$Res>
    extends _$MainDoctorsStatusCopyWithImpl<$Res, _$GetCategoriesFailureImpl>
    implements _$$GetCategoriesFailureImplCopyWith<$Res> {
  __$$GetCategoriesFailureImplCopyWithImpl(
    _$GetCategoriesFailureImpl _value,
    $Res Function(_$GetCategoriesFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MainDoctorsStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetCategoriesFailureImpl implements GetCategoriesFailure {
  const _$GetCategoriesFailureImpl();

  @override
  String toString() {
    return 'MainDoctorsStatus.getCategoriesLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCategoriesFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() getDoctorsLoading,
    required TResult Function() getDoctorsSuccess,
    required TResult Function() getCategoriesLoading,
    required TResult Function() getCategoriesSuccess,
  }) {
    return getCategoriesLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? getDoctorsLoading,
    TResult? Function()? getDoctorsSuccess,
    TResult? Function()? getCategoriesLoading,
    TResult? Function()? getCategoriesSuccess,
  }) {
    return getCategoriesLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? getDoctorsLoading,
    TResult Function()? getDoctorsSuccess,
    TResult Function()? getCategoriesLoading,
    TResult Function()? getCategoriesSuccess,
    required TResult orElse(),
  }) {
    if (getCategoriesLoading != null) {
      return getCategoriesLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(GetDoctorsFailure value) getDoctorsLoading,
    required TResult Function(GetDoctorsSuccess value) getDoctorsSuccess,
    required TResult Function(GetCategoriesFailure value) getCategoriesLoading,
    required TResult Function(GetCategoriesSuccess value) getCategoriesSuccess,
  }) {
    return getCategoriesLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(GetDoctorsFailure value)? getDoctorsLoading,
    TResult? Function(GetDoctorsSuccess value)? getDoctorsSuccess,
    TResult? Function(GetCategoriesFailure value)? getCategoriesLoading,
    TResult? Function(GetCategoriesSuccess value)? getCategoriesSuccess,
  }) {
    return getCategoriesLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetDoctorsFailure value)? getDoctorsLoading,
    TResult Function(GetDoctorsSuccess value)? getDoctorsSuccess,
    TResult Function(GetCategoriesFailure value)? getCategoriesLoading,
    TResult Function(GetCategoriesSuccess value)? getCategoriesSuccess,
    required TResult orElse(),
  }) {
    if (getCategoriesLoading != null) {
      return getCategoriesLoading(this);
    }
    return orElse();
  }
}

abstract class GetCategoriesFailure implements MainDoctorsStatus {
  const factory GetCategoriesFailure() = _$GetCategoriesFailureImpl;
}

/// @nodoc
abstract class _$$GetCategoriesSuccessImplCopyWith<$Res> {
  factory _$$GetCategoriesSuccessImplCopyWith(
    _$GetCategoriesSuccessImpl value,
    $Res Function(_$GetCategoriesSuccessImpl) then,
  ) = __$$GetCategoriesSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCategoriesSuccessImplCopyWithImpl<$Res>
    extends _$MainDoctorsStatusCopyWithImpl<$Res, _$GetCategoriesSuccessImpl>
    implements _$$GetCategoriesSuccessImplCopyWith<$Res> {
  __$$GetCategoriesSuccessImplCopyWithImpl(
    _$GetCategoriesSuccessImpl _value,
    $Res Function(_$GetCategoriesSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MainDoctorsStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetCategoriesSuccessImpl implements GetCategoriesSuccess {
  const _$GetCategoriesSuccessImpl();

  @override
  String toString() {
    return 'MainDoctorsStatus.getCategoriesSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCategoriesSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() getDoctorsLoading,
    required TResult Function() getDoctorsSuccess,
    required TResult Function() getCategoriesLoading,
    required TResult Function() getCategoriesSuccess,
  }) {
    return getCategoriesSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? getDoctorsLoading,
    TResult? Function()? getDoctorsSuccess,
    TResult? Function()? getCategoriesLoading,
    TResult? Function()? getCategoriesSuccess,
  }) {
    return getCategoriesSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? getDoctorsLoading,
    TResult Function()? getDoctorsSuccess,
    TResult Function()? getCategoriesLoading,
    TResult Function()? getCategoriesSuccess,
    required TResult orElse(),
  }) {
    if (getCategoriesSuccess != null) {
      return getCategoriesSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(GetDoctorsFailure value) getDoctorsLoading,
    required TResult Function(GetDoctorsSuccess value) getDoctorsSuccess,
    required TResult Function(GetCategoriesFailure value) getCategoriesLoading,
    required TResult Function(GetCategoriesSuccess value) getCategoriesSuccess,
  }) {
    return getCategoriesSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(GetDoctorsFailure value)? getDoctorsLoading,
    TResult? Function(GetDoctorsSuccess value)? getDoctorsSuccess,
    TResult? Function(GetCategoriesFailure value)? getCategoriesLoading,
    TResult? Function(GetCategoriesSuccess value)? getCategoriesSuccess,
  }) {
    return getCategoriesSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetDoctorsFailure value)? getDoctorsLoading,
    TResult Function(GetDoctorsSuccess value)? getDoctorsSuccess,
    TResult Function(GetCategoriesFailure value)? getCategoriesLoading,
    TResult Function(GetCategoriesSuccess value)? getCategoriesSuccess,
    required TResult orElse(),
  }) {
    if (getCategoriesSuccess != null) {
      return getCategoriesSuccess(this);
    }
    return orElse();
  }
}

abstract class GetCategoriesSuccess implements MainDoctorsStatus {
  const factory GetCategoriesSuccess() = _$GetCategoriesSuccessImpl;
}
