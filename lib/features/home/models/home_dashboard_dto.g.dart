// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_dashboard_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeDashboardDto _$HomeDashboardDtoFromJson(Map<String, dynamic> json) =>
    _HomeDashboardDto(
      userName: json['userName'] as String,
      xp: (json['xp'] as num).toInt(),
      jCoin: (json['jCoin'] as num).toInt(),
      level: (json['level'] as num).toInt(),
      streakDays: (json['streakDays'] as num).toInt(),
      todayCompletedMissions: (json['todayCompletedMissions'] as num).toInt(),
      todayTotalMissions: (json['todayTotalMissions'] as num).toInt(),
      mmtProgressPercent: (json['mmtProgressPercent'] as num).toInt(),
    );

Map<String, dynamic> _$HomeDashboardDtoToJson(_HomeDashboardDto instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'xp': instance.xp,
      'jCoin': instance.jCoin,
      'level': instance.level,
      'streakDays': instance.streakDays,
      'todayCompletedMissions': instance.todayCompletedMissions,
      'todayTotalMissions': instance.todayTotalMissions,
      'mmtProgressPercent': instance.mmtProgressPercent,
    };
