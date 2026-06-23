import 'package:adeeb/core/network/dio_client.dart';
import 'package:adeeb/features/vocabulary/data/vocabulary_repository.dart';
import 'package:adeeb/features/vocabulary/models/vocabulary_item_dto.dart';

class ApiVocabularyRepository implements VocabularyRepository {
  const ApiVocabularyRepository(this._dioClient);

  final DioClient _dioClient;

  @override
  Future<List<VocabularyItemDto>> getVocabulary() async {
    final _ = _dioClient;
    throw UnimplementedError('Vocabulary API contract is not connected yet.');
  }
}
