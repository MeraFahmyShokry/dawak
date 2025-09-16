// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctors_by_specialist_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DoctorsBySpecialistState {
  DoctorsBySpecialistStatus get currentState =>
      throw _privateConstructorUsedError;
  ScrollController get scrollController => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  BaseResponseModel<List<DoctorModel>>? get doctors =>
      throw _privateConstructorUsedError;

  /// Create a copy of DoctorsBySpecialistState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DoctorsBySpecialistStateCopyWith<DoctorsBySpecialistState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorsBySpecialistStateCopyWith<$Res> {
  factory $DoctorsBySpecialistStateCopyWith(
    DoctorsBySpecialistState value,
    $Res Function(DoctorsBySpecialistState) then,
  ) = _$DoctorsBySpecialistStateCopyWithImpl<$Res, DoctorsBySpecialistState>;
  @useResult
  $Res call({
    DoctorsBySpecialistStatus currentState,
    ScrollController scrollController,
    int page,
    BaseResponseModel<List<DoctorModel>>? doctors,
  });

  $DoctorsBySpecialistStatusCopyWith<$Res> get currentState;
}

/// @nodoc
class _$DoctorsBySpecialistStateCopyWithImpl<
  $Res,
  $Val extends DoctorsBySpecialistState
>
    implements $DoctorsBySpecialistStateCopyWith<$Res> {
  _$DoctorsBySpecialistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DoctorsBySpecialistState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentState = null,
    Object? scrollController = null,
    Object? page = null,
    Object? doctors = freezed,
  }) {
    return _then(
      _value.copyWith(
            currentState: null == currentState
                ? _value.currentState
                : currentState // ignore: cast_nullable_to_non_nullable
                      as DoctorsBySpecialistStatus,
            scrollController: null == scrollController
                ? _value.scrollController
                : scrollController // ignore: cast_nullable_to_non_nullable
                      as ScrollController,
            page: null == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                      as int,
            doctors: freezed == doctors
                ? _value.doctors
                : doctors // ignore: cast_nullable_to_non_nullable
                      as BaseResponseModel<List<DoctorModel>>?,
          )
          as $Val,
    );
  }

  /// Create a copy of DoctorsBySpecialistState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DoctorsBySpecialistStatusCopyWith<$Res> get currentState {
    return $DoctorsBySpecialistStatusCopyWith<$Res>(_value.currentState, (
      value,
    ) {
      return _then(_value.copyWith(currentState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DoctorsBySpecialistStateImplCopyWith<$Res>
    implements $DoctorsBySpecialistStateCopyWith<$Res> {
  factory _$$DoctorsBySpecialistStateImplCopyWith(
    _$DoctorsBySpecialistStateImpl value,
    $Res Function(_$DoctorsBySpecialistStateImpl) then,
  ) = __$$DoctorsBySpecialistStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    DoctorsBySpecialistStatus currentState,
    ScrollController scrollController,
    int page,
    BaseResponseModel<List<DoctorModel>>? doctors,
  });

  @override
  $DoctorsBySpecialistStatusCopyWith<$Res> get currentState;
}

/// @nodoc
class __$$DoctorsBySpecialistStateImplCopyWithImpl<$Res>
    extends
        _$DoctorsBySpecialistStateCopyWithImpl<
          $Res,
          _$DoctorsBySpecialistStateImpl
        >
    implements _$$DoctorsBySpecialistStateImplCopyWith<$Res> {
  __$$DoctorsBySpecialistStateImplCopyWithImpl(
    _$DoctorsBySpecialistStateImpl _value,
    $Res Function(_$DoctorsBySpecialistStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DoctorsBySpecialistState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentState = null,
    Object? scrollController = null,
    Object? page = null,
    Object? doctors = freezed,
  }) {
    return _then(
      _$DoctorsBySpecialistStateImpl(
        currentState: null == currentState
            ? _value.currentState
            : currentState // ignore: cast_nullable_to_non_nullable
                  as DoctorsBySpecialistStatus,
        scrollController: null == scrollController
            ? _value.scrollController
            : scrollController // ignore: cast_nullable_to_non_nullable
                  as ScrollController,
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
        doctors: freezed == doctors
            ? _value.doctors
            : doctors // ignore: cast_nullable_to_non_nullable
                  as BaseResponseModel<List<DoctorModel>>?,
      ),
    );
  }
}

/// @nodoc

class _$DoctorsBySpecialistStateImpl implements _DoctorsBySpecialistState {
  const _$DoctorsBySpecialistStateImpl({
    required this.currentState,
    required this.scrollController,
    this.page = 1,
    this.doctors,
  });

  @override
  final DoctorsBySpecialistStatus currentState;
  @override
  final ScrollController scrollController;
  @override
  @JsonKey()
  final int page;
  @override
  final BaseResponseModel<List<DoctorModel>>? doctors;

  @override
  String toString() {
    return 'DoctorsBySpecialistState(currentState: $currentState, scrollController: $scrollController, page: $page, doctors: $doctors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorsBySpecialistStateImpl &&
            (identical(other.currentState, currentState) ||
                other.currentState == currentState) &&
            (identical(other.scrollController, scrollController) ||
                other.scrollController == scrollController) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.doctors, doctors) || other.doctors == doctors));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, currentState, scrollController, page, doctors);

  /// Create a copy of DoctorsBySpecialistState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorsBySpecialistStateImplCopyWith<_$DoctorsBySpecialistStateImpl>
  get copyWith =>
      __$$DoctorsBySpecialistStateImplCopyWithImpl<
        _$DoctorsBySpecialistStateImpl
      >(this, _$identity);
}

