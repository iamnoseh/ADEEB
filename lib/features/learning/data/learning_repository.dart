import 'package:adeeb/features/learning/models/learning_hub_dto.dart';

abstract interface class LearningRepository {
  Future<LearningHubDto> getHub();
}
