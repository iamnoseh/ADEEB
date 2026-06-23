import 'package:adeeb/app/theme/app_colors.dart';
import 'package:flutter/material.dart';

class SplashTagline extends StatelessWidget {
  const SplashTagline({
    required this.taglineFade,
    required this.dividerFade,
    super.key,
  });

  final Animation<double> taglineFade;
  final Animation<double> dividerFade;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        FadeTransition(
          opacity: taglineFade,
          child: Text(
            'Биё, донотар шав!',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: AppColors.charcoal,
              fontWeight: FontWeight.w700,
              letterSpacing: 0,
            ),
          ),
        ),
        const SizedBox(height: 14),
        FadeTransition(opacity: dividerFade, child: const _GoldDivider()),
      ],
    );
  }
}

class _GoldDivider extends StatelessWidget {
  const _GoldDivider();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _Line(width: 30),
        Container(
          width: 7,
          height: 7,
          margin: const EdgeInsets.symmetric(horizontal: 9),
          decoration: const BoxDecoration(
            color: AppColors.gold,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Color(0x55C99A2E),
                blurRadius: 12,
                spreadRadius: 2,
              ),
            ],
          ),
        ),
        _Line(width: 30),
      ],
    );
  }
}

class _Line extends StatelessWidget {
  const _Line({required this.width});

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 1,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.transparent,
            AppColors.gold.withValues(alpha: 0.72),
            Colors.transparent,
          ],
        ),
      ),
    );
  }
}