abstract class _DoctorsBySpecialistState implements DoctorsBySpecialistState {
  const factory _DoctorsBySpecialistState({
    required final DoctorsBySpecialistStatus currentState,
    required final ScrollController scrollController,
    final int page,
    final BaseResponseModel<List<DoctorModel>>? doctors,
  }) = _$DoctorsBySpecialistStateImpl;

  @override
  DoctorsBySpecialistStatus get currentState;
  @override
  ScrollController get scrollController;
  @override
  int get page;
  @override
  BaseResponseModel<List<DoctorModel>>? get doctors;

  /// Create a copy of DoctorsBySpecialistState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoctorsBySpecialistStateImplCopyWith<_$DoctorsBySpecialistStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DoctorsBySpecialistStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() getMoreCategoriesLoading,
    required TResult Function() getMoreCategoriesSuccess,
    required TResult Function() getCategoriesLoading,
    required TResult Function() getCategoriesSuccess,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? getMoreCategoriesLoading,
    TResult? Function()? getMoreCategoriesSuccess,
    TResult? Function()? getCategoriesLoading,
    TResult? Function()? getCategoriesSuccess,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? getMoreCategoriesLoading,
    TResult Function()? getMoreCategoriesSuccess,
    TResult Function()? getCategoriesLoading,
    TResult Function()? getCategoriesSuccess,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(GetMoreDoctorsFailure value)
    getMoreCategoriesLoading,
    required TResult Function(GetMoreDoctorsSuccess value)
    getMoreCategoriesSuccess,
    required TResult Function(GetDoctorsFailure value) getCategoriesLoading,
    required TResult Function(GetDoctorsSuccess value) getCategoriesSuccess,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(GetMoreDoctorsFailure value)? getMoreCategoriesLoading,
    TResult? Function(GetMoreDoctorsSuccess value)? getMoreCategoriesSuccess,
    TResult? Function(GetDoctorsFailure value)? getCategoriesLoading,
    TResult? Function(GetDoctorsSuccess value)? getCategoriesSuccess,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetMoreDoctorsFailure value)? getMoreCategoriesLoading,
    TResult Function(GetMoreDoctorsSuccess value)? getMoreCategoriesSuccess,
    TResult Function(GetDoctorsFailure value)? getCategoriesLoading,
    TResult Function(GetDoctorsSuccess value)? getCategoriesSuccess,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorsBySpecialistStatusCopyWith<$Res> {
  factory $DoctorsBySpecialistStatusCopyWith(
    DoctorsBySpecialistStatus value,
    $Res Function(DoctorsBySpecialistStatus) then,
  ) = _$DoctorsBySpecialistStatusCopyWithImpl<$Res, DoctorsBySpecialistStatus>;
}

