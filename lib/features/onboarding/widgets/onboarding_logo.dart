import 'package:flutter/material.dart';

class OnboardingLogo extends StatelessWidget {
  const OnboardingLogo({
    required this.fade,
    required this.slide,
    required this.height,
    super.key,
  });

  final Animation<double> fade;
  final Animation<Offset> slide;
  final double height;

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: fade,
      child: SlideTransition(
        position: slide,
        child: Image.asset(
          'images/logo_onboarding_clean.png',
          height: height,
          fit: BoxFit.contain,
          filterQuality: FilterQuality.high,
          semanticLabel: 'ADEEB',
        ),
      ),
    );
  }
}
