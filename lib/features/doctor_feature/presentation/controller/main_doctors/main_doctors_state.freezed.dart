// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_doctors_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MainDoctorsState {

 MainDoctorsStatus get status; List<SpecialistsModel> get specialists; List<TopDoctorsReview> get doctors;
/// Create a copy of MainDoctorsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MainDoctorsStateCopyWith<MainDoctorsState> get copyWith => _$MainDoctorsStateCopyWithImpl<MainDoctorsState>(this as MainDoctorsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MainDoctorsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.specialists, specialists)&&const DeepCollectionEquality().equals(other.doctors, doctors));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(specialists),const DeepCollectionEquality().hash(doctors));

@override
String toString() {
  return 'MainDoctorsState(status: $status, specialists: $specialists, doctors: $doctors)';
}


}

/// @nodoc
abstract mixin class $MainDoctorsStateCopyWith<$Res>  {
  factory $MainDoctorsStateCopyWith(MainDoctorsState value, $Res Function(MainDoctorsState) _then) = _$MainDoctorsStateCopyWithImpl;
@useResult
$Res call({
 MainDoctorsStatus status, List<SpecialistsModel> specialists, List<TopDoctorsReview> doctors
});


$MainDoctorsStatusCopyWith<$Res> get status;

}
/// @nodoc
class _$MainDoctorsStateCopyWithImpl<$Res>
    implements $MainDoctorsStateCopyWith<$Res> {
  _$MainDoctorsStateCopyWithImpl(this._self, this._then);

  final MainDoctorsState _self;
  final $Res Function(MainDoctorsState) _then;

/// Create a copy of MainDoctorsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? specialists = null,Object? doctors = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MainDoctorsStatus,specialists: null == specialists ? _self.specialists : specialists // ignore: cast_nullable_to_non_nullable
as List<SpecialistsModel>,doctors: null == doctors ? _self.doctors : doctors // ignore: cast_nullable_to_non_nullable
as List<TopDoctorsReview>,
  ));
}
/// Create a copy of MainDoctorsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MainDoctorsStatusCopyWith<$Res> get status {
  
  return $MainDoctorsStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// Adds pattern-matching-related methods to [MainDoctorsState].
extension MainDoctorsStatePatterns on MainDoctorsState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MainDoctorsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MainDoctorsState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MainDoctorsState value)  $default,){
final _that = this;
switch (_that) {
case _MainDoctorsState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MainDoctorsState value)?  $default,){
final _that = this;
switch (_that) {
case _MainDoctorsState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MainDoctorsStatus status,  List<SpecialistsModel> specialists,  List<TopDoctorsReview> doctors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MainDoctorsState() when $default != null:
return $default(_that.status,_that.specialists,_that.doctors);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MainDoctorsStatus status,  List<SpecialistsModel> specialists,  List<TopDoctorsReview> doctors)  $default,) {final _that = this;
switch (_that) {
case _MainDoctorsState():
return $default(_that.status,_that.specialists,_that.doctors);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MainDoctorsStatus status,  List<SpecialistsModel> specialists,  List<TopDoctorsReview> doctors)?  $default,) {final _that = this;
switch (_that) {
case _MainDoctorsState() when $default != null:
return $default(_that.status,_that.specialists,_that.doctors);case _:
  return null;

}
}

}

/// @nodoc


class _MainDoctorsState implements MainDoctorsState {
  const _MainDoctorsState({required this.status, final  List<SpecialistsModel> specialists = const [], final  List<TopDoctorsReview> doctors = const []}): _specialists = specialists,_doctors = doctors;
  

@override final  MainDoctorsStatus status;
 final  List<SpecialistsModel> _specialists;
@override@JsonKey() List<SpecialistsModel> get specialists {
  if (_specialists is EqualUnmodifiableListView) return _specialists;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_specialists);
}

 final  List<TopDoctorsReview> _doctors;
@override@JsonKey() List<TopDoctorsReview> get doctors {
  if (_doctors is EqualUnmodifiableListView) return _doctors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_doctors);
}


/// Create a copy of MainDoctorsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MainDoctorsStateCopyWith<_MainDoctorsState> get copyWith => __$MainDoctorsStateCopyWithImpl<_MainDoctorsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MainDoctorsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._specialists, _specialists)&&const DeepCollectionEquality().equals(other._doctors, _doctors));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_specialists),const DeepCollectionEquality().hash(_doctors));

@override
String toString() {
  return 'MainDoctorsState(status: $status, specialists: $specialists, doctors: $doctors)';
}


}

/// @nodoc
abstract mixin class _$MainDoctorsStateCopyWith<$Res> implements $MainDoctorsStateCopyWith<$Res> {
  factory _$MainDoctorsStateCopyWith(_MainDoctorsState value, $Res Function(_MainDoctorsState) _then) = __$MainDoctorsStateCopyWithImpl;
@override @useResult
$Res call({
 MainDoctorsStatus status, List<SpecialistsModel> specialists, List<TopDoctorsReview> doctors
});


@override $MainDoctorsStatusCopyWith<$Res> get status;

}
/// @nodoc
class __$MainDoctorsStateCopyWithImpl<$Res>
    implements _$MainDoctorsStateCopyWith<$Res> {
  __$MainDoctorsStateCopyWithImpl(this._self, this._then);

  final _MainDoctorsState _self;
  final $Res Function(_MainDoctorsState) _then;

/// Create a copy of MainDoctorsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? specialists = null,Object? doctors = null,}) {
  return _then(_MainDoctorsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MainDoctorsStatus,specialists: null == specialists ? _self._specialists : specialists // ignore: cast_nullable_to_non_nullable
as List<SpecialistsModel>,doctors: null == doctors ? _self._doctors : doctors // ignore: cast_nullable_to_non_nullable
as List<TopDoctorsReview>,
  ));
}

