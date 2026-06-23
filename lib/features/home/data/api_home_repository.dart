import 'package:adeeb/core/network/dio_client.dart';
import 'package:adeeb/features/home/data/home_repository.dart';
import 'package:adeeb/features/home/models/home_dashboard_dto.dart';

class ApiHomeRepository implements HomeRepository {
  const ApiHomeRepository(this._dioClient);

  final DioClient _dioClient;

  @override
  Future<HomeDashboardDto> getDashboard() async {
    final _ = _dioClient;
    throw UnimplementedError('Home API contract is not connected yet.');
  }
}