/// @nodoc
class _$DoctorsBySpecialistStatusCopyWithImpl<
  $Res,
  $Val extends DoctorsBySpecialistStatus
>
    implements $DoctorsBySpecialistStatusCopyWith<$Res> {
  _$DoctorsBySpecialistStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DoctorsBySpecialistStatus
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
    extends _$DoctorsBySpecialistStatusCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DoctorsBySpecialistStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'DoctorsBySpecialistStatus.initial()';
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
    required TResult Function() getMoreCategoriesLoading,
    required TResult Function() getMoreCategoriesSuccess,
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
    TResult? Function()? getMoreCategoriesLoading,
    TResult? Function()? getMoreCategoriesSuccess,
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
    TResult Function()? getMoreCategoriesLoading,
    TResult Function()? getMoreCategoriesSuccess,
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
    required TResult Function(GetMoreDoctorsFailure value)
    getMoreCategoriesLoading,
    required TResult Function(GetMoreDoctorsSuccess value)
    getMoreCategoriesSuccess,
    required TResult Function(GetDoctorsFailure value) getCategoriesLoading,
    required TResult Function(GetDoctorsSuccess value) getCategoriesSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(GetMoreDoctorsFailure value)? getMoreCategoriesLoading,
    TResult? Function(GetMoreDoctorsSuccess value)? getMoreCategoriesSuccess,
    TResult? Function(GetDoctorsFailure value)? getCategoriesLoading,
    TResult? Function(GetDoctorsSuccess value)? getCategoriesSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetMoreDoctorsFailure value)? getMoreCategoriesLoading,
    TResult Function(GetMoreDoctorsSuccess value)? getMoreCategoriesSuccess,
    TResult Function(GetDoctorsFailure value)? getCategoriesLoading,
    TResult Function(GetDoctorsSuccess value)? getCategoriesSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements DoctorsBySpecialistStatus {
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
    extends _$DoctorsBySpecialistStatusCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DoctorsBySpecialistStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'DoctorsBySpecialistStatus.loading()';
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
    required TResult Function() getMoreCategoriesLoading,
    required TResult Function() getMoreCategoriesSuccess,
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
    TResult? Function()? getMoreCategoriesLoading,
    TResult? Function()? getMoreCategoriesSuccess,
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
    TResult Function()? getMoreCategoriesLoading,
    TResult Function()? getMoreCategoriesSuccess,
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
    required TResult Function(GetMoreDoctorsFailure value)
    getMoreCategoriesLoading,
    required TResult Function(GetMoreDoctorsSuccess value)
    getMoreCategoriesSuccess,
    required TResult Function(GetDoctorsFailure value) getCategoriesLoading,
    required TResult Function(GetDoctorsSuccess value) getCategoriesSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(GetMoreDoctorsFailure value)? getMoreCategoriesLoading,
    TResult? Function(GetMoreDoctorsSuccess value)? getMoreCategoriesSuccess,
    TResult? Function(GetDoctorsFailure value)? getCategoriesLoading,
    TResult? Function(GetDoctorsSuccess value)? getCategoriesSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetMoreDoctorsFailure value)? getMoreCategoriesLoading,
    TResult Function(GetMoreDoctorsSuccess value)? getMoreCategoriesSuccess,
    TResult Function(GetDoctorsFailure value)? getCategoriesLoading,
    TResult Function(GetDoctorsSuccess value)? getCategoriesSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements DoctorsBySpecialistStatus {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$GetMoreDoctorsFailureImplCopyWith<$Res> {
  factory _$$GetMoreDoctorsFailureImplCopyWith(
    _$GetMoreDoctorsFailureImpl value,
    $Res Function(_$GetMoreDoctorsFailureImpl) then,
  ) = __$$GetMoreDoctorsFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetMoreDoctorsFailureImplCopyWithImpl<$Res>
    extends
        _$DoctorsBySpecialistStatusCopyWithImpl<
          $Res,
          _$GetMoreDoctorsFailureImpl
        >
    implements _$$GetMoreDoctorsFailureImplCopyWith<$Res> {
  __$$GetMoreDoctorsFailureImplCopyWithImpl(
    _$GetMoreDoctorsFailureImpl _value,
    $Res Function(_$GetMoreDoctorsFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DoctorsBySpecialistStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetMoreDoctorsFailureImpl implements GetMoreDoctorsFailure {
  const _$GetMoreDoctorsFailureImpl();

  @override
  String toString() {
    return 'DoctorsBySpecialistStatus.getMoreCategoriesLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMoreDoctorsFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() getMoreCategoriesLoading,
    required TResult Function() getMoreCategoriesSuccess,
    required TResult Function() getCategoriesLoading,
    required TResult Function() getCategoriesSuccess,
  }) {
    return getMoreCategoriesLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? getMoreCategoriesLoading,
    TResult? Function()? getMoreCategoriesSuccess,
    TResult? Function()? getCategoriesLoading,
    TResult? Function()? getCategoriesSuccess,
  }) {
    return getMoreCategoriesLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? getMoreCategoriesLoading,
    TResult Function()? getMoreCategoriesSuccess,
    TResult Function()? getCategoriesLoading,
    TResult Function()? getCategoriesSuccess,
    required TResult orElse(),
  }) {
    if (getMoreCategoriesLoading != null) {
      return getMoreCategoriesLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(GetMoreDoctorsFailure value)
    getMoreCategoriesLoading,
    required TResult Function(GetMoreDoctorsSuccess value)
    getMoreCategoriesSuccess,
    required TResult Function(GetDoctorsFailure value) getCategoriesLoading,
    required TResult Function(GetDoctorsSuccess value) getCategoriesSuccess,
  }) {
    return getMoreCategoriesLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(GetMoreDoctorsFailure value)? getMoreCategoriesLoading,
    TResult? Function(GetMoreDoctorsSuccess value)? getMoreCategoriesSuccess,
    TResult? Function(GetDoctorsFailure value)? getCategoriesLoading,
    TResult? Function(GetDoctorsSuccess value)? getCategoriesSuccess,
  }) {
    return getMoreCategoriesLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetMoreDoctorsFailure value)? getMoreCategoriesLoading,
    TResult Function(GetMoreDoctorsSuccess value)? getMoreCategoriesSuccess,
    TResult Function(GetDoctorsFailure value)? getCategoriesLoading,
    TResult Function(GetDoctorsSuccess value)? getCategoriesSuccess,
    required TResult orElse(),
  }) {
    if (getMoreCategoriesLoading != null) {
      return getMoreCategoriesLoading(this);
    }
    return orElse();
  }
}

