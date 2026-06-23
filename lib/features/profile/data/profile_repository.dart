import 'package:adeeb/features/profile/models/profile_summary_dto.dart';

abstract interface class ProfileRepository {
  Future<ProfileSummaryDto> getProfile();
}
