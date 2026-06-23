import 'package:freezed_annotation/freezed_annotation.dart';

part 'mission_dto.freezed.dart';
part 'mission_dto.g.dart';

@freezed
sealed class MissionDto with _$MissionDto {
  const factory MissionDto({
    required String id,
    required String title,
    required int rewardXp,
    required bool completed,
  }) = _MissionDto;

  factory MissionDto.fromJson(Map<String, dynamic> json) =>
      _$MissionDtoFromJson(json);
}