abstract class GetMoreDoctorsFailure implements DoctorsBySpecialistStatus {
  const factory GetMoreDoctorsFailure() = _$GetMoreDoctorsFailureImpl;
}

/// @nodoc
abstract class _$$GetMoreDoctorsSuccessImplCopyWith<$Res> {
  factory _$$GetMoreDoctorsSuccessImplCopyWith(
    _$GetMoreDoctorsSuccessImpl value,
    $Res Function(_$GetMoreDoctorsSuccessImpl) then,
  ) = __$$GetMoreDoctorsSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetMoreDoctorsSuccessImplCopyWithImpl<$Res>
    extends
        _$DoctorsBySpecialistStatusCopyWithImpl<
          $Res,
          _$GetMoreDoctorsSuccessImpl
        >
    implements _$$GetMoreDoctorsSuccessImplCopyWith<$Res> {
  __$$GetMoreDoctorsSuccessImplCopyWithImpl(
    _$GetMoreDoctorsSuccessImpl _value,
    $Res Function(_$GetMoreDoctorsSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DoctorsBySpecialistStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetMoreDoctorsSuccessImpl implements GetMoreDoctorsSuccess {
  const _$GetMoreDoctorsSuccessImpl();

  @override
  String toString() {
    return 'DoctorsBySpecialistStatus.getMoreCategoriesSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMoreDoctorsSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() getMoreCategoriesLoading,
    required TResult Function() getMoreCategoriesSuccess,
    required TResult Function() getCategoriesLoading,
    required TResult Function() getCategoriesSuccess,
  }) {
    return getMoreCategoriesSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? getMoreCategoriesLoading,
    TResult? Function()? getMoreCategoriesSuccess,
    TResult? Function()? getCategoriesLoading,
    TResult? Function()? getCategoriesSuccess,
  }) {
    return getMoreCategoriesSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? getMoreCategoriesLoading,
    TResult Function()? getMoreCategoriesSuccess,
    TResult Function()? getCategoriesLoading,
    TResult Function()? getCategoriesSuccess,
    required TResult orElse(),
  }) {
    if (getMoreCategoriesSuccess != null) {
      return getMoreCategoriesSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(GetMoreDoctorsFailure value)
    getMoreCategoriesLoading,
    required TResult Function(GetMoreDoctorsSuccess value)
    getMoreCategoriesSuccess,
    required TResult Function(GetDoctorsFailure value) getCategoriesLoading,
    required TResult Function(GetDoctorsSuccess value) getCategoriesSuccess,
  }) {
    return getMoreCategoriesSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(GetMoreDoctorsFailure value)? getMoreCategoriesLoading,
    TResult? Function(GetMoreDoctorsSuccess value)? getMoreCategoriesSuccess,
    TResult? Function(GetDoctorsFailure value)? getCategoriesLoading,
    TResult? Function(GetDoctorsSuccess value)? getCategoriesSuccess,
  }) {
    return getMoreCategoriesSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetMoreDoctorsFailure value)? getMoreCategoriesLoading,
    TResult Function(GetMoreDoctorsSuccess value)? getMoreCategoriesSuccess,
    TResult Function(GetDoctorsFailure value)? getCategoriesLoading,
    TResult Function(GetDoctorsSuccess value)? getCategoriesSuccess,
    required TResult orElse(),
  }) {
    if (getMoreCategoriesSuccess != null) {
      return getMoreCategoriesSuccess(this);
    }
    return orElse();
  }
}

