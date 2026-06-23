import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_result_dto.freezed.dart';
part 'test_result_dto.g.dart';

@freezed
sealed class TestResultDto with _$TestResultDto {
  const factory TestResultDto({
    required String testId,
    required int correctAnswers,
    required int totalQuestions,
    required int earnedXp,
  }) = _TestResultDto;

  factory TestResultDto.fromJson(Map<String, dynamic> json) =>
      _$TestResultDtoFromJson(json);
}
