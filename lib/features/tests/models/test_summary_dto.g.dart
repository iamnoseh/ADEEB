// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_summary_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TestSummaryDto _$TestSummaryDtoFromJson(Map<String, dynamic> json) =>
    _TestSummaryDto(
      id: json['id'] as String,
      title: json['title'] as String,
      questionCount: (json['questionCount'] as num).toInt(),
      bestScorePercent: (json['bestScorePercent'] as num).toInt(),
    );

Map<String, dynamic> _$TestSummaryDtoToJson(_TestSummaryDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'questionCount': instance.questionCount,
      'bestScorePercent': instance.bestScorePercent,
    };
