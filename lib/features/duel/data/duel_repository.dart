import 'package:adeeb/features/duel/models/duel_summary_dto.dart';

abstract interface class DuelRepository {
  Future<DuelSummaryDto> getSummary();
}