abstract class GetMoreDoctorsSuccess implements DoctorsBySpecialistStatus {
  const factory GetMoreDoctorsSuccess() = _$GetMoreDoctorsSuccessImpl;
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
    extends
        _$DoctorsBySpecialistStatusCopyWithImpl<$Res, _$GetDoctorsFailureImpl>
    implements _$$GetDoctorsFailureImplCopyWith<$Res> {
  __$$GetDoctorsFailureImplCopyWithImpl(
    _$GetDoctorsFailureImpl _value,
    $Res Function(_$GetDoctorsFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DoctorsBySpecialistStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetDoctorsFailureImpl implements GetDoctorsFailure {
  const _$GetDoctorsFailureImpl();

  @override
  String toString() {
    return 'DoctorsBySpecialistStatus.getCategoriesLoading()';
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
    required TResult Function() getMoreCategoriesLoading,
    required TResult Function() getMoreCategoriesSuccess,
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
    TResult? Function()? getMoreCategoriesLoading,
    TResult? Function()? getMoreCategoriesSuccess,
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
    TResult Function()? getMoreCategoriesLoading,
    TResult Function()? getMoreCategoriesSuccess,
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
    required TResult Function(GetMoreDoctorsFailure value)
    getMoreCategoriesLoading,
    required TResult Function(GetMoreDoctorsSuccess value)
    getMoreCategoriesSuccess,
    required TResult Function(GetDoctorsFailure value) getCategoriesLoading,
    required TResult Function(GetDoctorsSuccess value) getCategoriesSuccess,
  }) {
    return getCategoriesLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(GetMoreDoctorsFailure value)? getMoreCategoriesLoading,
    TResult? Function(GetMoreDoctorsSuccess value)? getMoreCategoriesSuccess,
    TResult? Function(GetDoctorsFailure value)? getCategoriesLoading,
    TResult? Function(GetDoctorsSuccess value)? getCategoriesSuccess,
  }) {
    return getCategoriesLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetMoreDoctorsFailure value)? getMoreCategoriesLoading,
    TResult Function(GetMoreDoctorsSuccess value)? getMoreCategoriesSuccess,
    TResult Function(GetDoctorsFailure value)? getCategoriesLoading,
    TResult Function(GetDoctorsSuccess value)? getCategoriesSuccess,
    required TResult orElse(),
  }) {
    if (getCategoriesLoading != null) {
      return getCategoriesLoading(this);
    }
    return orElse();
  }
}

