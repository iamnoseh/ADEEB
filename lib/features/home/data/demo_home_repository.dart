import 'package:adeeb/features/home/data/home_repository.dart';
import 'package:adeeb/features/home/models/home_dashboard_dto.dart';

class DemoHomeRepository implements HomeRepository {
  @override
  Future<HomeDashboardDto> getDashboard() async {
    await Future<void>.delayed(const Duration(milliseconds: 300));
    return const HomeDashboardDto(
      userName: 'Носеҳ',
      xp: 120,
      jCoin: 45,
      level: 3,
      streakDays: 7,
      todayCompletedMissions: 2,
      todayTotalMissions: 5,
      mmtProgressPercent: 62,
    );
  }
}
