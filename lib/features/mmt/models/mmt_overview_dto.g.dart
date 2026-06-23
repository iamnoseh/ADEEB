// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mmt_overview_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MmtOverviewDto _$MmtOverviewDtoFromJson(Map<String, dynamic> json) =>
    _MmtOverviewDto(
      subjects: (json['subjects'] as num).toInt(),
      solvedQuestions: (json['solvedQuestions'] as num).toInt(),
      readinessPercent: (json['readinessPercent'] as num).toInt(),
    );

Map<String, dynamic> _$MmtOverviewDtoToJson(_MmtOverviewDto instance) =>
    <String, dynamic>{
      'subjects': instance.subjects,
      'solvedQuestions': instance.solvedQuestions,
      'readinessPercent': instance.readinessPercent,
    };
