import 'package:freezed_annotation/freezed_annotation.dart';

part 'duel_summary_dto.freezed.dart';
part 'duel_summary_dto.g.dart';

@freezed
sealed class DuelSummaryDto with _$DuelSummaryDto {
  const factory DuelSummaryDto({
    required int wins,
    required int losses,
    required int rating,
    required String nextOpponentHint,
  }) = _DuelSummaryDto;

  factory DuelSummaryDto.fromJson(Map<String, dynamic> json) =>
      _$DuelSummaryDtoFromJson(json);
}
