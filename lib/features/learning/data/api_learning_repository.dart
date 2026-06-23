import 'package:adeeb/core/network/dio_client.dart';
import 'package:adeeb/features/learning/data/learning_repository.dart';
import 'package:adeeb/features/learning/models/learning_hub_dto.dart';

class ApiLearningRepository implements LearningRepository {
  const ApiLearningRepository(this._dioClient);

  final DioClient _dioClient;

  @override
  Future<LearningHubDto> getHub() async {
    final _ = _dioClient;
    throw UnimplementedError('Learning API contract is not connected yet.');
  }
}