abstract class GetDoctorsFailure implements DoctorsBySpecialistStatus {
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
    extends
        _$DoctorsBySpecialistStatusCopyWithImpl<$Res, _$GetDoctorsSuccessImpl>
    implements _$$GetDoctorsSuccessImplCopyWith<$Res> {
  __$$GetDoctorsSuccessImplCopyWithImpl(
    _$GetDoctorsSuccessImpl _value,
    $Res Function(_$GetDoctorsSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DoctorsBySpecialistStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetDoctorsSuccessImpl implements GetDoctorsSuccess {
  const _$GetDoctorsSuccessImpl();

  @override
  String toString() {
    return 'DoctorsBySpecialistStatus.getCategoriesSuccess()';
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
    required TResult Function() getMoreCategoriesLoading,
    required TResult Function() getMoreCategoriesSuccess,
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
    TResult? Function()? getMoreCategoriesLoading,
    TResult? Function()? getMoreCategoriesSuccess,
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
    TResult Function()? getMoreCategoriesLoading,
    TResult Function()? getMoreCategoriesSuccess,
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
    required TResult Function(GetMoreDoctorsFailure value)
    getMoreCategoriesLoading,
    required TResult Function(GetMoreDoctorsSuccess value)
    getMoreCategoriesSuccess,
    required TResult Function(GetDoctorsFailure value) getCategoriesLoading,
    required TResult Function(GetDoctorsSuccess value) getCategoriesSuccess,
  }) {
    return getCategoriesSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(GetMoreDoctorsFailure value)? getMoreCategoriesLoading,
    TResult? Function(GetMoreDoctorsSuccess value)? getMoreCategoriesSuccess,
    TResult? Function(GetDoctorsFailure value)? getCategoriesLoading,
    TResult? Function(GetDoctorsSuccess value)? getCategoriesSuccess,
  }) {
    return getCategoriesSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetMoreDoctorsFailure value)? getMoreCategoriesLoading,
    TResult Function(GetMoreDoctorsSuccess value)? getMoreCategoriesSuccess,
    TResult Function(GetDoctorsFailure value)? getCategoriesLoading,
    TResult Function(GetDoctorsSuccess value)? getCategoriesSuccess,
    required TResult orElse(),
  }) {
    if (getCategoriesSuccess != null) {
      return getCategoriesSuccess(this);
    }
    return orElse();
  }
}

abstract class GetDoctorsSuccess implements DoctorsBySpecialistStatus {
  const factory GetDoctorsSuccess() = _$GetDoctorsSuccessImpl;
}
