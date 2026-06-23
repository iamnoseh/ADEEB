import 'package:adeeb/features/market/data/market_repository.dart';
import 'package:adeeb/features/market/models/market_item_dto.dart';

class DemoMarketRepository implements MarketRepository {
  @override
  Future<List<MarketItemDto>> getItems() async {
    await Future<void>.delayed(const Duration(milliseconds: 250));
    return const [
      MarketItemDto(
        id: 'market-1',
        title: 'Нишони тиллоӣ',
        priceJCoin: 80,
        available: true,
      ),
      MarketItemDto(
        id: 'market-2',
        title: 'Қуттии бонус',
        priceJCoin: 120,
        available: false,
      ),
    ];
  }
}
