import 'package:adeeb/features/learning/data/learning_repository.dart';
import 'package:adeeb/features/learning/models/learning_hub_dto.dart';

class DemoLearningRepository implements LearningRepository {
  @override
  Future<LearningHubDto> getHub() async {
    await Future<void>.delayed(const Duration(milliseconds: 260));
    return const LearningHubDto(
      activeCourses: 4,
      completedLessons: 18,
      weeklyGoalPercent: 58,
    );
  }
}