/// Create a copy of MainDoctorsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MainDoctorsStatusCopyWith<$Res> get status {
  
  return $MainDoctorsStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}

/// @nodoc
mixin _$MainDoctorsStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MainDoctorsStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MainDoctorsStatus()';
}


}

/// @nodoc
class $MainDoctorsStatusCopyWith<$Res>  {
$MainDoctorsStatusCopyWith(MainDoctorsStatus _, $Res Function(MainDoctorsStatus) __);
}


/// Adds pattern-matching-related methods to [MainDoctorsStatus].
extension MainDoctorsStatusPatterns on MainDoctorsStatus {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( Loading value)?  loading,TResult Function( GetDoctorsFailure value)?  getDoctorsLoading,TResult Function( GetDoctorsSuccess value)?  getDoctorsSuccess,TResult Function( GetCategoriesFailure value)?  getCategoriesLoading,TResult Function( GetCategoriesSuccess value)?  getCategoriesSuccess,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case GetDoctorsFailure() when getDoctorsLoading != null:
return getDoctorsLoading(_that);case GetDoctorsSuccess() when getDoctorsSuccess != null:
return getDoctorsSuccess(_that);case GetCategoriesFailure() when getCategoriesLoading != null:
return getCategoriesLoading(_that);case GetCategoriesSuccess() when getCategoriesSuccess != null:
return getCategoriesSuccess(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( Loading value)  loading,required TResult Function( GetDoctorsFailure value)  getDoctorsLoading,required TResult Function( GetDoctorsSuccess value)  getDoctorsSuccess,required TResult Function( GetCategoriesFailure value)  getCategoriesLoading,required TResult Function( GetCategoriesSuccess value)  getCategoriesSuccess,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case Loading():
return loading(_that);case GetDoctorsFailure():
return getDoctorsLoading(_that);case GetDoctorsSuccess():
return getDoctorsSuccess(_that);case GetCategoriesFailure():
return getCategoriesLoading(_that);case GetCategoriesSuccess():
return getCategoriesSuccess(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( Loading value)?  loading,TResult? Function( GetDoctorsFailure value)?  getDoctorsLoading,TResult? Function( GetDoctorsSuccess value)?  getDoctorsSuccess,TResult? Function( GetCategoriesFailure value)?  getCategoriesLoading,TResult? Function( GetCategoriesSuccess value)?  getCategoriesSuccess,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case GetDoctorsFailure() when getDoctorsLoading != null:
return getDoctorsLoading(_that);case GetDoctorsSuccess() when getDoctorsSuccess != null:
return getDoctorsSuccess(_that);case GetCategoriesFailure() when getCategoriesLoading != null:
return getCategoriesLoading(_that);case GetCategoriesSuccess() when getCategoriesSuccess != null:
return getCategoriesSuccess(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  getDoctorsLoading,TResult Function()?  getDoctorsSuccess,TResult Function()?  getCategoriesLoading,TResult Function()?  getCategoriesSuccess,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case GetDoctorsFailure() when getDoctorsLoading != null:
return getDoctorsLoading();case GetDoctorsSuccess() when getDoctorsSuccess != null:
return getDoctorsSuccess();case GetCategoriesFailure() when getCategoriesLoading != null:
return getCategoriesLoading();case GetCategoriesSuccess() when getCategoriesSuccess != null:
return getCategoriesSuccess();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  getDoctorsLoading,required TResult Function()  getDoctorsSuccess,required TResult Function()  getCategoriesLoading,required TResult Function()  getCategoriesSuccess,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case Loading():
return loading();case GetDoctorsFailure():
return getDoctorsLoading();case GetDoctorsSuccess():
return getDoctorsSuccess();case GetCategoriesFailure():
return getCategoriesLoading();case GetCategoriesSuccess():
return getCategoriesSuccess();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  getDoctorsLoading,TResult? Function()?  getDoctorsSuccess,TResult? Function()?  getCategoriesLoading,TResult? Function()?  getCategoriesSuccess,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case GetDoctorsFailure() when getDoctorsLoading != null:
return getDoctorsLoading();case GetDoctorsSuccess() when getDoctorsSuccess != null:
return getDoctorsSuccess();case GetCategoriesFailure() when getCategoriesLoading != null:
return getCategoriesLoading();case GetCategoriesSuccess() when getCategoriesSuccess != null:
return getCategoriesSuccess();case _:
  return null;

}
}

}

/// @nodoc


class Initial implements MainDoctorsStatus {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MainDoctorsStatus.initial()';
}


}




/// @nodoc


class Loading implements MainDoctorsStatus {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MainDoctorsStatus.loading()';
}


}




/// @nodoc


class GetDoctorsFailure implements MainDoctorsStatus {
  const GetDoctorsFailure();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetDoctorsFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MainDoctorsStatus.getDoctorsLoading()';
}


}




/// @nodoc


class GetDoctorsSuccess implements MainDoctorsStatus {
  const GetDoctorsSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetDoctorsSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MainDoctorsStatus.getDoctorsSuccess()';
}


}




/// @nodoc


class GetCategoriesFailure implements MainDoctorsStatus {
  const GetCategoriesFailure();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCategoriesFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MainDoctorsStatus.getCategoriesLoading()';
}


}




/// @nodoc


class GetCategoriesSuccess implements MainDoctorsStatus {
  const GetCategoriesSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCategoriesSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MainDoctorsStatus.getCategoriesSuccess()';
}


}




// dart format on
