import 'package:adeeb/features/league/data/league_repository.dart';
import 'package:adeeb/features/league/models/league_standing_dto.dart';

class DemoLeagueRepository implements LeagueRepository {
  @override
  Future<LeagueStandingDto> getStanding() async {
    await Future<void>.delayed(const Duration(milliseconds: 230));
    return const LeagueStandingDto(
      leagueName: 'Лигаи тиллоӣ',
      rank: 12,
      totalPlayers: 250,
      weeklyXp: 840,
    );
  }
}
