import 'package:adeeb/core/network/dio_client.dart';
import 'package:adeeb/features/mmt/data/mmt_repository.dart';
import 'package:adeeb/features/mmt/models/mmt_overview_dto.dart';

class ApiMmtRepository implements MmtRepository {
  const ApiMmtRepository(this._dioClient);

  final DioClient _dioClient;

  @override
  Future<MmtOverviewDto> getOverview() async {
    final _ = _dioClient;
    throw UnimplementedError('MMT API contract is not connected yet.');
  }
}
