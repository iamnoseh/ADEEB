import 'package:adeeb/core/widgets/app_async_view.dart';
import 'package:adeeb/core/widgets/module_placeholder.dart';
import 'package:adeeb/features/vocabulary/providers/vocabulary_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VocabularyScreen extends ConsumerWidget {
  const VocabularyScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vocabulary = ref.watch(vocabularyProvider);

    return AppAsyncView(
      value: vocabulary,
      data: (data) => ModulePlaceholder(
        title: 'Луғат',
        description: 'Ҷойи омода барои калимаҳо, мисолҳо ва такрори фосилавӣ.',
        metricLabel: 'Калимаҳои demo',
        metricValue: data.length.toString(),
        progress: data.where((item) => item.mastered).length / data.length,
      ),
    );
  }
}
