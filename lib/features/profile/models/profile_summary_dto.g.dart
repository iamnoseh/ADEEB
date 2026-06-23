// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_summary_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileSummaryDto _$ProfileSummaryDtoFromJson(Map<String, dynamic> json) =>
    _ProfileSummaryDto(
      userName: json['userName'] as String,
      city: json['city'] as String,
      xp: (json['xp'] as num).toInt(),
      jCoin: (json['jCoin'] as num).toInt(),
      level: (json['level'] as num).toInt(),
      streakDays: (json['streakDays'] as num).toInt(),
    );

Map<String, dynamic> _$ProfileSummaryDtoToJson(_ProfileSummaryDto instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'city': instance.city,
      'xp': instance.xp,
      'jCoin': instance.jCoin,
      'level': instance.level,
      'streakDays': instance.streakDays,
    };
