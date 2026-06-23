import 'package:adeeb/features/profile/data/demo_profile_repository.dart';
import 'package:adeeb/features/profile/data/profile_repository.dart';
import 'package:adeeb/features/profile/models/profile_summary_dto.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final profileRepositoryProvider = Provider<ProfileRepository>((ref) {
  return DemoProfileRepository();
});

final profileSummaryProvider = FutureProvider<ProfileSummaryDto>((ref) {
  return ref.watch(profileRepositoryProvider).getProfile();
});
