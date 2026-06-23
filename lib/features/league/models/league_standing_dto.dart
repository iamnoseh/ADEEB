import 'package:freezed_annotation/freezed_annotation.dart';

part 'league_standing_dto.freezed.dart';
part 'league_standing_dto.g.dart';

@freezed
sealed class LeagueStandingDto with _$LeagueStandingDto {
  const factory LeagueStandingDto({
    required String leagueName,
    required int rank,
    required int totalPlayers,
    required int weeklyXp,
  }) = _LeagueStandingDto;

  factory LeagueStandingDto.fromJson(Map<String, dynamic> json) =>
      _$LeagueStandingDtoFromJson(json);
}
