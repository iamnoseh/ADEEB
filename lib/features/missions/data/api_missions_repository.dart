import 'package:adeeb/core/network/dio_client.dart';
import 'package:adeeb/features/missions/data/missions_repository.dart';
import 'package:adeeb/features/missions/models/mission_dto.dart';

class ApiMissionsRepository implements MissionsRepository {
  const ApiMissionsRepository(this._dioClient);

  final DioClient _dioClient;

  @override
  Future<List<MissionDto>> getMissions() async {
    final _ = _dioClient;
    throw UnimplementedError('Missions API contract is not connected yet.');
  }
}
