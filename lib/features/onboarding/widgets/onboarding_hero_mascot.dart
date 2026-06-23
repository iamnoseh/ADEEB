import 'dart:math' as math;

import 'package:flutter/material.dart';

class OnboardingHeroMascot extends StatelessWidget {
  const OnboardingHeroMascot({
    required this.fade,
    required this.slide,
    required this.scale,
    required this.floatController,
    super.key,
  });

  final Animation<double> fade;
  final Animation<Offset> slide;
  final Animation<double> scale;
  final Animation<double> floatController;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: floatController,
      builder: (context, child) {
        final dy = math.sin(floatController.value * math.pi) * -4;
        return Transform.translate(offset: Offset(0, dy), child: child);
      },
      child: FadeTransition(
        opacity: fade,
        child: SlideTransition(
          position: slide,
          child: ScaleTransition(
            scale: scale,
            child: Image.asset(
              'images/1.png',
              height: double.infinity,
              fit: BoxFit.contain,
              filterQuality: FilterQuality.high,
              semanticLabel: 'ADEEB mascot',
            ),
          ),
        ),
      ),
    );
  }
}
