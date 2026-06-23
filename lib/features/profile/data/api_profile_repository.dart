import 'package:adeeb/core/network/dio_client.dart';
import 'package:adeeb/features/profile/data/profile_repository.dart';
import 'package:adeeb/features/profile/models/profile_summary_dto.dart';

class ApiProfileRepository implements ProfileRepository {
  const ApiProfileRepository(this._dioClient);

  final DioClient _dioClient;

  @override
  Future<ProfileSummaryDto> getProfile() async {
    final _ = _dioClient;
    throw UnimplementedError('Profile API contract is not connected yet.');
  }
}
