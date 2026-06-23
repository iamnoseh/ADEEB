import 'package:adeeb/core/network/dio_client.dart';
import 'package:adeeb/features/tests/data/tests_repository.dart';
import 'package:adeeb/features/tests/models/test_result_dto.dart';
import 'package:adeeb/features/tests/models/test_summary_dto.dart';

class ApiTestsRepository implements TestsRepository {
  const ApiTestsRepository(this._dioClient);

  final DioClient _dioClient;

  @override
  Future<TestResultDto> getLatestResult() async {
    final _ = _dioClient;
    throw UnimplementedError('Tests API contract is not connected yet.');
  }

  @override
  Future<List<TestSummaryDto>> getTests() async {
    final _ = _dioClient;
    throw UnimplementedError('Tests API contract is not connected yet.');
  }
}
