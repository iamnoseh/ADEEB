import 'package:adeeb/app/router/route_names.dart';
import 'package:adeeb/app/theme/app_colors.dart';
import 'package:adeeb/app/theme/app_spacing.dart';
import 'package:adeeb/core/widgets/app_button.dart';
import 'package:adeeb/core/widgets/app_card.dart';
import 'package:adeeb/core/widgets/app_progress_bar.dart';
import 'package:adeeb/core/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ModulePlaceholder extends StatelessWidget {
  const ModulePlaceholder({
    required this.title,
    required this.description,
    this.progress,
    this.metricLabel,
    this.metricValue,
    this.actionLabel = 'Ба асосӣ',
    this.actionRoute = RouteNames.home,
    super.key,
  });

  final String title;
  final String description;
  final double? progress;
  final String? metricLabel;
  final String? metricValue;
  final String actionLabel;
  final String actionRoute;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: title,
      description: description,
      child: AppCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ADEEB', style: Theme.of(context).textTheme.labelLarge),
            const SizedBox(height: AppSpacing.sm),
            Text(title, style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: AppSpacing.md),
            Text(description, style: Theme.of(context).textTheme.bodyLarge),
            if (metricLabel != null && metricValue != null) ...[
              const SizedBox(height: AppSpacing.lg),
              Text(metricLabel!, style: Theme.of(context).textTheme.labelLarge),
              const SizedBox(height: AppSpacing.xs),
              Text(
                metricValue!,
                style: Theme.of(
                  context,
                ).textTheme.displaySmall?.copyWith(color: AppColors.goldDark),
              ),
            ],
            if (progress != null) ...[
              const SizedBox(height: AppSpacing.lg),
              AppProgressBar(value: progress!),
            ],
            const SizedBox(height: AppSpacing.lg),
            AppButton(
              label: actionLabel,
              icon: Icons.arrow_forward,
              onPressed: () => context.go(actionRoute),
            ),
          ],
        ),
      ),
    );
  }
}
