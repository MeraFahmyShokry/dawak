// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_specialists_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GetAllSpecialistsState {
  GetAllSpecialistsStatus get status => throw _privateConstructorUsedError;
  BaseResponseModel<List<SpecialistsModel>>? get specialists =>
      throw _privateConstructorUsedError;
  ScrollController get scrollController => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;

  /// Create a copy of GetAllSpecialistsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetAllSpecialistsStateCopyWith<GetAllSpecialistsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllSpecialistsStateCopyWith<$Res> {
  factory $GetAllSpecialistsStateCopyWith(
    GetAllSpecialistsState value,
    $Res Function(GetAllSpecialistsState) then,
  ) = _$GetAllSpecialistsStateCopyWithImpl<$Res, GetAllSpecialistsState>;
  @useResult
  $Res call({
    GetAllSpecialistsStatus status,
    BaseResponseModel<List<SpecialistsModel>>? specialists,
    ScrollController scrollController,
    int page,
  });

  $GetAllSpecialistsStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$GetAllSpecialistsStateCopyWithImpl<
  $Res,
  $Val extends GetAllSpecialistsState
>
    implements $GetAllSpecialistsStateCopyWith<$Res> {
  _$GetAllSpecialistsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetAllSpecialistsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? specialists = freezed,
    Object? scrollController = null,
    Object? page = null,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as GetAllSpecialistsStatus,
            specialists: freezed == specialists
                ? _value.specialists
                : specialists // ignore: cast_nullable_to_non_nullable
                      as BaseResponseModel<List<SpecialistsModel>>?,
            scrollController: null == scrollController
                ? _value.scrollController
                : scrollController // ignore: cast_nullable_to_non_nullable
                      as ScrollController,
            page: null == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }

  /// Create a copy of GetAllSpecialistsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetAllSpecialistsStatusCopyWith<$Res> get status {
    return $GetAllSpecialistsStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetAllSpecialistsStateImplCopyWith<$Res>
    implements $GetAllSpecialistsStateCopyWith<$Res> {
  factory _$$GetAllSpecialistsStateImplCopyWith(
    _$GetAllSpecialistsStateImpl value,
    $Res Function(_$GetAllSpecialistsStateImpl) then,
  ) = __$$GetAllSpecialistsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    GetAllSpecialistsStatus status,
    BaseResponseModel<List<SpecialistsModel>>? specialists,
    ScrollController scrollController,
    int page,
  });

  @override
  $GetAllSpecialistsStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$GetAllSpecialistsStateImplCopyWithImpl<$Res>
    extends
        _$GetAllSpecialistsStateCopyWithImpl<$Res, _$GetAllSpecialistsStateImpl>
    implements _$$GetAllSpecialistsStateImplCopyWith<$Res> {
  __$$GetAllSpecialistsStateImplCopyWithImpl(
    _$GetAllSpecialistsStateImpl _value,
    $Res Function(_$GetAllSpecialistsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetAllSpecialistsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? specialists = freezed,
    Object? scrollController = null,
    Object? page = null,
  }) {
    return _then(
      _$GetAllSpecialistsStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as GetAllSpecialistsStatus,
        specialists: freezed == specialists
            ? _value.specialists
            : specialists // ignore: cast_nullable_to_non_nullable
                  as BaseResponseModel<List<SpecialistsModel>>?,
        scrollController: null == scrollController
            ? _value.scrollController
            : scrollController // ignore: cast_nullable_to_non_nullable
                  as ScrollController,
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$GetAllSpecialistsStateImpl implements _GetAllSpecialistsState {
  const _$GetAllSpecialistsStateImpl({
    required this.status,
    this.specialists,
    required this.scrollController,
    this.page = 1,
  });

  @override
  final GetAllSpecialistsStatus status;
  @override
  final BaseResponseModel<List<SpecialistsModel>>? specialists;
  @override
  final ScrollController scrollController;
  @override
  @JsonKey()
  final int page;

  @override
  String toString() {
    return 'GetAllSpecialistsState(status: $status, specialists: $specialists, scrollController: $scrollController, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllSpecialistsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.specialists, specialists) ||
                other.specialists == specialists) &&
            (identical(other.scrollController, scrollController) ||
                other.scrollController == scrollController) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, specialists, scrollController, page);

  /// Create a copy of GetAllSpecialistsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllSpecialistsStateImplCopyWith<_$GetAllSpecialistsStateImpl>
  get copyWith =>
      __$$GetAllSpecialistsStateImplCopyWithImpl<_$GetAllSpecialistsStateImpl>(
        this,
        _$identity,
      );
}

abstract class _GetAllSpecialistsState implements GetAllSpecialistsState {
  const factory _GetAllSpecialistsState({
    required final GetAllSpecialistsStatus status,
    final BaseResponseModel<List<SpecialistsModel>>? specialists,
    required final ScrollController scrollController,
    final int page,
  }) = _$GetAllSpecialistsStateImpl;

  @override
  GetAllSpecialistsStatus get status;
  @override
  BaseResponseModel<List<SpecialistsModel>>? get specialists;
  @override
  ScrollController get scrollController;
  @override
  int get page;

  /// Create a copy of GetAllSpecialistsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAllSpecialistsStateImplCopyWith<_$GetAllSpecialistsStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetAllSpecialistsStatus {
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
    required TResult Function(GetMoreSpecialistsFailure value)
    getMoreCategoriesLoading,
    required TResult Function(GetMoreSpecialistsSuccess value)
    getMoreCategoriesSuccess,
    required TResult Function(GetSpecialistsFailure value) getCategoriesLoading,
    required TResult Function(GetSpecialistsSuccess value) getCategoriesSuccess,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(GetMoreSpecialistsFailure value)?
    getMoreCategoriesLoading,
    TResult? Function(GetMoreSpecialistsSuccess value)?
    getMoreCategoriesSuccess,
    TResult? Function(GetSpecialistsFailure value)? getCategoriesLoading,
    TResult? Function(GetSpecialistsSuccess value)? getCategoriesSuccess,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetMoreSpecialistsFailure value)? getMoreCategoriesLoading,
    TResult Function(GetMoreSpecialistsSuccess value)? getMoreCategoriesSuccess,
    TResult Function(GetSpecialistsFailure value)? getCategoriesLoading,
    TResult Function(GetSpecialistsSuccess value)? getCategoriesSuccess,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllSpecialistsStatusCopyWith<$Res> {
  factory $GetAllSpecialistsStatusCopyWith(
    GetAllSpecialistsStatus value,
    $Res Function(GetAllSpecialistsStatus) then,
  ) = _$GetAllSpecialistsStatusCopyWithImpl<$Res, GetAllSpecialistsStatus>;
}

/// @nodoc
class _$GetAllSpecialistsStatusCopyWithImpl<
  $Res,
  $Val extends GetAllSpecialistsStatus
>
    implements $GetAllSpecialistsStatusCopyWith<$Res> {
  _$GetAllSpecialistsStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetAllSpecialistsStatus
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
    extends _$GetAllSpecialistsStatusCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetAllSpecialistsStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'GetAllSpecialistsStatus.initial()';
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
    required TResult Function(GetMoreSpecialistsFailure value)
    getMoreCategoriesLoading,
    required TResult Function(GetMoreSpecialistsSuccess value)
    getMoreCategoriesSuccess,
    required TResult Function(GetSpecialistsFailure value) getCategoriesLoading,
    required TResult Function(GetSpecialistsSuccess value) getCategoriesSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(GetMoreSpecialistsFailure value)?
    getMoreCategoriesLoading,
    TResult? Function(GetMoreSpecialistsSuccess value)?
    getMoreCategoriesSuccess,
    TResult? Function(GetSpecialistsFailure value)? getCategoriesLoading,
    TResult? Function(GetSpecialistsSuccess value)? getCategoriesSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetMoreSpecialistsFailure value)? getMoreCategoriesLoading,
    TResult Function(GetMoreSpecialistsSuccess value)? getMoreCategoriesSuccess,
    TResult Function(GetSpecialistsFailure value)? getCategoriesLoading,
    TResult Function(GetSpecialistsSuccess value)? getCategoriesSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements GetAllSpecialistsStatus {
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
    extends _$GetAllSpecialistsStatusCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetAllSpecialistsStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'GetAllSpecialistsStatus.loading()';
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
    required TResult Function(GetMoreSpecialistsFailure value)
    getMoreCategoriesLoading,
    required TResult Function(GetMoreSpecialistsSuccess value)
    getMoreCategoriesSuccess,
    required TResult Function(GetSpecialistsFailure value) getCategoriesLoading,
    required TResult Function(GetSpecialistsSuccess value) getCategoriesSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(GetMoreSpecialistsFailure value)?
    getMoreCategoriesLoading,
    TResult? Function(GetMoreSpecialistsSuccess value)?
    getMoreCategoriesSuccess,
    TResult? Function(GetSpecialistsFailure value)? getCategoriesLoading,
    TResult? Function(GetSpecialistsSuccess value)? getCategoriesSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetMoreSpecialistsFailure value)? getMoreCategoriesLoading,
    TResult Function(GetMoreSpecialistsSuccess value)? getMoreCategoriesSuccess,
    TResult Function(GetSpecialistsFailure value)? getCategoriesLoading,
    TResult Function(GetSpecialistsSuccess value)? getCategoriesSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements GetAllSpecialistsStatus {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$GetMoreSpecialistsFailureImplCopyWith<$Res> {
  factory _$$GetMoreSpecialistsFailureImplCopyWith(
    _$GetMoreSpecialistsFailureImpl value,
    $Res Function(_$GetMoreSpecialistsFailureImpl) then,
  ) = __$$GetMoreSpecialistsFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetMoreSpecialistsFailureImplCopyWithImpl<$Res>
    extends
        _$GetAllSpecialistsStatusCopyWithImpl<
          $Res,
          _$GetMoreSpecialistsFailureImpl
        >
    implements _$$GetMoreSpecialistsFailureImplCopyWith<$Res> {
  __$$GetMoreSpecialistsFailureImplCopyWithImpl(
    _$GetMoreSpecialistsFailureImpl _value,
    $Res Function(_$GetMoreSpecialistsFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetAllSpecialistsStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetMoreSpecialistsFailureImpl implements GetMoreSpecialistsFailure {
  const _$GetMoreSpecialistsFailureImpl();

  @override
  String toString() {
    return 'GetAllSpecialistsStatus.getMoreCategoriesLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMoreSpecialistsFailureImpl);
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
    required TResult Function(GetMoreSpecialistsFailure value)
    getMoreCategoriesLoading,
    required TResult Function(GetMoreSpecialistsSuccess value)
    getMoreCategoriesSuccess,
    required TResult Function(GetSpecialistsFailure value) getCategoriesLoading,
    required TResult Function(GetSpecialistsSuccess value) getCategoriesSuccess,
  }) {
    return getMoreCategoriesLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(GetMoreSpecialistsFailure value)?
    getMoreCategoriesLoading,
    TResult? Function(GetMoreSpecialistsSuccess value)?
    getMoreCategoriesSuccess,
    TResult? Function(GetSpecialistsFailure value)? getCategoriesLoading,
    TResult? Function(GetSpecialistsSuccess value)? getCategoriesSuccess,
  }) {
    return getMoreCategoriesLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetMoreSpecialistsFailure value)? getMoreCategoriesLoading,
    TResult Function(GetMoreSpecialistsSuccess value)? getMoreCategoriesSuccess,
    TResult Function(GetSpecialistsFailure value)? getCategoriesLoading,
    TResult Function(GetSpecialistsSuccess value)? getCategoriesSuccess,
    required TResult orElse(),
  }) {
    if (getMoreCategoriesLoading != null) {
      return getMoreCategoriesLoading(this);
    }
    return orElse();
  }
}

abstract class GetMoreSpecialistsFailure implements GetAllSpecialistsStatus {
  const factory GetMoreSpecialistsFailure() = _$GetMoreSpecialistsFailureImpl;
}

/// @nodoc
abstract class _$$GetMoreSpecialistsSuccessImplCopyWith<$Res> {
  factory _$$GetMoreSpecialistsSuccessImplCopyWith(
    _$GetMoreSpecialistsSuccessImpl value,
    $Res Function(_$GetMoreSpecialistsSuccessImpl) then,
  ) = __$$GetMoreSpecialistsSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetMoreSpecialistsSuccessImplCopyWithImpl<$Res>
    extends
        _$GetAllSpecialistsStatusCopyWithImpl<
          $Res,
          _$GetMoreSpecialistsSuccessImpl
        >
    implements _$$GetMoreSpecialistsSuccessImplCopyWith<$Res> {
  __$$GetMoreSpecialistsSuccessImplCopyWithImpl(
    _$GetMoreSpecialistsSuccessImpl _value,
    $Res Function(_$GetMoreSpecialistsSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetAllSpecialistsStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetMoreSpecialistsSuccessImpl implements GetMoreSpecialistsSuccess {
  const _$GetMoreSpecialistsSuccessImpl();

  @override
  String toString() {
    return 'GetAllSpecialistsStatus.getMoreCategoriesSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMoreSpecialistsSuccessImpl);
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
    required TResult Function(GetMoreSpecialistsFailure value)
    getMoreCategoriesLoading,
    required TResult Function(GetMoreSpecialistsSuccess value)
    getMoreCategoriesSuccess,
    required TResult Function(GetSpecialistsFailure value) getCategoriesLoading,
    required TResult Function(GetSpecialistsSuccess value) getCategoriesSuccess,
  }) {
    return getMoreCategoriesSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(GetMoreSpecialistsFailure value)?
    getMoreCategoriesLoading,
    TResult? Function(GetMoreSpecialistsSuccess value)?
    getMoreCategoriesSuccess,
    TResult? Function(GetSpecialistsFailure value)? getCategoriesLoading,
    TResult? Function(GetSpecialistsSuccess value)? getCategoriesSuccess,
  }) {
    return getMoreCategoriesSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetMoreSpecialistsFailure value)? getMoreCategoriesLoading,
    TResult Function(GetMoreSpecialistsSuccess value)? getMoreCategoriesSuccess,
    TResult Function(GetSpecialistsFailure value)? getCategoriesLoading,
    TResult Function(GetSpecialistsSuccess value)? getCategoriesSuccess,
    required TResult orElse(),
  }) {
    if (getMoreCategoriesSuccess != null) {
      return getMoreCategoriesSuccess(this);
    }
    return orElse();
  }
}

abstract class GetMoreSpecialistsSuccess implements GetAllSpecialistsStatus {
  const factory GetMoreSpecialistsSuccess() = _$GetMoreSpecialistsSuccessImpl;
}

/// @nodoc
abstract class _$$GetSpecialistsFailureImplCopyWith<$Res> {
  factory _$$GetSpecialistsFailureImplCopyWith(
    _$GetSpecialistsFailureImpl value,
    $Res Function(_$GetSpecialistsFailureImpl) then,
  ) = __$$GetSpecialistsFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetSpecialistsFailureImplCopyWithImpl<$Res>
    extends
        _$GetAllSpecialistsStatusCopyWithImpl<$Res, _$GetSpecialistsFailureImpl>
    implements _$$GetSpecialistsFailureImplCopyWith<$Res> {
  __$$GetSpecialistsFailureImplCopyWithImpl(
    _$GetSpecialistsFailureImpl _value,
    $Res Function(_$GetSpecialistsFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetAllSpecialistsStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetSpecialistsFailureImpl implements GetSpecialistsFailure {
  const _$GetSpecialistsFailureImpl();

  @override
  String toString() {
    return 'GetAllSpecialistsStatus.getCategoriesLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSpecialistsFailureImpl);
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
    required TResult Function(GetMoreSpecialistsFailure value)
    getMoreCategoriesLoading,
    required TResult Function(GetMoreSpecialistsSuccess value)
    getMoreCategoriesSuccess,
    required TResult Function(GetSpecialistsFailure value) getCategoriesLoading,
    required TResult Function(GetSpecialistsSuccess value) getCategoriesSuccess,
  }) {
    return getCategoriesLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(GetMoreSpecialistsFailure value)?
    getMoreCategoriesLoading,
    TResult? Function(GetMoreSpecialistsSuccess value)?
    getMoreCategoriesSuccess,
    TResult? Function(GetSpecialistsFailure value)? getCategoriesLoading,
    TResult? Function(GetSpecialistsSuccess value)? getCategoriesSuccess,
  }) {
    return getCategoriesLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetMoreSpecialistsFailure value)? getMoreCategoriesLoading,
    TResult Function(GetMoreSpecialistsSuccess value)? getMoreCategoriesSuccess,
    TResult Function(GetSpecialistsFailure value)? getCategoriesLoading,
    TResult Function(GetSpecialistsSuccess value)? getCategoriesSuccess,
    required TResult orElse(),
  }) {
    if (getCategoriesLoading != null) {
      return getCategoriesLoading(this);
    }
    return orElse();
  }
}

abstract class GetSpecialistsFailure implements GetAllSpecialistsStatus {
  const factory GetSpecialistsFailure() = _$GetSpecialistsFailureImpl;
}

/// @nodoc
abstract class _$$GetSpecialistsSuccessImplCopyWith<$Res> {
  factory _$$GetSpecialistsSuccessImplCopyWith(
    _$GetSpecialistsSuccessImpl value,
    $Res Function(_$GetSpecialistsSuccessImpl) then,
  ) = __$$GetSpecialistsSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetSpecialistsSuccessImplCopyWithImpl<$Res>
    extends
        _$GetAllSpecialistsStatusCopyWithImpl<$Res, _$GetSpecialistsSuccessImpl>
    implements _$$GetSpecialistsSuccessImplCopyWith<$Res> {
  __$$GetSpecialistsSuccessImplCopyWithImpl(
    _$GetSpecialistsSuccessImpl _value,
    $Res Function(_$GetSpecialistsSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetAllSpecialistsStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetSpecialistsSuccessImpl implements GetSpecialistsSuccess {
  const _$GetSpecialistsSuccessImpl();

  @override
  String toString() {
    return 'GetAllSpecialistsStatus.getCategoriesSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSpecialistsSuccessImpl);
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
    required TResult Function(GetMoreSpecialistsFailure value)
    getMoreCategoriesLoading,
    required TResult Function(GetMoreSpecialistsSuccess value)
    getMoreCategoriesSuccess,
    required TResult Function(GetSpecialistsFailure value) getCategoriesLoading,
    required TResult Function(GetSpecialistsSuccess value) getCategoriesSuccess,
  }) {
    return getCategoriesSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(GetMoreSpecialistsFailure value)?
    getMoreCategoriesLoading,
    TResult? Function(GetMoreSpecialistsSuccess value)?
    getMoreCategoriesSuccess,
    TResult? Function(GetSpecialistsFailure value)? getCategoriesLoading,
    TResult? Function(GetSpecialistsSuccess value)? getCategoriesSuccess,
  }) {
    return getCategoriesSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetMoreSpecialistsFailure value)? getMoreCategoriesLoading,
    TResult Function(GetMoreSpecialistsSuccess value)? getMoreCategoriesSuccess,
    TResult Function(GetSpecialistsFailure value)? getCategoriesLoading,
    TResult Function(GetSpecialistsSuccess value)? getCategoriesSuccess,
    required TResult orElse(),
  }) {
    if (getCategoriesSuccess != null) {
      return getCategoriesSuccess(this);
    }
    return orElse();
  }
}

abstract class GetSpecialistsSuccess implements GetAllSpecialistsStatus {
  const factory GetSpecialistsSuccess() = _$GetSpecialistsSuccessImpl;
}
