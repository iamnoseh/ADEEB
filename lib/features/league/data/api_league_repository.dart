import 'package:adeeb/core/network/dio_client.dart';
import 'package:adeeb/features/league/data/league_repository.dart';
import 'package:adeeb/features/league/models/league_standing_dto.dart';

class ApiLeagueRepository implements LeagueRepository {
  const ApiLeagueRepository(this._dioClient);

  final DioClient _dioClient;

  @override
  Future<LeagueStandingDto> getStanding() async {
    final _ = _dioClient;
    throw UnimplementedError('League API contract is not connected yet.');
  }
}
