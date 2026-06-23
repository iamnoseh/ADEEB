// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'duel_summary_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DuelSummaryDto {

 int get wins; int get losses; int get rating; String get nextOpponentHint;
/// Create a copy of DuelSummaryDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DuelSummaryDtoCopyWith<DuelSummaryDto> get copyWith => _$DuelSummaryDtoCopyWithImpl<DuelSummaryDto>(this as DuelSummaryDto, _$identity);

  /// Serializes this DuelSummaryDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DuelSummaryDto&&(identical(other.wins, wins) || other.wins == wins)&&(identical(other.losses, losses) || other.losses == losses)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.nextOpponentHint, nextOpponentHint) || other.nextOpponentHint == nextOpponentHint));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,wins,losses,rating,nextOpponentHint);

@override
String toString() {
  return 'DuelSummaryDto(wins: $wins, losses: $losses, rating: $rating, nextOpponentHint: $nextOpponentHint)';
}


}

/// @nodoc
abstract mixin class $DuelSummaryDtoCopyWith<$Res>  {
  factory $DuelSummaryDtoCopyWith(DuelSummaryDto value, $Res Function(DuelSummaryDto) _then) = _$DuelSummaryDtoCopyWithImpl;
@useResult
$Res call({
 int wins, int losses, int rating, String nextOpponentHint
});




}
/// @nodoc
class _$DuelSummaryDtoCopyWithImpl<$Res>
    implements $DuelSummaryDtoCopyWith<$Res> {
  _$DuelSummaryDtoCopyWithImpl(this._self, this._then);

  final DuelSummaryDto _self;
  final $Res Function(DuelSummaryDto) _then;

/// Create a copy of DuelSummaryDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? wins = null,Object? losses = null,Object? rating = null,Object? nextOpponentHint = null,}) {
  return _then(_self.copyWith(
wins: null == wins ? _self.wins : wins // ignore: cast_nullable_to_non_nullable
as int,losses: null == losses ? _self.losses : losses // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,nextOpponentHint: null == nextOpponentHint ? _self.nextOpponentHint : nextOpponentHint // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DuelSummaryDto].
extension DuelSummaryDtoPatterns on DuelSummaryDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DuelSummaryDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DuelSummaryDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DuelSummaryDto value)  $default,){
final _that = this;
switch (_that) {
case _DuelSummaryDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DuelSummaryDto value)?  $default,){
final _that = this;
switch (_that) {
case _DuelSummaryDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int wins,  int losses,  int rating,  String nextOpponentHint)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DuelSummaryDto() when $default != null:
return $default(_that.wins,_that.losses,_that.rating,_that.nextOpponentHint);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int wins,  int losses,  int rating,  String nextOpponentHint)  $default,) {final _that = this;
switch (_that) {
case _DuelSummaryDto():
return $default(_that.wins,_that.losses,_that.rating,_that.nextOpponentHint);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int wins,  int losses,  int rating,  String nextOpponentHint)?  $default,) {final _that = this;
switch (_that) {
case _DuelSummaryDto() when $default != null:
return $default(_that.wins,_that.losses,_that.rating,_that.nextOpponentHint);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DuelSummaryDto implements DuelSummaryDto {
  const _DuelSummaryDto({required this.wins, required this.losses, required this.rating, required this.nextOpponentHint});
  factory _DuelSummaryDto.fromJson(Map<String, dynamic> json) => _$DuelSummaryDtoFromJson(json);

@override final  int wins;
@override final  int losses;
@override final  int rating;
@override final  String nextOpponentHint;

/// Create a copy of DuelSummaryDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DuelSummaryDtoCopyWith<_DuelSummaryDto> get copyWith => __$DuelSummaryDtoCopyWithImpl<_DuelSummaryDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DuelSummaryDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DuelSummaryDto&&(identical(other.wins, wins) || other.wins == wins)&&(identical(other.losses, losses) || other.losses == losses)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.nextOpponentHint, nextOpponentHint) || other.nextOpponentHint == nextOpponentHint));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,wins,losses,rating,nextOpponentHint);

@override
String toString() {
  return 'DuelSummaryDto(wins: $wins, losses: $losses, rating: $rating, nextOpponentHint: $nextOpponentHint)';
}


}

/// @nodoc
abstract mixin class _$DuelSummaryDtoCopyWith<$Res> implements $DuelSummaryDtoCopyWith<$Res> {
  factory _$DuelSummaryDtoCopyWith(_DuelSummaryDto value, $Res Function(_DuelSummaryDto) _then) = __$DuelSummaryDtoCopyWithImpl;
@override @useResult
$Res call({
 int wins, int losses, int rating, String nextOpponentHint
});




}
/// @nodoc
class __$DuelSummaryDtoCopyWithImpl<$Res>
    implements _$DuelSummaryDtoCopyWith<$Res> {
  __$DuelSummaryDtoCopyWithImpl(this._self, this._then);

  final _DuelSummaryDto _self;
  final $Res Function(_DuelSummaryDto) _then;

/// Create a copy of DuelSummaryDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? wins = null,Object? losses = null,Object? rating = null,Object? nextOpponentHint = null,}) {
  return _then(_DuelSummaryDto(
wins: null == wins ? _self.wins : wins // ignore: cast_nullable_to_non_nullable
as int,losses: null == losses ? _self.losses : losses // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,nextOpponentHint: null == nextOpponentHint ? _self.nextOpponentHint : nextOpponentHint // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
