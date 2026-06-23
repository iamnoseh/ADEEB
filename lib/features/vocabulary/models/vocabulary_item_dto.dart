import 'package:freezed_annotation/freezed_annotation.dart';

part 'vocabulary_item_dto.freezed.dart';
part 'vocabulary_item_dto.g.dart';

@freezed
sealed class VocabularyItemDto with _$VocabularyItemDto {
  const factory VocabularyItemDto({
    required String id,
    required String word,
    required String translation,
    required String example,
    required bool mastered,
  }) = _VocabularyItemDto;

  factory VocabularyItemDto.fromJson(Map<String, dynamic> json) =>
      _$VocabularyItemDtoFromJson(json);
}
