import 'package:adeeb/features/tests/models/test_result_dto.dart';
import 'package:adeeb/features/tests/models/test_summary_dto.dart';

abstract interface class TestsRepository {
  Future<List<TestSummaryDto>> getTests();
  Future<TestResultDto> getLatestResult();
}
