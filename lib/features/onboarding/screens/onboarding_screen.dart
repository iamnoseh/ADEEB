import 'package:adeeb/app/router/route_names.dart';
import 'package:adeeb/core/widgets/module_placeholder.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ModulePlaceholder(
      title: 'Шиносоӣ',
      description: 'Қадами аввал барои омӯзиши ММТ, луғат ва миссияҳои рӯзона.',
      metricLabel: 'Таҷриба',
      metricValue: 'Премиум',
      actionLabel: 'Ворид шудан',
      actionRoute: RouteNames.login,
    );
  }
}
