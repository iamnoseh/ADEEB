import 'package:adeeb/features/league/models/league_standing_dto.dart';

abstract interface class LeagueRepository {
  Future<LeagueStandingDto> getStanding();
}
