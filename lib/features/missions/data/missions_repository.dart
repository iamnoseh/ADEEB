import 'package:adeeb/features/missions/models/mission_dto.dart';

abstract interface class MissionsRepository {
  Future<List<MissionDto>> getMissions();
}
