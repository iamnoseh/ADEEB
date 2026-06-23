import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_progress_dto.freezed.dart';
part 'user_progress_dto.g.dart';

@freezed
sealed class UserProgressDto with _$UserProgressDto {
  const factory UserProgressDto({
    required int xp,
    required int jCoin,
    required int level,
    required int streakDays,
  }) = _UserProgressDto;

  factory UserProgressDto.fromJson(Map<String, dynamic> json) =>
      _$UserProgressDtoFromJson(json);
}
