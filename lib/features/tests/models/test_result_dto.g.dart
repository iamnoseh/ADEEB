// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_result_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TestResultDto _$TestResultDtoFromJson(Map<String, dynamic> json) =>
    _TestResultDto(
      testId: json['testId'] as String,
      correctAnswers: (json['correctAnswers'] as num).toInt(),
      totalQuestions: (json['totalQuestions'] as num).toInt(),
      earnedXp: (json['earnedXp'] as num).toInt(),
    );

Map<String, dynamic> _$TestResultDtoToJson(_TestResultDto instance) =>
    <String, dynamic>{
      'testId': instance.testId,
      'correctAnswers': instance.correctAnswers,
      'totalQuestions': instance.totalQuestions,
      'earnedXp': instance.earnedXp,
    };
