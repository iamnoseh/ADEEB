// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MarketItemDto {

 String get id; String get title; int get priceJCoin; bool get available;
/// Create a copy of MarketItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketItemDtoCopyWith<MarketItemDto> get copyWith => _$MarketItemDtoCopyWithImpl<MarketItemDto>(this as MarketItemDto, _$identity);

  /// Serializes this MarketItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketItemDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.priceJCoin, priceJCoin) || other.priceJCoin == priceJCoin)&&(identical(other.available, available) || other.available == available));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,priceJCoin,available);

@override
String toString() {
  return 'MarketItemDto(id: $id, title: $title, priceJCoin: $priceJCoin, available: $available)';
}


}

/// @nodoc
abstract mixin class $MarketItemDtoCopyWith<$Res>  {
  factory $MarketItemDtoCopyWith(MarketItemDto value, $Res Function(MarketItemDto) _then) = _$MarketItemDtoCopyWithImpl;
@useResult
$Res call({
 String id, String title, int priceJCoin, bool available
});




}
/// @nodoc
class _$MarketItemDtoCopyWithImpl<$Res>
    implements $MarketItemDtoCopyWith<$Res> {
  _$MarketItemDtoCopyWithImpl(this._self, this._then);

  final MarketItemDto _self;
  final $Res Function(MarketItemDto) _then;

/// Create a copy of MarketItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? priceJCoin = null,Object? available = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,priceJCoin: null == priceJCoin ? _self.priceJCoin : priceJCoin // ignore: cast_nullable_to_non_nullable
as int,available: null == available ? _self.available : available // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [MarketItemDto].
extension MarketItemDtoPatterns on MarketItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MarketItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarketItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MarketItemDto value)  $default,){
final _that = this;
switch (_that) {
case _MarketItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MarketItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _MarketItemDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  int priceJCoin,  bool available)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketItemDto() when $default != null:
return $default(_that.id,_that.title,_that.priceJCoin,_that.available);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  int priceJCoin,  bool available)  $default,) {final _that = this;
switch (_that) {
case _MarketItemDto():
return $default(_that.id,_that.title,_that.priceJCoin,_that.available);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  int priceJCoin,  bool available)?  $default,) {final _that = this;
switch (_that) {
case _MarketItemDto() when $default != null:
return $default(_that.id,_that.title,_that.priceJCoin,_that.available);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MarketItemDto implements MarketItemDto {
  const _MarketItemDto({required this.id, required this.title, required this.priceJCoin, required this.available});
  factory _MarketItemDto.fromJson(Map<String, dynamic> json) => _$MarketItemDtoFromJson(json);

@override final  String id;
@override final  String title;
@override final  int priceJCoin;
@override final  bool available;

/// Create a copy of MarketItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketItemDtoCopyWith<_MarketItemDto> get copyWith => __$MarketItemDtoCopyWithImpl<_MarketItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MarketItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketItemDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.priceJCoin, priceJCoin) || other.priceJCoin == priceJCoin)&&(identical(other.available, available) || other.available == available));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,priceJCoin,available);

@override
String toString() {
  return 'MarketItemDto(id: $id, title: $title, priceJCoin: $priceJCoin, available: $available)';
}


}

/// @nodoc
abstract mixin class _$MarketItemDtoCopyWith<$Res> implements $MarketItemDtoCopyWith<$Res> {
  factory _$MarketItemDtoCopyWith(_MarketItemDto value, $Res Function(_MarketItemDto) _then) = __$MarketItemDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, int priceJCoin, bool available
});




}
/// @nodoc
class __$MarketItemDtoCopyWithImpl<$Res>
    implements _$MarketItemDtoCopyWith<$Res> {
  __$MarketItemDtoCopyWithImpl(this._self, this._then);

  final _MarketItemDto _self;
  final $Res Function(_MarketItemDto) _then;

/// Create a copy of MarketItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? priceJCoin = null,Object? available = null,}) {
  return _then(_MarketItemDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,priceJCoin: null == priceJCoin ? _self.priceJCoin : priceJCoin // ignore: cast_nullable_to_non_nullable
as int,available: null == available ? _self.available : available // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
