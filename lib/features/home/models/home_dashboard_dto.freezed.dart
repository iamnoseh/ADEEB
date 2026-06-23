// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_dashboard_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeDashboardDto {

 String get userName; int get xp; int get jCoin; int get level; int get streakDays; int get todayCompletedMissions; int get todayTotalMissions; int get mmtProgressPercent;
/// Create a copy of HomeDashboardDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeDashboardDtoCopyWith<HomeDashboardDto> get copyWith => _$HomeDashboardDtoCopyWithImpl<HomeDashboardDto>(this as HomeDashboardDto, _$identity);

  /// Serializes this HomeDashboardDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeDashboardDto&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.xp, xp) || other.xp == xp)&&(identical(other.jCoin, jCoin) || other.jCoin == jCoin)&&(identical(other.level, level) || other.level == level)&&(identical(other.streakDays, streakDays) || other.streakDays == streakDays)&&(identical(other.todayCompletedMissions, todayCompletedMissions) || other.todayCompletedMissions == todayCompletedMissions)&&(identical(other.todayTotalMissions, todayTotalMissions) || other.todayTotalMissions == todayTotalMissions)&&(identical(other.mmtProgressPercent, mmtProgressPercent) || other.mmtProgressPercent == mmtProgressPercent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userName,xp,jCoin,level,streakDays,todayCompletedMissions,todayTotalMissions,mmtProgressPercent);

@override
String toString() {
  return 'HomeDashboardDto(userName: $userName, xp: $xp, jCoin: $jCoin, level: $level, streakDays: $streakDays, todayCompletedMissions: $todayCompletedMissions, todayTotalMissions: $todayTotalMissions, mmtProgressPercent: $mmtProgressPercent)';
}


}

