import 'package:freezed_annotation/freezed_annotation.dart';

part 'market_item_dto.freezed.dart';
part 'market_item_dto.g.dart';

@freezed
sealed class MarketItemDto with _$MarketItemDto {
  const factory MarketItemDto({
    required String id,
    required String title,
    required int priceJCoin,
    required bool available,
  }) = _MarketItemDto;

  factory MarketItemDto.fromJson(Map<String, dynamic> json) =>
      _$MarketItemDtoFromJson(json);
}
