// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'layout_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LayoutState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LayoutState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LayoutState()';
}


}

/// @nodoc
class $LayoutStateCopyWith<$Res>  {
$LayoutStateCopyWith(LayoutState _, $Res Function(LayoutState) __);
}


/// Adds pattern-matching-related methods to [LayoutState].
extension LayoutStatePatterns on LayoutState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _changeLayoutIndex value)?  changeLayoutIndex,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _changeLayoutIndex() when changeLayoutIndex != null:
return changeLayoutIndex(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _changeLayoutIndex value)  changeLayoutIndex,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _changeLayoutIndex():
return changeLayoutIndex(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _changeLayoutIndex value)?  changeLayoutIndex,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _changeLayoutIndex() when changeLayoutIndex != null:
return changeLayoutIndex(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( int index)?  changeLayoutIndex,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _changeLayoutIndex() when changeLayoutIndex != null:
return changeLayoutIndex(_that.index);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( int index)  changeLayoutIndex,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _changeLayoutIndex():
return changeLayoutIndex(_that.index);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( int index)?  changeLayoutIndex,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _changeLayoutIndex() when changeLayoutIndex != null:
return changeLayoutIndex(_that.index);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements LayoutState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LayoutState.initial()';
}


}




/// @nodoc


class _changeLayoutIndex implements LayoutState {
  const _changeLayoutIndex({this.index = 0});
  

@JsonKey() final  int index;

/// Create a copy of LayoutState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$changeLayoutIndexCopyWith<_changeLayoutIndex> get copyWith => __$changeLayoutIndexCopyWithImpl<_changeLayoutIndex>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _changeLayoutIndex&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'LayoutState.changeLayoutIndex(index: $index)';
}


}

/// @nodoc
abstract mixin class _$changeLayoutIndexCopyWith<$Res> implements $LayoutStateCopyWith<$Res> {
  factory _$changeLayoutIndexCopyWith(_changeLayoutIndex value, $Res Function(_changeLayoutIndex) _then) = __$changeLayoutIndexCopyWithImpl;
@useResult
$Res call({
 int index
});




}
/// @nodoc
class __$changeLayoutIndexCopyWithImpl<$Res>
    implements _$changeLayoutIndexCopyWith<$Res> {
  __$changeLayoutIndexCopyWithImpl(this._self, this._then);

  final _changeLayoutIndex _self;
  final $Res Function(_changeLayoutIndex) _then;

/// Create a copy of LayoutState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(_changeLayoutIndex(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
