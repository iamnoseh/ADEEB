// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'learning_hub_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LearningHubDto {

 int get activeCourses; int get completedLessons; int get weeklyGoalPercent;
/// Create a copy of LearningHubDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LearningHubDtoCopyWith<LearningHubDto> get copyWith => _$LearningHubDtoCopyWithImpl<LearningHubDto>(this as LearningHubDto, _$identity);

  /// Serializes this LearningHubDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LearningHubDto&&(identical(other.activeCourses, activeCourses) || other.activeCourses == activeCourses)&&(identical(other.completedLessons, completedLessons) || other.completedLessons == completedLessons)&&(identical(other.weeklyGoalPercent, weeklyGoalPercent) || other.weeklyGoalPercent == weeklyGoalPercent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,activeCourses,completedLessons,weeklyGoalPercent);

@override
String toString() {
  return 'LearningHubDto(activeCourses: $activeCourses, completedLessons: $completedLessons, weeklyGoalPercent: $weeklyGoalPercent)';
}


}

/// @nodoc
abstract mixin class $LearningHubDtoCopyWith<$Res>  {
  factory $LearningHubDtoCopyWith(LearningHubDto value, $Res Function(LearningHubDto) _then) = _$LearningHubDtoCopyWithImpl;
@useResult
$Res call({
 int activeCourses, int completedLessons, int weeklyGoalPercent
});




}
/// @nodoc
class _$LearningHubDtoCopyWithImpl<$Res>
    implements $LearningHubDtoCopyWith<$Res> {
  _$LearningHubDtoCopyWithImpl(this._self, this._then);

  final LearningHubDto _self;
  final $Res Function(LearningHubDto) _then;

/// Create a copy of LearningHubDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? activeCourses = null,Object? completedLessons = null,Object? weeklyGoalPercent = null,}) {
  return _then(_self.copyWith(
activeCourses: null == activeCourses ? _self.activeCourses : activeCourses // ignore: cast_nullable_to_non_nullable
as int,completedLessons: null == completedLessons ? _self.completedLessons : completedLessons // ignore: cast_nullable_to_non_nullable
as int,weeklyGoalPercent: null == weeklyGoalPercent ? _self.weeklyGoalPercent : weeklyGoalPercent // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [LearningHubDto].
extension LearningHubDtoPatterns on LearningHubDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LearningHubDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LearningHubDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LearningHubDto value)  $default,){
final _that = this;
switch (_that) {
case _LearningHubDto():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LearningHubDto value)?  $default,){
final _that = this;
switch (_that) {
case _LearningHubDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int activeCourses,  int completedLessons,  int weeklyGoalPercent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LearningHubDto() when $default != null:
return $default(_that.activeCourses,_that.completedLessons,_that.weeklyGoalPercent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int activeCourses,  int completedLessons,  int weeklyGoalPercent)  $default,) {final _that = this;
switch (_that) {
case _LearningHubDto():
return $default(_that.activeCourses,_that.completedLessons,_that.weeklyGoalPercent);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int activeCourses,  int completedLessons,  int weeklyGoalPercent)?  $default,) {final _that = this;
switch (_that) {
case _LearningHubDto() when $default != null:
return $default(_that.activeCourses,_that.completedLessons,_that.weeklyGoalPercent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LearningHubDto implements LearningHubDto {
  const _LearningHubDto({required this.activeCourses, required this.completedLessons, required this.weeklyGoalPercent});
  factory _LearningHubDto.fromJson(Map<String, dynamic> json) => _$LearningHubDtoFromJson(json);

@override final  int activeCourses;
@override final  int completedLessons;
@override final  int weeklyGoalPercent;

/// Create a copy of LearningHubDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LearningHubDtoCopyWith<_LearningHubDto> get copyWith => __$LearningHubDtoCopyWithImpl<_LearningHubDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LearningHubDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LearningHubDto&&(identical(other.activeCourses, activeCourses) || other.activeCourses == activeCourses)&&(identical(other.completedLessons, completedLessons) || other.completedLessons == completedLessons)&&(identical(other.weeklyGoalPercent, weeklyGoalPercent) || other.weeklyGoalPercent == weeklyGoalPercent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,activeCourses,completedLessons,weeklyGoalPercent);

@override
String toString() {
  return 'LearningHubDto(activeCourses: $activeCourses, completedLessons: $completedLessons, weeklyGoalPercent: $weeklyGoalPercent)';
}


}

/// @nodoc
abstract mixin class _$LearningHubDtoCopyWith<$Res> implements $LearningHubDtoCopyWith<$Res> {
  factory _$LearningHubDtoCopyWith(_LearningHubDto value, $Res Function(_LearningHubDto) _then) = __$LearningHubDtoCopyWithImpl;
@override @useResult
$Res call({
 int activeCourses, int completedLessons, int weeklyGoalPercent
});




}
/// @nodoc
class __$LearningHubDtoCopyWithImpl<$Res>
    implements _$LearningHubDtoCopyWith<$Res> {
  __$LearningHubDtoCopyWithImpl(this._self, this._then);

  final _LearningHubDto _self;
  final $Res Function(_LearningHubDto) _then;

/// Create a copy of LearningHubDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? activeCourses = null,Object? completedLessons = null,Object? weeklyGoalPercent = null,}) {
  return _then(_LearningHubDto(
activeCourses: null == activeCourses ? _self.activeCourses : activeCourses // ignore: cast_nullable_to_non_nullable
as int,completedLessons: null == completedLessons ? _self.completedLessons : completedLessons // ignore: cast_nullable_to_non_nullable
as int,weeklyGoalPercent: null == weeklyGoalPercent ? _self.weeklyGoalPercent : weeklyGoalPercent // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
