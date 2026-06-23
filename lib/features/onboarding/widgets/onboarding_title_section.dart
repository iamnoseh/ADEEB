import 'package:adeeb/app/theme/app_colors.dart';
import 'package:flutter/material.dart';

class OnboardingTitleSection extends StatelessWidget {
  const OnboardingTitleSection({
    required this.titleFade,
    required this.titleSlide,
    required this.subtitleFade,
    required this.subtitleSlide,
    required this.compact,
    super.key,
  });

  final Animation<double> titleFade;
  final Animation<Offset> titleSlide;
  final Animation<double> subtitleFade;
  final Animation<Offset> subtitleSlide;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FadeTransition(
          opacity: titleFade,
          child: SlideTransition(
            position: titleSlide,
            child: Text(
              'Омӯзишро ба сатҳи нав бардор',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: AppColors.ink,
                fontSize: compact ? 26 : 30,
                fontWeight: FontWeight.w900,
                height: 1.12,
                letterSpacing: 0,
              ),
            ),
          ),
        ),
        SizedBox(height: compact ? 10 : 14),
        FadeTransition(
          opacity: subtitleFade,
          child: SlideTransition(
            position: subtitleSlide,
            child: Text(
              'Тестҳо, ММТ, луғатомӯзӣ, дуэл ва лига — ҳамааш дар як ҷо.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: AppColors.muted,
                fontSize: compact ? 14 : 15.5,
                height: 1.45,
                fontWeight: FontWeight.w600,
                letterSpacing: 0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
