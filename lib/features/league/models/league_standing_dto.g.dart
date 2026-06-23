// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'league_standing_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LeagueStandingDto _$LeagueStandingDtoFromJson(Map<String, dynamic> json) =>
    _LeagueStandingDto(
      leagueName: json['leagueName'] as String,
      rank: (json['rank'] as num).toInt(),
      totalPlayers: (json['totalPlayers'] as num).toInt(),
      weeklyXp: (json['weeklyXp'] as num).toInt(),
    );

Map<String, dynamic> _$LeagueStandingDtoToJson(_LeagueStandingDto instance) =>
    <String, dynamic>{
      'leagueName': instance.leagueName,
      'rank': instance.rank,
      'totalPlayers': instance.totalPlayers,
      'weeklyXp': instance.weeklyXp,
    };
