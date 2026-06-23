import 'package:adeeb/app/router/route_names.dart';
import 'package:adeeb/app/theme/app_spacing.dart';
import 'package:adeeb/core/widgets/app_async_view.dart';
import 'package:adeeb/core/widgets/app_button.dart';
import 'package:adeeb/core/widgets/app_card.dart';
import 'package:adeeb/core/widgets/app_progress_bar.dart';
import 'package:adeeb/core/widgets/app_scaffold.dart';
import 'package:adeeb/core/widgets/app_stat_card.dart';
import 'package:adeeb/features/home/providers/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dashboard = ref.watch(homeDashboardProvider);

    return AppScaffold(
      title: 'Асосӣ',
      description: 'Панели кӯтоҳи ADEEB бо маълумоти demo аз repository.',
      actions: [
        IconButton(
          tooltip: 'Танзимот',
          onPressed: () => context.push(RouteNames.settings),
          icon: const Icon(Icons.settings_outlined),
        ),
      ],
      child: AppAsyncView(
        value: dashboard,
        data: (data) => Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Салом, ${data.userName}',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  Text(
                    'Пешрафти ММТ: ${data.mmtProgressPercent}%',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(height: AppSpacing.md),
                  AppProgressBar(value: data.mmtProgressPercent / 100),
                ],
              ),
            ),
            const SizedBox(height: AppSpacing.md),
            AppStatCard(
              label: 'XP',
              value: data.xp.toString(),
              icon: Icons.bolt_outlined,
            ),
            const SizedBox(height: AppSpacing.md),
            AppStatCard(
              label: 'JCoin',
              value: data.jCoin.toString(),
              icon: Icons.monetization_on_outlined,
            ),
            const SizedBox(height: AppSpacing.md),
            AppButton(
              label: 'Миссияҳои рӯзона',
              icon: Icons.flag_outlined,
              onPressed: () => context.push(RouteNames.missions),
            ),
          ],
        ),
      ),
    );
  }
}
