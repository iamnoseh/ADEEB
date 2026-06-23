import 'package:adeeb/app/router/route_names.dart';
import 'package:adeeb/core/widgets/app_async_view.dart';
import 'package:adeeb/core/widgets/module_placeholder.dart';
import 'package:adeeb/features/learning/providers/learning_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LearningScreen extends ConsumerWidget {
  const LearningScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hub = ref.watch(learningHubProvider);

    return AppAsyncView(
      value: hub,
      data: (data) => ModulePlaceholder(
        title: 'Омӯзиш',
        description: 'Маркази омӯзиш барои курсҳо, мавзӯъҳо ва машқҳо.',
        metricLabel: 'Дарсҳои анҷомшуда',
        metricValue: data.completedLessons.toString(),
        progress: data.weeklyGoalPercent / 100,
        actionLabel: 'Ба ММТ',
        actionRoute: RouteNames.mmt,
      ),
    );
  }
}
