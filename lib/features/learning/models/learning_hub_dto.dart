import 'package:freezed_annotation/freezed_annotation.dart';

part 'learning_hub_dto.freezed.dart';
part 'learning_hub_dto.g.dart';

@freezed
sealed class LearningHubDto with _$LearningHubDto {
  const factory LearningHubDto({
    required int activeCourses,
    required int completedLessons,
    required int weeklyGoalPercent,
  }) = _LearningHubDto;

  factory LearningHubDto.fromJson(Map<String, dynamic> json) =>
      _$LearningHubDtoFromJson(json);
}
