import 'package:flutter/material.dart';

abstract final class AppColors {
  static const ink = Color(0xFF12100B);
  static const charcoal = Color(0xFF26221A);
  static const gold = Color(0xFFC99A2E);
  static const goldDark = Color(0xFF9D7218);
  static const goldSoft = Color(0xFFFFF4D6);
  static const ivory = Color(0xFFFFFCF6);
  static const surface = Color(0xFFFFFFFF);
  static const surfaceWarm = Color(0xFFFFFAEF);
  static const line = Color(0xFFE9E0CE);
  static const muted = Color(0xFF746B5D);
  static const success = Color(0xFF24845B);
  static const danger = Color(0xFFC64545);

  static const premiumGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFFFFBF0), Color(0xFFFFE8A6), Color(0xFFFFFFFF)],
  );
}
