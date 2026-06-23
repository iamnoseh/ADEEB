import 'dart:math' as math;

import 'package:adeeb/app/theme/app_radius.dart';
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
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFFFFFBEC), Color(0xFFFFE5A2), Color(0xFFD7A334)],
              stops: [0, 0.64, 1],
            ),
            borderRadius: BorderRadius.circular(AppRadius.lg + 4),
            border: Border.all(color: Colors.white, width: 1.4),
            boxShadow: const [
              BoxShadow(
                color: Color(0x33A87300),
                blurRadius: 24,
                offset: Offset(0, 14),
              ),
              BoxShadow(
                color: Color(0x55FFFFFF),
                blurRadius: 10,
                offset: Offset(-3, -3),
              ),
            ],
          ),
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppRadius.lg),
              gradient: RadialGradient(
                center: const Alignment(-0.28, -0.34),
                radius: 0.95,
                colors: [
                  Colors.white.withValues(alpha: 0.96),
                  const Color(0xFFFFF0B8),
                  const Color(0xFFE1AD36),
                ],
                stops: const [0, 0.66, 1],
              ),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x33FFFFFF),
                  blurRadius: 7,
                  offset: Offset(-2, -2),
                ),
                BoxShadow(
                  color: Color(0x229D7218),
                  blurRadius: 8,
                  offset: Offset(2, 3),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(6),
              child: Image.asset(
                imagePath,
                fit: BoxFit.contain,
                filterQuality: FilterQuality.high,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
