// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vocabulary_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VocabularyItemDto {

 String get id; String get word; String get translation; String get example; bool get mastered;
/// Create a copy of VocabularyItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VocabularyItemDtoCopyWith<VocabularyItemDto> get copyWith => _$VocabularyItemDtoCopyWithImpl<VocabularyItemDto>(this as VocabularyItemDto, _$identity);

  /// Serializes this VocabularyItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VocabularyItemDto&&(identical(other.id, id) || other.id == id)&&(identical(other.word, word) || other.word == word)&&(identical(other.translation, translation) || other.translation == translation)&&(identical(other.example, example) || other.example == example)&&(identical(other.mastered, mastered) || other.mastered == mastered));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,word,translation,example,mastered);

@override
String toString() {
  return 'VocabularyItemDto(id: $id, word: $word, translation: $translation, example: $example, mastered: $mastered)';
}


}

/// @nodoc
abstract mixin class $VocabularyItemDtoCopyWith<$Res>  {
  factory $VocabularyItemDtoCopyWith(VocabularyItemDto value, $Res Function(VocabularyItemDto) _then) = _$VocabularyItemDtoCopyWithImpl;
@useResult
$Res call({
 String id, String word, String translation, String example, bool mastered
});




}
/// @nodoc
class _$VocabularyItemDtoCopyWithImpl<$Res>
    implements $VocabularyItemDtoCopyWith<$Res> {
  _$VocabularyItemDtoCopyWithImpl(this._self, this._then);

  final VocabularyItemDto _self;
  final $Res Function(VocabularyItemDto) _then;

/// Create a copy of VocabularyItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? word = null,Object? translation = null,Object? example = null,Object? mastered = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,word: null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String,translation: null == translation ? _self.translation : translation // ignore: cast_nullable_to_non_nullable
as String,example: null == example ? _self.example : example // ignore: cast_nullable_to_non_nullable
as String,mastered: null == mastered ? _self.mastered : mastered // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [VocabularyItemDto].
extension VocabularyItemDtoPatterns on VocabularyItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VocabularyItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VocabularyItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VocabularyItemDto value)  $default,){
final _that = this;
switch (_that) {
case _VocabularyItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VocabularyItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _VocabularyItemDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String word,  String translation,  String example,  bool mastered)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VocabularyItemDto() when $default != null:
return $default(_that.id,_that.word,_that.translation,_that.example,_that.mastered);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String word,  String translation,  String example,  bool mastered)  $default,) {final _that = this;
switch (_that) {
case _VocabularyItemDto():
return $default(_that.id,_that.word,_that.translation,_that.example,_that.mastered);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String word,  String translation,  String example,  bool mastered)?  $default,) {final _that = this;
switch (_that) {
case _VocabularyItemDto() when $default != null:
return $default(_that.id,_that.word,_that.translation,_that.example,_that.mastered);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VocabularyItemDto implements VocabularyItemDto {
  const _VocabularyItemDto({required this.id, required this.word, required this.translation, required this.example, required this.mastered});
  factory _VocabularyItemDto.fromJson(Map<String, dynamic> json) => _$VocabularyItemDtoFromJson(json);

@override final  String id;
@override final  String word;
@override final  String translation;
@override final  String example;
@override final  bool mastered;

/// Create a copy of VocabularyItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VocabularyItemDtoCopyWith<_VocabularyItemDto> get copyWith => __$VocabularyItemDtoCopyWithImpl<_VocabularyItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VocabularyItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VocabularyItemDto&&(identical(other.id, id) || other.id == id)&&(identical(other.word, word) || other.word == word)&&(identical(other.translation, translation) || other.translation == translation)&&(identical(other.example, example) || other.example == example)&&(identical(other.mastered, mastered) || other.mastered == mastered));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,word,translation,example,mastered);

@override
String toString() {
  return 'VocabularyItemDto(id: $id, word: $word, translation: $translation, example: $example, mastered: $mastered)';
}


}

/// @nodoc
abstract mixin class _$VocabularyItemDtoCopyWith<$Res> implements $VocabularyItemDtoCopyWith<$Res> {
  factory _$VocabularyItemDtoCopyWith(_VocabularyItemDto value, $Res Function(_VocabularyItemDto) _then) = __$VocabularyItemDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String word, String translation, String example, bool mastered
});




}
/// @nodoc
class __$VocabularyItemDtoCopyWithImpl<$Res>
    implements _$VocabularyItemDtoCopyWith<$Res> {
  __$VocabularyItemDtoCopyWithImpl(this._self, this._then);

  final _VocabularyItemDto _self;
  final $Res Function(_VocabularyItemDto) _then;

/// Create a copy of VocabularyItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? word = null,Object? translation = null,Object? example = null,Object? mastered = null,}) {
  return _then(_VocabularyItemDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,word: null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String,translation: null == translation ? _self.translation : translation // ignore: cast_nullable_to_non_nullable
as String,example: null == example ? _self.example : example // ignore: cast_nullable_to_non_nullable
as String,mastered: null == mastered ? _self.mastered : mastered // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
