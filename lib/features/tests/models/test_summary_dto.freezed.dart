// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_summary_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TestSummaryDto {

 String get id; String get title; int get questionCount; int get bestScorePercent;
/// Create a copy of TestSummaryDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TestSummaryDtoCopyWith<TestSummaryDto> get copyWith => _$TestSummaryDtoCopyWithImpl<TestSummaryDto>(this as TestSummaryDto, _$identity);

  /// Serializes this TestSummaryDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TestSummaryDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.questionCount, questionCount) || other.questionCount == questionCount)&&(identical(other.bestScorePercent, bestScorePercent) || other.bestScorePercent == bestScorePercent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,questionCount,bestScorePercent);

@override
String toString() {
  return 'TestSummaryDto(id: $id, title: $title, questionCount: $questionCount, bestScorePercent: $bestScorePercent)';
}


}

/// @nodoc
abstract mixin class $TestSummaryDtoCopyWith<$Res>  {
  factory $TestSummaryDtoCopyWith(TestSummaryDto value, $Res Function(TestSummaryDto) _then) = _$TestSummaryDtoCopyWithImpl;
@useResult
$Res call({
 String id, String title, int questionCount, int bestScorePercent
});




}
/// @nodoc
class _$TestSummaryDtoCopyWithImpl<$Res>
    implements $TestSummaryDtoCopyWith<$Res> {
  _$TestSummaryDtoCopyWithImpl(this._self, this._then);

  final TestSummaryDto _self;
  final $Res Function(TestSummaryDto) _then;

/// Create a copy of TestSummaryDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? questionCount = null,Object? bestScorePercent = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,questionCount: null == questionCount ? _self.questionCount : questionCount // ignore: cast_nullable_to_non_nullable
as int,bestScorePercent: null == bestScorePercent ? _self.bestScorePercent : bestScorePercent // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TestSummaryDto].
extension TestSummaryDtoPatterns on TestSummaryDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TestSummaryDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TestSummaryDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TestSummaryDto value)  $default,){
final _that = this;
switch (_that) {
case _TestSummaryDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TestSummaryDto value)?  $default,){
final _that = this;
switch (_that) {
case _TestSummaryDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  int questionCount,  int bestScorePercent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TestSummaryDto() when $default != null:
return $default(_that.id,_that.title,_that.questionCount,_that.bestScorePercent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  int questionCount,  int bestScorePercent)  $default,) {final _that = this;
switch (_that) {
case _TestSummaryDto():
return $default(_that.id,_that.title,_that.questionCount,_that.bestScorePercent);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  int questionCount,  int bestScorePercent)?  $default,) {final _that = this;
switch (_that) {
case _TestSummaryDto() when $default != null:
return $default(_that.id,_that.title,_that.questionCount,_that.bestScorePercent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TestSummaryDto implements TestSummaryDto {
  const _TestSummaryDto({required this.id, required this.title, required this.questionCount, required this.bestScorePercent});
  factory _TestSummaryDto.fromJson(Map<String, dynamic> json) => _$TestSummaryDtoFromJson(json);

@override final  String id;
@override final  String title;
@override final  int questionCount;
@override final  int bestScorePercent;

/// Create a copy of TestSummaryDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TestSummaryDtoCopyWith<_TestSummaryDto> get copyWith => __$TestSummaryDtoCopyWithImpl<_TestSummaryDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TestSummaryDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TestSummaryDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.questionCount, questionCount) || other.questionCount == questionCount)&&(identical(other.bestScorePercent, bestScorePercent) || other.bestScorePercent == bestScorePercent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,questionCount,bestScorePercent);

@override
String toString() {
  return 'TestSummaryDto(id: $id, title: $title, questionCount: $questionCount, bestScorePercent: $bestScorePercent)';
}


}

/// @nodoc
abstract mixin class _$TestSummaryDtoCopyWith<$Res> implements $TestSummaryDtoCopyWith<$Res> {
  factory _$TestSummaryDtoCopyWith(_TestSummaryDto value, $Res Function(_TestSummaryDto) _then) = __$TestSummaryDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, int questionCount, int bestScorePercent
});




}
/// @nodoc
class __$TestSummaryDtoCopyWithImpl<$Res>
    implements _$TestSummaryDtoCopyWith<$Res> {
  __$TestSummaryDtoCopyWithImpl(this._self, this._then);

  final _TestSummaryDto _self;
  final $Res Function(_TestSummaryDto) _then;

/// Create a copy of TestSummaryDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? questionCount = null,Object? bestScorePercent = null,}) {
  return _then(_TestSummaryDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,questionCount: null == questionCount ? _self.questionCount : questionCount // ignore: cast_nullable_to_non_nullable
as int,bestScorePercent: null == bestScorePercent ? _self.bestScorePercent : bestScorePercent // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
