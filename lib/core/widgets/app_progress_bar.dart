import 'package:adeeb/app/theme/app_colors.dart';
import 'package:adeeb/app/theme/app_radius.dart';
import 'package:flutter/material.dart';

class AppProgressBar extends StatelessWidget {
  const AppProgressBar({required this.value, super.key});

  final double value;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppRadius.pill),
      child: LinearProgressIndicator(
        minHeight: 10,
        value: value.clamp(0, 1),
        backgroundColor: AppColors.goldSoft,
        color: AppColors.gold,
      ),
    );
  }
}
