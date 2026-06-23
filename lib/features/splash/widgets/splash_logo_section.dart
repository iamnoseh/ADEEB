import 'package:flutter/material.dart';

class SplashLogoSection extends StatelessWidget {
  const SplashLogoSection({
    required this.logoFade,
    required this.logoScale,
    required this.wordmarkFade,
    required this.wordmarkSlide,
    required this.compact,
    super.key,
  });

  final Animation<double> logoFade;
  final Animation<double> logoScale;
  final Animation<double> wordmarkFade;
  final Animation<Offset> wordmarkSlide;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        FadeTransition(
          opacity: logoFade,
          child: ScaleTransition(
            scale: logoScale,
            child: Image.asset(
              'images/logo.png',
              width: compact ? 116 : 140,
              fit: BoxFit.contain,
              filterQuality: FilterQuality.high,
              semanticLabel: 'ADEEB logo',
            ),
          ),
        ),
        SizedBox(height: compact ? 8 : 10),
        FadeTransition(
          opacity: wordmarkFade,
          child: SlideTransition(
            position: wordmarkSlide,
            child: Image.asset(
              'images/adeeb.png',
              width: compact ? 210 : 250,
              fit: BoxFit.contain,
              filterQuality: FilterQuality.high,
              semanticLabel: 'ADEEB wordmark',
            ),
          ),
        ),
      ],
    );
  }
}
