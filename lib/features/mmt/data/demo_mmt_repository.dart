import 'package:adeeb/features/mmt/data/mmt_repository.dart';
import 'package:adeeb/features/mmt/models/mmt_overview_dto.dart';

class DemoMmtRepository implements MmtRepository {
  @override
  Future<MmtOverviewDto> getOverview() async {
    await Future<void>.delayed(const Duration(milliseconds: 240));
    return const MmtOverviewDto(
      subjects: 5,
      solvedQuestions: 430,
      readinessPercent: 62,
    );
  }
}
