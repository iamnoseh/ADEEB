import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_summary_dto.freezed.dart';
part 'profile_summary_dto.g.dart';

@freezed
sealed class ProfileSummaryDto with _$ProfileSummaryDto {
  const factory ProfileSummaryDto({
    required String userName,
    required String city,
    required int xp,
    required int jCoin,
    required int level,
    required int streakDays,
  }) = _ProfileSummaryDto;

  factory ProfileSummaryDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileSummaryDtoFromJson(json);
}
