import 'package:freezed_annotation/freezed_annotation.dart';

part 'mmt_overview_dto.freezed.dart';
part 'mmt_overview_dto.g.dart';

@freezed
sealed class MmtOverviewDto with _$MmtOverviewDto {
  const factory MmtOverviewDto({
    required int subjects,
    required int solvedQuestions,
    required int readinessPercent,
  }) = _MmtOverviewDto;

  factory MmtOverviewDto.fromJson(Map<String, dynamic> json) =>
      _$MmtOverviewDtoFromJson(json);
}
