import 'package:adeeb/features/vocabulary/models/vocabulary_item_dto.dart';

abstract interface class VocabularyRepository {
  Future<List<VocabularyItemDto>> getVocabulary();
}
