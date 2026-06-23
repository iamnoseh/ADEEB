// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'league_standing_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LeagueStandingDto {

 String get leagueName; int get rank; int get totalPlayers; int get weeklyXp;
/// Create a copy of LeagueStandingDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeagueStandingDtoCopyWith<LeagueStandingDto> get copyWith => _$LeagueStandingDtoCopyWithImpl<LeagueStandingDto>(this as LeagueStandingDto, _$identity);

  /// Serializes this LeagueStandingDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeagueStandingDto&&(identical(other.leagueName, leagueName) || other.leagueName == leagueName)&&(identical(other.rank, rank) || other.rank == rank)&&(identical(other.totalPlayers, totalPlayers) || other.totalPlayers == totalPlayers)&&(identical(other.weeklyXp, weeklyXp) || other.weeklyXp == weeklyXp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,leagueName,rank,totalPlayers,weeklyXp);

@override
String toString() {
  return 'LeagueStandingDto(leagueName: $leagueName, rank: $rank, totalPlayers: $totalPlayers, weeklyXp: $weeklyXp)';
}


}

/// @nodoc
abstract mixin class $LeagueStandingDtoCopyWith<$Res>  {
  factory $LeagueStandingDtoCopyWith(LeagueStandingDto value, $Res Function(LeagueStandingDto) _then) = _$LeagueStandingDtoCopyWithImpl;
@useResult
$Res call({
 String leagueName, int rank, int totalPlayers, int weeklyXp
});




}
/// @nodoc
class _$LeagueStandingDtoCopyWithImpl<$Res>
    implements $LeagueStandingDtoCopyWith<$Res> {
  _$LeagueStandingDtoCopyWithImpl(this._self, this._then);

  final LeagueStandingDto _self;
  final $Res Function(LeagueStandingDto) _then;

/// Create a copy of LeagueStandingDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? leagueName = null,Object? rank = null,Object? totalPlayers = null,Object? weeklyXp = null,}) {
  return _then(_self.copyWith(
leagueName: null == leagueName ? _self.leagueName : leagueName // ignore: cast_nullable_to_non_nullable
as String,rank: null == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as int,totalPlayers: null == totalPlayers ? _self.totalPlayers : totalPlayers // ignore: cast_nullable_to_non_nullable
as int,weeklyXp: null == weeklyXp ? _self.weeklyXp : weeklyXp // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [LeagueStandingDto].
extension LeagueStandingDtoPatterns on LeagueStandingDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeagueStandingDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeagueStandingDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeagueStandingDto value)  $default,){
final _that = this;
switch (_that) {
case _LeagueStandingDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeagueStandingDto value)?  $default,){
final _that = this;
switch (_that) {
case _LeagueStandingDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String leagueName,  int rank,  int totalPlayers,  int weeklyXp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeagueStandingDto() when $default != null:
return $default(_that.leagueName,_that.rank,_that.totalPlayers,_that.weeklyXp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String leagueName,  int rank,  int totalPlayers,  int weeklyXp)  $default,) {final _that = this;
switch (_that) {
case _LeagueStandingDto():
return $default(_that.leagueName,_that.rank,_that.totalPlayers,_that.weeklyXp);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String leagueName,  int rank,  int totalPlayers,  int weeklyXp)?  $default,) {final _that = this;
switch (_that) {
case _LeagueStandingDto() when $default != null:
return $default(_that.leagueName,_that.rank,_that.totalPlayers,_that.weeklyXp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LeagueStandingDto implements LeagueStandingDto {
  const _LeagueStandingDto({required this.leagueName, required this.rank, required this.totalPlayers, required this.weeklyXp});
  factory _LeagueStandingDto.fromJson(Map<String, dynamic> json) => _$LeagueStandingDtoFromJson(json);

@override final  String leagueName;
@override final  int rank;
@override final  int totalPlayers;
@override final  int weeklyXp;

/// Create a copy of LeagueStandingDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeagueStandingDtoCopyWith<_LeagueStandingDto> get copyWith => __$LeagueStandingDtoCopyWithImpl<_LeagueStandingDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LeagueStandingDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeagueStandingDto&&(identical(other.leagueName, leagueName) || other.leagueName == leagueName)&&(identical(other.rank, rank) || other.rank == rank)&&(identical(other.totalPlayers, totalPlayers) || other.totalPlayers == totalPlayers)&&(identical(other.weeklyXp, weeklyXp) || other.weeklyXp == weeklyXp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,leagueName,rank,totalPlayers,weeklyXp);

@override
String toString() {
  return 'LeagueStandingDto(leagueName: $leagueName, rank: $rank, totalPlayers: $totalPlayers, weeklyXp: $weeklyXp)';
}


}

/// @nodoc
abstract mixin class _$LeagueStandingDtoCopyWith<$Res> implements $LeagueStandingDtoCopyWith<$Res> {
  factory _$LeagueStandingDtoCopyWith(_LeagueStandingDto value, $Res Function(_LeagueStandingDto) _then) = __$LeagueStandingDtoCopyWithImpl;
@override @useResult
$Res call({
 String leagueName, int rank, int totalPlayers, int weeklyXp
});




}
/// @nodoc
class __$LeagueStandingDtoCopyWithImpl<$Res>
    implements _$LeagueStandingDtoCopyWith<$Res> {
  __$LeagueStandingDtoCopyWithImpl(this._self, this._then);

  final _LeagueStandingDto _self;
  final $Res Function(_LeagueStandingDto) _then;

/// Create a copy of LeagueStandingDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? leagueName = null,Object? rank = null,Object? totalPlayers = null,Object? weeklyXp = null,}) {
  return _then(_LeagueStandingDto(
leagueName: null == leagueName ? _self.leagueName : leagueName // ignore: cast_nullable_to_non_nullable
as String,rank: null == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as int,totalPlayers: null == totalPlayers ? _self.totalPlayers : totalPlayers // ignore: cast_nullable_to_non_nullable
as int,weeklyXp: null == weeklyXp ? _self.weeklyXp : weeklyXp // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
