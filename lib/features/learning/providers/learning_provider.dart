import 'package:adeeb/features/learning/data/demo_learning_repository.dart';
import 'package:adeeb/features/learning/data/learning_repository.dart';
import 'package:adeeb/features/learning/models/learning_hub_dto.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final learningRepositoryProvider = Provider<LearningRepository>((ref) {
  return DemoLearningRepository();
});

final learningHubProvider = FutureProvider<LearningHubDto>((ref) {
  return ref.watch(learningRepositoryProvider).getHub();
});
