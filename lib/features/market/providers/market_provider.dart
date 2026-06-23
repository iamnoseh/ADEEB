import 'package:adeeb/features/market/data/demo_market_repository.dart';
import 'package:adeeb/features/market/data/market_repository.dart';
import 'package:adeeb/features/market/models/market_item_dto.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final marketRepositoryProvider = Provider<MarketRepository>((ref) {
  return DemoMarketRepository();
});

final marketItemsProvider = FutureProvider<List<MarketItemDto>>((ref) {
  return ref.watch(marketRepositoryProvider).getItems();
});
