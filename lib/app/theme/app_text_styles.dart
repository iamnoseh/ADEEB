import 'package:adeeb/app/theme/app_colors.dart';
import 'package:flutter/material.dart';

abstract final class AppTextStyles {
  static const display = TextStyle(
    fontSize: 32,
    height: 1.1,
    fontWeight: FontWeight.w800,
    color: AppColors.ink,
  );

  static const title = TextStyle(
    fontSize: 22,
    height: 1.2,
    fontWeight: FontWeight.w700,
    color: AppColors.ink,
  );

  static const subtitle = TextStyle(
    fontSize: 16,
    height: 1.45,
    fontWeight: FontWeight.w500,
    color: AppColors.muted,
  );

  static const body = TextStyle(
    fontSize: 14,
    height: 1.45,
    fontWeight: FontWeight.w500,
    color: AppColors.charcoal,
  );

  static const label = TextStyle(
    fontSize: 13,
    height: 1.2,
    fontWeight: FontWeight.w700,
    color: AppColors.ink,
  );
}
