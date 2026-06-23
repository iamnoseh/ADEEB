import 'package:adeeb/features/home/data/demo_home_repository.dart';
import 'package:adeeb/features/home/data/home_repository.dart';
import 'package:adeeb/features/home/models/home_dashboard_dto.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeRepositoryProvider = Provider<HomeRepository>((ref) {
  return DemoHomeRepository();
});

final homeDashboardProvider = FutureProvider<HomeDashboardDto>((ref) {
  return ref.watch(homeRepositoryProvider).getDashboard();
});
