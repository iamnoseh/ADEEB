// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MarketItemDto _$MarketItemDtoFromJson(Map<String, dynamic> json) =>
    _MarketItemDto(
      id: json['id'] as String,
      title: json['title'] as String,
      priceJCoin: (json['priceJCoin'] as num).toInt(),
      available: json['available'] as bool,
    );

Map<String, dynamic> _$MarketItemDtoToJson(_MarketItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'priceJCoin': instance.priceJCoin,
      'available': instance.available,
    };
