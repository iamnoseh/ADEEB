import 'package:adeeb/features/vocabulary/data/vocabulary_repository.dart';
import 'package:adeeb/features/vocabulary/models/vocabulary_item_dto.dart';

class DemoVocabularyRepository implements VocabularyRepository {
  @override
  Future<List<VocabularyItemDto>> getVocabulary() async {
    await Future<void>.delayed(const Duration(milliseconds: 220));
    return const [
      VocabularyItemDto(
        id: 'vocab-1',
        word: 'дониш',
        translation: 'knowledge',
        example: 'Дониш қувва аст.',
        mastered: true,
      ),
      VocabularyItemDto(
        id: 'vocab-2',
        word: 'омӯзиш',
        translation: 'learning',
        example: 'Омӯзиш ҳар рӯз идома дорад.',
        mastered: false,
      ),
    ];
  }
}
