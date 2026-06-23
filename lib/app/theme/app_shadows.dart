import 'package:adeeb/app/theme/app_colors.dart';
import 'package:flutter/material.dart';

abstract final class AppShadows {
  static const soft = [
    BoxShadow(color: Color(0x1F12100B), offset: Offset(0, 10), blurRadius: 28),
  ];

  static const gold = [
    BoxShadow(color: Color(0x29C99A2E), offset: Offset(0, 12), blurRadius: 32),
  ];

  static BoxDecoration cardDecoration({Color color = AppColors.surface}) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: AppColors.line),
      boxShadow: soft,
    );
  }
}