/// @nodoc
abstract mixin class $HomeDashboardDtoCopyWith<$Res>  {
  factory $HomeDashboardDtoCopyWith(HomeDashboardDto value, $Res Function(HomeDashboardDto) _then) = _$HomeDashboardDtoCopyWithImpl;
@useResult
$Res call({
 String userName, int xp, int jCoin, int level, int streakDays, int todayCompletedMissions, int todayTotalMissions, int mmtProgressPercent
});




}
/// @nodoc
class _$HomeDashboardDtoCopyWithImpl<$Res>
    implements $HomeDashboardDtoCopyWith<$Res> {
  _$HomeDashboardDtoCopyWithImpl(this._self, this._then);

  final HomeDashboardDto _self;
  final $Res Function(HomeDashboardDto) _then;

/// Create a copy of HomeDashboardDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userName = null,Object? xp = null,Object? jCoin = null,Object? level = null,Object? streakDays = null,Object? todayCompletedMissions = null,Object? todayTotalMissions = null,Object? mmtProgressPercent = null,}) {
  return _then(_self.copyWith(
userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,xp: null == xp ? _self.xp : xp // ignore: cast_nullable_to_non_nullable
as int,jCoin: null == jCoin ? _self.jCoin : jCoin // ignore: cast_nullable_to_non_nullable
as int,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,streakDays: null == streakDays ? _self.streakDays : streakDays // ignore: cast_nullable_to_non_nullable
as int,todayCompletedMissions: null == todayCompletedMissions ? _self.todayCompletedMissions : todayCompletedMissions // ignore: cast_nullable_to_non_nullable
as int,todayTotalMissions: null == todayTotalMissions ? _self.todayTotalMissions : todayTotalMissions // ignore: cast_nullable_to_non_nullable
as int,mmtProgressPercent: null == mmtProgressPercent ? _self.mmtProgressPercent : mmtProgressPercent // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeDashboardDto].
extension HomeDashboardDtoPatterns on HomeDashboardDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeDashboardDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeDashboardDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeDashboardDto value)  $default,){
final _that = this;
switch (_that) {
case _HomeDashboardDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeDashboardDto value)?  $default,){
final _that = this;
switch (_that) {
case _HomeDashboardDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userName,  int xp,  int jCoin,  int level,  int streakDays,  int todayCompletedMissions,  int todayTotalMissions,  int mmtProgressPercent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeDashboardDto() when $default != null:
return $default(_that.userName,_that.xp,_that.jCoin,_that.level,_that.streakDays,_that.todayCompletedMissions,_that.todayTotalMissions,_that.mmtProgressPercent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userName,  int xp,  int jCoin,  int level,  int streakDays,  int todayCompletedMissions,  int todayTotalMissions,  int mmtProgressPercent)  $default,) {final _that = this;
switch (_that) {
case _HomeDashboardDto():
return $default(_that.userName,_that.xp,_that.jCoin,_that.level,_that.streakDays,_that.todayCompletedMissions,_that.todayTotalMissions,_that.mmtProgressPercent);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userName,  int xp,  int jCoin,  int level,  int streakDays,  int todayCompletedMissions,  int todayTotalMissions,  int mmtProgressPercent)?  $default,) {final _that = this;
switch (_that) {
case _HomeDashboardDto() when $default != null:
return $default(_that.userName,_that.xp,_that.jCoin,_that.level,_that.streakDays,_that.todayCompletedMissions,_that.todayTotalMissions,_that.mmtProgressPercent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeDashboardDto implements HomeDashboardDto {
  const _HomeDashboardDto({required this.userName, required this.xp, required this.jCoin, required this.level, required this.streakDays, required this.todayCompletedMissions, required this.todayTotalMissions, required this.mmtProgressPercent});
  factory _HomeDashboardDto.fromJson(Map<String, dynamic> json) => _$HomeDashboardDtoFromJson(json);

@override final  String userName;
@override final  int xp;
@override final  int jCoin;
@override final  int level;
@override final  int streakDays;
@override final  int todayCompletedMissions;
@override final  int todayTotalMissions;
@override final  int mmtProgressPercent;

/// Create a copy of HomeDashboardDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeDashboardDtoCopyWith<_HomeDashboardDto> get copyWith => __$HomeDashboardDtoCopyWithImpl<_HomeDashboardDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeDashboardDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeDashboardDto&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.xp, xp) || other.xp == xp)&&(identical(other.jCoin, jCoin) || other.jCoin == jCoin)&&(identical(other.level, level) || other.level == level)&&(identical(other.streakDays, streakDays) || other.streakDays == streakDays)&&(identical(other.todayCompletedMissions, todayCompletedMissions) || other.todayCompletedMissions == todayCompletedMissions)&&(identical(other.todayTotalMissions, todayTotalMissions) || other.todayTotalMissions == todayTotalMissions)&&(identical(other.mmtProgressPercent, mmtProgressPercent) || other.mmtProgressPercent == mmtProgressPercent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userName,xp,jCoin,level,streakDays,todayCompletedMissions,todayTotalMissions,mmtProgressPercent);

@override
String toString() {
  return 'HomeDashboardDto(userName: $userName, xp: $xp, jCoin: $jCoin, level: $level, streakDays: $streakDays, todayCompletedMissions: $todayCompletedMissions, todayTotalMissions: $todayTotalMissions, mmtProgressPercent: $mmtProgressPercent)';
}


}

/// @nodoc
abstract mixin class _$HomeDashboardDtoCopyWith<$Res> implements $HomeDashboardDtoCopyWith<$Res> {
  factory _$HomeDashboardDtoCopyWith(_HomeDashboardDto value, $Res Function(_HomeDashboardDto) _then) = __$HomeDashboardDtoCopyWithImpl;
@override @useResult
$Res call({
 String userName, int xp, int jCoin, int level, int streakDays, int todayCompletedMissions, int todayTotalMissions, int mmtProgressPercent
});




}
/// @nodoc
class __$HomeDashboardDtoCopyWithImpl<$Res>
    implements _$HomeDashboardDtoCopyWith<$Res> {
  __$HomeDashboardDtoCopyWithImpl(this._self, this._then);

  final _HomeDashboardDto _self;
  final $Res Function(_HomeDashboardDto) _then;

/// Create a copy of HomeDashboardDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userName = null,Object? xp = null,Object? jCoin = null,Object? level = null,Object? streakDays = null,Object? todayCompletedMissions = null,Object? todayTotalMissions = null,Object? mmtProgressPercent = null,}) {
  return _then(_HomeDashboardDto(
userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,xp: null == xp ? _self.xp : xp // ignore: cast_nullable_to_non_nullable
as int,jCoin: null == jCoin ? _self.jCoin : jCoin // ignore: cast_nullable_to_non_nullable
as int,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,streakDays: null == streakDays ? _self.streakDays : streakDays // ignore: cast_nullable_to_non_nullable
as int,todayCompletedMissions: null == todayCompletedMissions ? _self.todayCompletedMissions : todayCompletedMissions // ignore: cast_nullable_to_non_nullable
as int,todayTotalMissions: null == todayTotalMissions ? _self.todayTotalMissions : todayTotalMissions // ignore: cast_nullable_to_non_nullable
as int,mmtProgressPercent: null == mmtProgressPercent ? _self.mmtProgressPercent : mmtProgressPercent // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
