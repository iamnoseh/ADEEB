// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mission_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MissionDto _$MissionDtoFromJson(Map<String, dynamic> json) => _MissionDto(
  id: json['id'] as String,
  title: json['title'] as String,
  rewardXp: (json['rewardXp'] as num).toInt(),
  completed: json['completed'] as bool,
);

Map<String, dynamic> _$MissionDtoToJson(_MissionDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'rewardXp': instance.rewardXp,
      'completed': instance.completed,
    };
