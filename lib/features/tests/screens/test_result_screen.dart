import 'package:adeeb/core/widgets/app_async_view.dart';
import 'package:adeeb/core/widgets/module_placeholder.dart';
import 'package:adeeb/features/tests/providers/tests_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TestResultScreen extends ConsumerWidget {
  const TestResultScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final result = ref.watch(latestTestResultProvider);

    return AppAsyncView(
      value: result,
      data: (data) => ModulePlaceholder(
        title: 'Натиҷаи тест',
        description: 'Намунаи натиҷа аз demo repository.',
        metricLabel: 'Ҷавобҳои дуруст',
        metricValue: '${data.correctAnswers} / ${data.totalQuestions}',
        progress: data.correctAnswers / data.totalQuestions,
      ),
    );
  }
}
