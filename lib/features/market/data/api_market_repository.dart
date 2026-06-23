import 'package:adeeb/core/network/dio_client.dart';
import 'package:adeeb/features/market/data/market_repository.dart';
import 'package:adeeb/features/market/models/market_item_dto.dart';

class ApiMarketRepository implements MarketRepository {
  const ApiMarketRepository(this._dioClient);

  final DioClient _dioClient;

  @override
  Future<List<MarketItemDto>> getItems() async {
    final _ = _dioClient;
    throw UnimplementedError('Market API contract is not connected yet.');
  }
}
