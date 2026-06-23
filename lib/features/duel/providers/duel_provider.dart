import 'package:adeeb/features/duel/data/demo_duel_repository.dart';
import 'package:adeeb/features/duel/data/duel_repository.dart';
import 'package:adeeb/features/duel/models/duel_summary_dto.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final duelRepositoryProvider = Provider<DuelRepository>((ref) {
  return DemoDuelRepository();
});

final duelSummaryProvider = FutureProvider<DuelSummaryDto>((ref) {
  return ref.watch(duelRepositoryProvider).getSummary();
});
