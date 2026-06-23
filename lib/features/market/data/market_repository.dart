import 'package:adeeb/features/market/models/market_item_dto.dart';

abstract interface class MarketRepository {
  Future<List<MarketItemDto>> getItems();
}
