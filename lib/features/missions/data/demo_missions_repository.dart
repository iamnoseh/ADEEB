import 'package:adeeb/features/missions/data/missions_repository.dart';
import 'package:adeeb/features/missions/models/mission_dto.dart';

class DemoMissionsRepository implements MissionsRepository {
  @override
  Future<List<MissionDto>> getMissions() async {
    await Future<void>.delayed(const Duration(milliseconds: 250));
    return const [
      MissionDto(
        id: 'mission-1',
        title: '10 саволи ММТ ҳал кун',
        rewardXp: 20,
        completed: true,
      ),
      MissionDto(
        id: 'mission-2',
        title: '5 калимаи нав омӯз',
        rewardXp: 15,
        completed: false,
      ),
    ];
  }
}
