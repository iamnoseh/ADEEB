import 'package:adeeb/features/home/models/home_dashboard_dto.dart';

abstract interface class HomeRepository {
  Future<HomeDashboardDto> getDashboard();
}
