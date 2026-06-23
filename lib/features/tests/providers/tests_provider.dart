import 'package:adeeb/features/tests/data/demo_tests_repository.dart';
import 'package:adeeb/features/tests/data/tests_repository.dart';
import 'package:adeeb/features/tests/models/test_result_dto.dart';
import 'package:adeeb/features/tests/models/test_summary_dto.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final testsRepositoryProvider = Provider<TestsRepository>((ref) {
  return DemoTestsRepository();
});

final testsProvider = FutureProvider<List<TestSummaryDto>>((ref) {
  return ref.watch(testsRepositoryProvider).getTests();
});

final latestTestResultProvider = FutureProvider<TestResultDto>((ref) {
  return ref.watch(testsRepositoryProvider).getLatestResult();
});
