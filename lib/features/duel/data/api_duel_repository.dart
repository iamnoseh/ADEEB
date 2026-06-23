import 'package:adeeb/core/network/dio_client.dart';
import 'package:adeeb/features/duel/data/duel_repository.dart';
import 'package:adeeb/features/duel/models/duel_summary_dto.dart';

class ApiDuelRepository implements DuelRepository {
  const ApiDuelRepository(this._dioClient);

  final DioClient _dioClient;

  @override
  Future<DuelSummaryDto> getSummary() async {
    final _ = _dioClient;
    throw UnimplementedError('Duel API contract is not connected yet.');
  }
}
