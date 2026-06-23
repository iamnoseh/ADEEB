// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_summary_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileSummaryDto {

 String get userName; String get city; int get xp; int get jCoin; int get level; int get streakDays;
/// Create a copy of ProfileSummaryDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileSummaryDtoCopyWith<ProfileSummaryDto> get copyWith => _$ProfileSummaryDtoCopyWithImpl<ProfileSummaryDto>(this as ProfileSummaryDto, _$identity);

  /// Serializes this ProfileSummaryDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileSummaryDto&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.city, city) || other.city == city)&&(identical(other.xp, xp) || other.xp == xp)&&(identical(other.jCoin, jCoin) || other.jCoin == jCoin)&&(identical(other.level, level) || other.level == level)&&(identical(other.streakDays, streakDays) || other.streakDays == streakDays));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userName,city,xp,jCoin,level,streakDays);

@override
String toString() {
  return 'ProfileSummaryDto(userName: $userName, city: $city, xp: $xp, jCoin: $jCoin, level: $level, streakDays: $streakDays)';
}


}

/// @nodoc
abstract mixin class $ProfileSummaryDtoCopyWith<$Res>  {
  factory $ProfileSummaryDtoCopyWith(ProfileSummaryDto value, $Res Function(ProfileSummaryDto) _then) = _$ProfileSummaryDtoCopyWithImpl;
@useResult
$Res call({
 String userName, String city, int xp, int jCoin, int level, int streakDays
});




}
/// @nodoc
class _$ProfileSummaryDtoCopyWithImpl<$Res>
    implements $ProfileSummaryDtoCopyWith<$Res> {
  _$ProfileSummaryDtoCopyWithImpl(this._self, this._then);

  final ProfileSummaryDto _self;
  final $Res Function(ProfileSummaryDto) _then;

/// Create a copy of ProfileSummaryDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userName = null,Object? city = null,Object? xp = null,Object? jCoin = null,Object? level = null,Object? streakDays = null,}) {
  return _then(_self.copyWith(
userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,xp: null == xp ? _self.xp : xp // ignore: cast_nullable_to_non_nullable
as int,jCoin: null == jCoin ? _self.jCoin : jCoin // ignore: cast_nullable_to_non_nullable
as int,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,streakDays: null == streakDays ? _self.streakDays : streakDays // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileSummaryDto].
extension ProfileSummaryDtoPatterns on ProfileSummaryDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileSummaryDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileSummaryDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileSummaryDto value)  $default,){
final _that = this;
switch (_that) {
case _ProfileSummaryDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileSummaryDto value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileSummaryDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userName,  String city,  int xp,  int jCoin,  int level,  int streakDays)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileSummaryDto() when $default != null:
return $default(_that.userName,_that.city,_that.xp,_that.jCoin,_that.level,_that.streakDays);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userName,  String city,  int xp,  int jCoin,  int level,  int streakDays)  $default,) {final _that = this;
switch (_that) {
case _ProfileSummaryDto():
return $default(_that.userName,_that.city,_that.xp,_that.jCoin,_that.level,_that.streakDays);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userName,  String city,  int xp,  int jCoin,  int level,  int streakDays)?  $default,) {final _that = this;
switch (_that) {
case _ProfileSummaryDto() when $default != null:
return $default(_that.userName,_that.city,_that.xp,_that.jCoin,_that.level,_that.streakDays);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileSummaryDto implements ProfileSummaryDto {
  const _ProfileSummaryDto({required this.userName, required this.city, required this.xp, required this.jCoin, required this.level, required this.streakDays});
  factory _ProfileSummaryDto.fromJson(Map<String, dynamic> json) => _$ProfileSummaryDtoFromJson(json);

@override final  String userName;
@override final  String city;
@override final  int xp;
@override final  int jCoin;
@override final  int level;
@override final  int streakDays;

/// Create a copy of ProfileSummaryDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileSummaryDtoCopyWith<_ProfileSummaryDto> get copyWith => __$ProfileSummaryDtoCopyWithImpl<_ProfileSummaryDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileSummaryDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileSummaryDto&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.city, city) || other.city == city)&&(identical(other.xp, xp) || other.xp == xp)&&(identical(other.jCoin, jCoin) || other.jCoin == jCoin)&&(identical(other.level, level) || other.level == level)&&(identical(other.streakDays, streakDays) || other.streakDays == streakDays));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userName,city,xp,jCoin,level,streakDays);

@override
String toString() {
  return 'ProfileSummaryDto(userName: $userName, city: $city, xp: $xp, jCoin: $jCoin, level: $level, streakDays: $streakDays)';
}


}

/// @nodoc
abstract mixin class _$ProfileSummaryDtoCopyWith<$Res> implements $ProfileSummaryDtoCopyWith<$Res> {
  factory _$ProfileSummaryDtoCopyWith(_ProfileSummaryDto value, $Res Function(_ProfileSummaryDto) _then) = __$ProfileSummaryDtoCopyWithImpl;
@override @useResult
$Res call({
 String userName, String city, int xp, int jCoin, int level, int streakDays
});




}
/// @nodoc
class __$ProfileSummaryDtoCopyWithImpl<$Res>
    implements _$ProfileSummaryDtoCopyWith<$Res> {
  __$ProfileSummaryDtoCopyWithImpl(this._self, this._then);

  final _ProfileSummaryDto _self;
  final $Res Function(_ProfileSummaryDto) _then;

/// Create a copy of ProfileSummaryDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userName = null,Object? city = null,Object? xp = null,Object? jCoin = null,Object? level = null,Object? streakDays = null,}) {
  return _then(_ProfileSummaryDto(
userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,xp: null == xp ? _self.xp : xp // ignore: cast_nullable_to_non_nullable
as int,jCoin: null == jCoin ? _self.jCoin : jCoin // ignore: cast_nullable_to_non_nullable
as int,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,streakDays: null == streakDays ? _self.streakDays : streakDays // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
