// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'learning_hub_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LearningHubDto _$LearningHubDtoFromJson(Map<String, dynamic> json) =>
    _LearningHubDto(
      activeCourses: (json['activeCourses'] as num).toInt(),
      completedLessons: (json['completedLessons'] as num).toInt(),
      weeklyGoalPercent: (json['weeklyGoalPercent'] as num).toInt(),
    );

Map<String, dynamic> _$LearningHubDtoToJson(_LearningHubDto instance) =>
    <String, dynamic>{
      'activeCourses': instance.activeCourses,
      'completedLessons': instance.completedLessons,
      'weeklyGoalPercent': instance.weeklyGoalPercent,
    };
