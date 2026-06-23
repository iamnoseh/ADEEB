import 'package:adeeb/app/router/route_names.dart';
import 'package:adeeb/core/widgets/app_async_view.dart';
import 'package:adeeb/core/widgets/module_placeholder.dart';
import 'package:adeeb/features/tests/providers/tests_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TestsScreen extends ConsumerWidget {
  const TestsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tests = ref.watch(testsProvider);

    return AppAsyncView(
      value: tests,
      data: (data) => ModulePlaceholder(
        title: 'Тестҳо',
        description: 'Каталоги demo барои тестҳои фаннӣ ва ММТ.',
        metricLabel: 'Тестҳои дастрас',
        metricValue: data.length.toString(),
        actionLabel: 'Ҳалли тест',
        actionRoute: RouteNames.testSolving,
      ),
    );
  }
}
