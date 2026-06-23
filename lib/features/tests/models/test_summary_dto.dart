import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_summary_dto.freezed.dart';
part 'test_summary_dto.g.dart';

@freezed
sealed class TestSummaryDto with _$TestSummaryDto {
  const factory TestSummaryDto({
    required String id,
    required String title,
    required int questionCount,
    required int bestScorePercent,
  }) = _TestSummaryDto;

  factory TestSummaryDto.fromJson(Map<String, dynamic> json) =>
      _$TestSummaryDtoFromJson(json);
}
