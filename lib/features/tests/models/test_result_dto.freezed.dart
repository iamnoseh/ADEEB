// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_result_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TestResultDto {

 String get testId; int get correctAnswers; int get totalQuestions; int get earnedXp;
/// Create a copy of TestResultDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TestResultDtoCopyWith<TestResultDto> get copyWith => _$TestResultDtoCopyWithImpl<TestResultDto>(this as TestResultDto, _$identity);

  /// Serializes this TestResultDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TestResultDto&&(identical(other.testId, testId) || other.testId == testId)&&(identical(other.correctAnswers, correctAnswers) || other.correctAnswers == correctAnswers)&&(identical(other.totalQuestions, totalQuestions) || other.totalQuestions == totalQuestions)&&(identical(other.earnedXp, earnedXp) || other.earnedXp == earnedXp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,testId,correctAnswers,totalQuestions,earnedXp);

@override
String toString() {
  return 'TestResultDto(testId: $testId, correctAnswers: $correctAnswers, totalQuestions: $totalQuestions, earnedXp: $earnedXp)';
}


}

/// @nodoc
abstract mixin class $TestResultDtoCopyWith<$Res>  {
  factory $TestResultDtoCopyWith(TestResultDto value, $Res Function(TestResultDto) _then) = _$TestResultDtoCopyWithImpl;
@useResult
$Res call({
 String testId, int correctAnswers, int totalQuestions, int earnedXp
});




}
/// @nodoc
class _$TestResultDtoCopyWithImpl<$Res>
    implements $TestResultDtoCopyWith<$Res> {
  _$TestResultDtoCopyWithImpl(this._self, this._then);

  final TestResultDto _self;
  final $Res Function(TestResultDto) _then;

/// Create a copy of TestResultDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? testId = null,Object? correctAnswers = null,Object? totalQuestions = null,Object? earnedXp = null,}) {
  return _then(_self.copyWith(
testId: null == testId ? _self.testId : testId // ignore: cast_nullable_to_non_nullable
as String,correctAnswers: null == correctAnswers ? _self.correctAnswers : correctAnswers // ignore: cast_nullable_to_non_nullable
as int,totalQuestions: null == totalQuestions ? _self.totalQuestions : totalQuestions // ignore: cast_nullable_to_non_nullable
as int,earnedXp: null == earnedXp ? _self.earnedXp : earnedXp // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TestResultDto].
extension TestResultDtoPatterns on TestResultDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TestResultDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TestResultDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TestResultDto value)  $default,){
final _that = this;
switch (_that) {
case _TestResultDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TestResultDto value)?  $default,){
final _that = this;
switch (_that) {
case _TestResultDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String testId,  int correctAnswers,  int totalQuestions,  int earnedXp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TestResultDto() when $default != null:
return $default(_that.testId,_that.correctAnswers,_that.totalQuestions,_that.earnedXp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String testId,  int correctAnswers,  int totalQuestions,  int earnedXp)  $default,) {final _that = this;
switch (_that) {
case _TestResultDto():
return $default(_that.testId,_that.correctAnswers,_that.totalQuestions,_that.earnedXp);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String testId,  int correctAnswers,  int totalQuestions,  int earnedXp)?  $default,) {final _that = this;
switch (_that) {
case _TestResultDto() when $default != null:
return $default(_that.testId,_that.correctAnswers,_that.totalQuestions,_that.earnedXp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TestResultDto implements TestResultDto {
  const _TestResultDto({required this.testId, required this.correctAnswers, required this.totalQuestions, required this.earnedXp});
  factory _TestResultDto.fromJson(Map<String, dynamic> json) => _$TestResultDtoFromJson(json);

@override final  String testId;
@override final  int correctAnswers;
@override final  int totalQuestions;
@override final  int earnedXp;

/// Create a copy of TestResultDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TestResultDtoCopyWith<_TestResultDto> get copyWith => __$TestResultDtoCopyWithImpl<_TestResultDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TestResultDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TestResultDto&&(identical(other.testId, testId) || other.testId == testId)&&(identical(other.correctAnswers, correctAnswers) || other.correctAnswers == correctAnswers)&&(identical(other.totalQuestions, totalQuestions) || other.totalQuestions == totalQuestions)&&(identical(other.earnedXp, earnedXp) || other.earnedXp == earnedXp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,testId,correctAnswers,totalQuestions,earnedXp);

@override
String toString() {
  return 'TestResultDto(testId: $testId, correctAnswers: $correctAnswers, totalQuestions: $totalQuestions, earnedXp: $earnedXp)';
}


}

/// @nodoc
abstract mixin class _$TestResultDtoCopyWith<$Res> implements $TestResultDtoCopyWith<$Res> {
  factory _$TestResultDtoCopyWith(_TestResultDto value, $Res Function(_TestResultDto) _then) = __$TestResultDtoCopyWithImpl;
@override @useResult
$Res call({
 String testId, int correctAnswers, int totalQuestions, int earnedXp
});




}
/// @nodoc
class __$TestResultDtoCopyWithImpl<$Res>
    implements _$TestResultDtoCopyWith<$Res> {
  __$TestResultDtoCopyWithImpl(this._self, this._then);

  final _TestResultDto _self;
  final $Res Function(_TestResultDto) _then;

/// Create a copy of TestResultDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? testId = null,Object? correctAnswers = null,Object? totalQuestions = null,Object? earnedXp = null,}) {
  return _then(_TestResultDto(
testId: null == testId ? _self.testId : testId // ignore: cast_nullable_to_non_nullable
as String,correctAnswers: null == correctAnswers ? _self.correctAnswers : correctAnswers // ignore: cast_nullable_to_non_nullable
as int,totalQuestions: null == totalQuestions ? _self.totalQuestions : totalQuestions // ignore: cast_nullable_to_non_nullable
as int,earnedXp: null == earnedXp ? _self.earnedXp : earnedXp // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
