import 'package:adeeb/app/theme/app_colors.dart';
import 'package:flutter/material.dart';

class OnboardingPagination extends StatelessWidget {
  const OnboardingPagination({required this.activeIndex, super.key});

  final int activeIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (var index = 0; index < 4; index++)
          AnimatedContainer(
            duration: const Duration(milliseconds: 220),
            width: index == activeIndex ? 24 : 8,
            height: 8,
            margin: const EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              color: index == activeIndex
                  ? AppColors.gold
                  : const Color(0xFFE6DED0),
              borderRadius: BorderRadius.circular(99),
            ),
          ),
        const SizedBox(width: 8),
        const Icon(Icons.auto_awesome, size: 15, color: AppColors.gold),
      ],
    );
  }
}
