import 'package:adeeb/core/widgets/app_async_view.dart';
import 'package:adeeb/core/widgets/module_placeholder.dart';
import 'package:adeeb/features/duel/providers/duel_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DuelScreen extends ConsumerWidget {
  const DuelScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final summary = ref.watch(duelSummaryProvider);

    return AppAsyncView(
      value: summary,
      data: (data) => ModulePlaceholder(
        title: 'Дуэл',
        description: 'Ҷойи омода барои рақобати донишҷӯён бе realtime logic.',
        metricLabel: 'Рейтинг',
        metricValue: data.rating.toString(),
        progress: data.wins / (data.wins + data.losses),
      ),
    );
  }
}
