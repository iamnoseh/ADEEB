import 'package:adeeb/app/theme/app_colors.dart';
import 'package:adeeb/app/theme/app_spacing.dart';
import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    required this.title,
    required this.child,
    this.description,
    this.actions,
    super.key,
  });

  final String title;
  final String? description;
  final Widget child;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title), actions: actions),
      body: DecoratedBox(
        decoration: const BoxDecoration(gradient: AppColors.premiumGradient),
        child: SafeArea(
          top: false,
          child: ListView(
            padding: const EdgeInsets.all(AppSpacing.lg),
            children: [
              if (description != null) ...[
                Text(
                  description!,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: AppColors.muted,
                    height: 1.45,
                  ),
                ),
                const SizedBox(height: AppSpacing.lg),
              ],
              child,
            ],
          ),
        ),
      ),
    );
  }
}
