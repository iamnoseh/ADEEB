import 'package:adeeb/features/mmt/data/demo_mmt_repository.dart';
import 'package:adeeb/features/mmt/data/mmt_repository.dart';
import 'package:adeeb/features/mmt/models/mmt_overview_dto.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final mmtRepositoryProvider = Provider<MmtRepository>((ref) {
  return DemoMmtRepository();
});

final mmtOverviewProvider = FutureProvider<MmtOverviewDto>((ref) {
  return ref.watch(mmtRepositoryProvider).getOverview();
});
