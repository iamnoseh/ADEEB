import 'package:adeeb/features/missions/data/demo_missions_repository.dart';
import 'package:adeeb/features/missions/data/missions_repository.dart';
import 'package:adeeb/features/missions/models/mission_dto.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final missionsRepositoryProvider = Provider<MissionsRepository>((ref) {
  return DemoMissionsRepository();
});

final missionsProvider = FutureProvider<List<MissionDto>>((ref) {
  return ref.watch(missionsRepositoryProvider).getMissions();
});
