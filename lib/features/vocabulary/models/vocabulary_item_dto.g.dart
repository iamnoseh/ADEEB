// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vocabulary_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VocabularyItemDto _$VocabularyItemDtoFromJson(Map<String, dynamic> json) =>
    _VocabularyItemDto(
      id: json['id'] as String,
      word: json['word'] as String,
      translation: json['translation'] as String,
      example: json['example'] as String,
      mastered: json['mastered'] as bool,
    );

Map<String, dynamic> _$VocabularyItemDtoToJson(_VocabularyItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'word': instance.word,
      'translation': instance.translation,
      'example': instance.example,
      'mastered': instance.mastered,
    };
