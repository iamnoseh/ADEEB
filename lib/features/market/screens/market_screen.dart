import 'package:adeeb/core/widgets/app_async_view.dart';
import 'package:adeeb/core/widgets/module_placeholder.dart';
import 'package:adeeb/features/market/providers/market_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MarketScreen extends ConsumerWidget {
  const MarketScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(marketItemsProvider);

    return AppAsyncView(
      value: items,
      data: (data) => ModulePlaceholder(
        title: 'Маркет',
        description:
            'Ҷойи омода барои мукофотҳо бе redemption ё payment logic.',
        metricLabel: 'Маҳсулот',
        metricValue: data.length.toString(),
        progress: data.where((item) => item.available).length / data.length,
      ),
    );
  }
}
