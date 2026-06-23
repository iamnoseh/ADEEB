import 'dart:math' as math;

import 'package:adeeb/app/theme/app_colors.dart';
import 'package:adeeb/app/theme/app_radius.dart';
import 'package:adeeb/app/theme/app_shadows.dart';
import 'package:flutter/material.dart';

class OnboardingFloatingIcon extends StatelessWidget {
  const OnboardingFloatingIcon({
    required this.imagePath,
    required this.entrance,
    required this.floatController,
    required this.alignment,
    required this.amplitude,
    required this.rotationTurns,
    required this.size,
    super.key,
  });

  final String imagePath;
  final Animation<double> entrance;
  final Animation<double> floatController;
  final Alignment alignment;
  final double amplitude;
  final double rotationTurns;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: AnimatedBuilder(
        animation: Listenable.merge([entrance, floatController]),
        builder: (context, child) {
          final wave = math.sin(floatController.value * math.pi * 2);
          return Opacity(
            opacity: entrance.value.clamp(0, 1),
            child: Transform.translate(
              offset: Offset(0, wave * amplitude),
              child: Transform.rotate(
                angle: wave * rotationTurns * math.pi * 2,
                child: Transform.scale(
                  scale: 0.85 + (0.15 * entrance.value),
                  child: child,
                ),
              ),
            ),
          );
        },
        child: Container(
          width: size,
          height: size,
          padding: const EdgeInsets.all(9),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.88),
            borderRadius: BorderRadius.circular(AppRadius.lg),
            border: Border.all(color: AppColors.gold.withValues(alpha: 0.34)),
            boxShadow: AppShadows.gold,
          ),
          child: Image.asset(
            imagePath,
            fit: BoxFit.contain,
            filterQuality: FilterQuality.high,
          ),
        ),
      ),
    );
  }
}
