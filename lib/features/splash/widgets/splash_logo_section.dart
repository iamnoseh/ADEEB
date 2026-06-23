import 'package:flutter/material.dart';

class SplashLogoSection extends StatelessWidget {
  const SplashLogoSection({
    required this.logoFade,
    required this.logoScale,
    required this.wordmarkFade,
    required this.wordmarkSlide,
    required this.logoWidth,
    required this.wordmarkWidth,
    super.key,
  });

  final Animation<double> logoFade;
  final Animation<double> logoScale;
  final Animation<double> wordmarkFade;
  final Animation<Offset> wordmarkSlide;
  final double logoWidth;
  final double wordmarkWidth;

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
              width: logoWidth,
              fit: BoxFit.contain,
              filterQuality: FilterQuality.high,
              semanticLabel: 'ADEEB logo',
            ),
          ),
        ),
        const SizedBox(height: 8),
        FadeTransition(
          opacity: wordmarkFade,
          child: SlideTransition(
            position: wordmarkSlide,
            child: Image.asset(
              'images/adeeb.png',
              width: wordmarkWidth,
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
