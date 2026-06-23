import 'package:flutter/material.dart';

class OnboardingAnimatedBackground extends StatelessWidget {
  const OnboardingAnimatedBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'images/background_onboarding_1.png',
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
          filterQuality: FilterQuality.high,
        ),
        const DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0x00FFFFFF),
                Color(0x00FFFFFF),
                Color(0xEFFFFFFF),
                Color(0xFFFFFFFF),
              ],
              stops: [0, 0.44, 0.74, 1],
            ),
          ),
        ),
      ],
    );
  }
}
