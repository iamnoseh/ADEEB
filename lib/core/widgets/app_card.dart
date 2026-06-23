import 'package:adeeb/app/theme/app_colors.dart';
import 'package:adeeb/app/theme/app_radius.dart';
import 'package:adeeb/app/theme/app_shadows.dart';
import 'package:adeeb/app/theme/app_spacing.dart';
import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  const AppCard({
    required this.child,
    this.padding = const EdgeInsets.all(AppSpacing.md),
    this.color = AppColors.surface,
    super.key,
  });

  final Widget child;
  final EdgeInsetsGeometry padding;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(AppRadius.lg),
        border: Border.all(color: AppColors.line),
        boxShadow: AppShadows.soft,
      ),
      child: Padding(padding: padding, child: child),
    );
  }
}
