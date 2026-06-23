import 'package:adeeb/app/router/route_names.dart';
import 'package:adeeb/core/widgets/app_async_view.dart';
import 'package:adeeb/core/widgets/module_placeholder.dart';
import 'package:adeeb/features/profile/providers/profile_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(profileSummaryProvider);

    return AppAsyncView(
      value: profile,
      data: (data) => ModulePlaceholder(
        title: 'Профил',
        description: '${data.userName}, ${data.city}: сатҳ ва пешрафти demo.',
        metricLabel: 'Сатҳ',
        metricValue: data.level.toString(),
        progress: data.xp / 200,
        actionLabel: 'Танзимот',
        actionRoute: RouteNames.settings,
      ),
    );
  }
}
