// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_progress_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserProgressDto _$UserProgressDtoFromJson(Map<String, dynamic> json) =>
    _UserProgressDto(
      xp: (json['xp'] as num).toInt(),
      jCoin: (json['jCoin'] as num).toInt(),
      level: (json['level'] as num).toInt(),
      streakDays: (json['streakDays'] as num).toInt(),
    );

Map<String, dynamic> _$UserProgressDtoToJson(_UserProgressDto instance) =>
    <String, dynamic>{
      'xp': instance.xp,
      'jCoin': instance.jCoin,
      'level': instance.level,
      'streakDays': instance.streakDays,
    };
