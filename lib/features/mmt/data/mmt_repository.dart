import 'package:adeeb/features/mmt/models/mmt_overview_dto.dart';

abstract interface class MmtRepository {
  Future<MmtOverviewDto> getOverview();
}
