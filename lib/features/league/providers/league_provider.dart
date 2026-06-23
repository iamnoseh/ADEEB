import 'package:adeeb/features/league/data/demo_league_repository.dart';
import 'package:adeeb/features/league/data/league_repository.dart';
import 'package:adeeb/features/league/models/league_standing_dto.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final leagueRepositoryProvider = Provider<LeagueRepository>((ref) {
  return DemoLeagueRepository();
});

final leagueStandingProvider = FutureProvider<LeagueStandingDto>((ref) {
  return ref.watch(leagueRepositoryProvider).getStanding();
});
