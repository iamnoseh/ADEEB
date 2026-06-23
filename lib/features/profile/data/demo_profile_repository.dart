import 'package:adeeb/features/profile/data/profile_repository.dart';
import 'package:adeeb/features/profile/models/profile_summary_dto.dart';

class DemoProfileRepository implements ProfileRepository {
  @override
  Future<ProfileSummaryDto> getProfile() async {
    await Future<void>.delayed(const Duration(milliseconds: 240));
    return const ProfileSummaryDto(
      userName: 'Носеҳ',
      city: 'Душанбе',
      xp: 120,
      jCoin: 45,
      level: 3,
      streakDays: 7,
    );
  }
}
