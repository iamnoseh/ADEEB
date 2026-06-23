import 'package:flutter/material.dart';

class SplashMascot extends StatelessWidget {
  const SplashMascot({
    required this.fade,
    required this.slide,
    required this.scale,
    required this.compact,
    super.key,
  });

  final Animation<double> fade;
  final Animation<Offset> slide;
  final Animation<double> scale;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: fade,
      child: SlideTransition(
        position: slide,
        child: ScaleTransition(
          scale: scale,
          child: Image.asset(
            'images/0.png',
            height: compact ? 270 : 330,
            fit: BoxFit.contain,
            filterQuality: FilterQuality.high,
            semanticLabel: 'ADEEB mascot',
          ),
        ),
      ),
    );
  }
}
