// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mmt_overview_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MmtOverviewDto {

 int get subjects; int get solvedQuestions; int get readinessPercent;
/// Create a copy of MmtOverviewDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MmtOverviewDtoCopyWith<MmtOverviewDto> get copyWith => _$MmtOverviewDtoCopyWithImpl<MmtOverviewDto>(this as MmtOverviewDto, _$identity);

  /// Serializes this MmtOverviewDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MmtOverviewDto&&(identical(other.subjects, subjects) || other.subjects == subjects)&&(identical(other.solvedQuestions, solvedQuestions) || other.solvedQuestions == solvedQuestions)&&(identical(other.readinessPercent, readinessPercent) || other.readinessPercent == readinessPercent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subjects,solvedQuestions,readinessPercent);

@override
String toString() {
  return 'MmtOverviewDto(subjects: $subjects, solvedQuestions: $solvedQuestions, readinessPercent: $readinessPercent)';
}


}

/// @nodoc
abstract mixin class $MmtOverviewDtoCopyWith<$Res>  {
  factory $MmtOverviewDtoCopyWith(MmtOverviewDto value, $Res Function(MmtOverviewDto) _then) = _$MmtOverviewDtoCopyWithImpl;
@useResult
$Res call({
 int subjects, int solvedQuestions, int readinessPercent
});




}
/// @nodoc
class _$MmtOverviewDtoCopyWithImpl<$Res>
    implements $MmtOverviewDtoCopyWith<$Res> {
  _$MmtOverviewDtoCopyWithImpl(this._self, this._then);

  final MmtOverviewDto _self;
  final $Res Function(MmtOverviewDto) _then;

/// Create a copy of MmtOverviewDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subjects = null,Object? solvedQuestions = null,Object? readinessPercent = null,}) {
  return _then(_self.copyWith(
subjects: null == subjects ? _self.subjects : subjects // ignore: cast_nullable_to_non_nullable
as int,solvedQuestions: null == solvedQuestions ? _self.solvedQuestions : solvedQuestions // ignore: cast_nullable_to_non_nullable
as int,readinessPercent: null == readinessPercent ? _self.readinessPercent : readinessPercent // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MmtOverviewDto].
extension MmtOverviewDtoPatterns on MmtOverviewDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MmtOverviewDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MmtOverviewDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MmtOverviewDto value)  $default,){
final _that = this;
switch (_that) {
case _MmtOverviewDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MmtOverviewDto value)?  $default,){
final _that = this;
switch (_that) {
case _MmtOverviewDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int subjects,  int solvedQuestions,  int readinessPercent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MmtOverviewDto() when $default != null:
return $default(_that.subjects,_that.solvedQuestions,_that.readinessPercent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int subjects,  int solvedQuestions,  int readinessPercent)  $default,) {final _that = this;
switch (_that) {
case _MmtOverviewDto():
return $default(_that.subjects,_that.solvedQuestions,_that.readinessPercent);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int subjects,  int solvedQuestions,  int readinessPercent)?  $default,) {final _that = this;
switch (_that) {
case _MmtOverviewDto() when $default != null:
return $default(_that.subjects,_that.solvedQuestions,_that.readinessPercent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MmtOverviewDto implements MmtOverviewDto {
  const _MmtOverviewDto({required this.subjects, required this.solvedQuestions, required this.readinessPercent});
  factory _MmtOverviewDto.fromJson(Map<String, dynamic> json) => _$MmtOverviewDtoFromJson(json);

@override final  int subjects;
@override final  int solvedQuestions;
@override final  int readinessPercent;

/// Create a copy of MmtOverviewDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MmtOverviewDtoCopyWith<_MmtOverviewDto> get copyWith => __$MmtOverviewDtoCopyWithImpl<_MmtOverviewDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MmtOverviewDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MmtOverviewDto&&(identical(other.subjects, subjects) || other.subjects == subjects)&&(identical(other.solvedQuestions, solvedQuestions) || other.solvedQuestions == solvedQuestions)&&(identical(other.readinessPercent, readinessPercent) || other.readinessPercent == readinessPercent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subjects,solvedQuestions,readinessPercent);

@override
String toString() {
  return 'MmtOverviewDto(subjects: $subjects, solvedQuestions: $solvedQuestions, readinessPercent: $readinessPercent)';
}


}

/// @nodoc
abstract mixin class _$MmtOverviewDtoCopyWith<$Res> implements $MmtOverviewDtoCopyWith<$Res> {
  factory _$MmtOverviewDtoCopyWith(_MmtOverviewDto value, $Res Function(_MmtOverviewDto) _then) = __$MmtOverviewDtoCopyWithImpl;
@override @useResult
$Res call({
 int subjects, int solvedQuestions, int readinessPercent
});




}
/// @nodoc
class __$MmtOverviewDtoCopyWithImpl<$Res>
    implements _$MmtOverviewDtoCopyWith<$Res> {
  __$MmtOverviewDtoCopyWithImpl(this._self, this._then);

  final _MmtOverviewDto _self;
  final $Res Function(_MmtOverviewDto) _then;

/// Create a copy of MmtOverviewDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subjects = null,Object? solvedQuestions = null,Object? readinessPercent = null,}) {
  return _then(_MmtOverviewDto(
subjects: null == subjects ? _self.subjects : subjects // ignore: cast_nullable_to_non_nullable
as int,solvedQuestions: null == solvedQuestions ? _self.solvedQuestions : solvedQuestions // ignore: cast_nullable_to_non_nullable
as int,readinessPercent: null == readinessPercent ? _self.readinessPercent : readinessPercent // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
