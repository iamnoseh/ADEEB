import 'package:adeeb/features/vocabulary/data/demo_vocabulary_repository.dart';
import 'package:adeeb/features/vocabulary/data/vocabulary_repository.dart';
import 'package:adeeb/features/vocabulary/models/vocabulary_item_dto.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final vocabularyRepositoryProvider = Provider<VocabularyRepository>((ref) {
  return DemoVocabularyRepository();
});

final vocabularyProvider = FutureProvider<List<VocabularyItemDto>>((ref) {
  return ref.watch(vocabularyRepositoryProvider).getVocabulary();
});
