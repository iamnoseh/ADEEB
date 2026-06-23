// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'duel_summary_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DuelSummaryDto _$DuelSummaryDtoFromJson(Map<String, dynamic> json) =>
    _DuelSummaryDto(
      wins: (json['wins'] as num).toInt(),
      losses: (json['losses'] as num).toInt(),
      rating: (json['rating'] as num).toInt(),
      nextOpponentHint: json['nextOpponentHint'] as String,
    );

Map<String, dynamic> _$DuelSummaryDtoToJson(_DuelSummaryDto instance) =>
    <String, dynamic>{
      'wins': instance.wins,
      'losses': instance.losses,
      'rating': instance.rating,
      'nextOpponentHint': instance.nextOpponentHint,
    };
