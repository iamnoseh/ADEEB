import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_dashboard_dto.freezed.dart';
part 'home_dashboard_dto.g.dart';

@freezed
sealed class HomeDashboardDto with _$HomeDashboardDto {
  const factory HomeDashboardDto({
    required String userName,
    required int xp,
    required int jCoin,
    required int level,
    required int streakDays,
    required int todayCompletedMissions,
    required int todayTotalMissions,
    required int mmtProgressPercent,
  }) = _HomeDashboardDto;

  factory HomeDashboardDto.fromJson(Map<String, dynamic> json) =>
      _$HomeDashboardDtoFromJson(json);
}
