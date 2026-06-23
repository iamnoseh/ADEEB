import 'package:adeeb/features/duel/data/duel_repository.dart';
import 'package:adeeb/features/duel/models/duel_summary_dto.dart';

class DemoDuelRepository implements DuelRepository {
  @override
  Future<DuelSummaryDto> getSummary() async {
    await Future<void>.delayed(const Duration(milliseconds: 240));
    return const DuelSummaryDto(
      wins: 8,
      losses: 3,
      rating: 1240,
      nextOpponentHint: 'Ҳамсабақи наздик ба сатҳи шумо',
    );
  }
}
