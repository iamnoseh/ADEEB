import 'package:adeeb/core/widgets/app_async_view.dart';
import 'package:adeeb/core/widgets/module_placeholder.dart';
import 'package:adeeb/features/missions/providers/missions_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MissionsScreen extends ConsumerWidget {
  const MissionsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final missions = ref.watch(missionsProvider);

    return AppAsyncView(
      value: missions,
      data: (data) => ModulePlaceholder(
        title: 'Миссияҳо',
        description: 'Миссияҳои рӯзона барои XP, JCoin ва пешрафт.',
        metricLabel: 'Анҷомшуда',
        metricValue:
            '${data.where((mission) => mission.completed).length} / ${data.length}',
        progress:
            data.where((mission) => mission.completed).length / data.length,
      ),
    );
  }
}
