import 'package:adeeb/app/router/route_names.dart';
import 'package:adeeb/core/widgets/app_async_view.dart';
import 'package:adeeb/core/widgets/module_placeholder.dart';
import 'package:adeeb/features/mmt/providers/mmt_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MmtScreen extends ConsumerWidget {
  const MmtScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final overview = ref.watch(mmtOverviewProvider);

    return AppAsyncView(
      value: overview,
      data: (data) => ModulePlaceholder(
        title: 'Тайёрӣ ба ММТ',
        description: 'Ҷойи омода барои фанҳо, тестҳо ва таҳлили натиҷаҳо.',
        metricLabel: 'Саволҳои ҳалшуда',
        metricValue: data.solvedQuestions.toString(),
        progress: data.readinessPercent / 100,
        actionLabel: 'Ба тестҳо',
        actionRoute: RouteNames.tests,
      ),
    );
  }
}
