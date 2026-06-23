import 'package:adeeb/core/widgets/app_async_view.dart';
import 'package:adeeb/core/widgets/module_placeholder.dart';
import 'package:adeeb/features/league/providers/league_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LeagueScreen extends ConsumerWidget {
  const LeagueScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final standing = ref.watch(leagueStandingProvider);

    return AppAsyncView(
      value: standing,
      data: (data) => ModulePlaceholder(
        title: 'Лига',
        description: '${data.leagueName}: рейтинг ва пешрафти ҳафтаина.',
        metricLabel: 'Ҷой',
        metricValue: '${data.rank} / ${data.totalPlayers}',
        progress: 1 - (data.rank / data.totalPlayers),
      ),
    );
  }
}
