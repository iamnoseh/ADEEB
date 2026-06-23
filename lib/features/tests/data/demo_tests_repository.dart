import 'package:adeeb/features/tests/data/tests_repository.dart';
import 'package:adeeb/features/tests/models/test_result_dto.dart';
import 'package:adeeb/features/tests/models/test_summary_dto.dart';

class DemoTestsRepository implements TestsRepository {
  @override
  Future<List<TestSummaryDto>> getTests() async {
    await Future<void>.delayed(const Duration(milliseconds: 260));
    return const [
      TestSummaryDto(
        id: 'math-basic',
        title: 'Математика',
        questionCount: 25,
        bestScorePercent: 76,
      ),
      TestSummaryDto(
        id: 'history-basic',
        title: 'Таърих',
        questionCount: 20,
        bestScorePercent: 68,
      ),
    ];
  }

  @override
  Future<TestResultDto> getLatestResult() async {
    await Future<void>.delayed(const Duration(milliseconds: 220));
    return const TestResultDto(
      testId: 'math-basic',
      correctAnswers: 19,
      totalQuestions: 25,
      earnedXp: 38,
    );
  }
}
