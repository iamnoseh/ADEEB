import 'package:adeeb/app/router/route_names.dart';
import 'package:adeeb/core/widgets/module_placeholder.dart';
import 'package:flutter/material.dart';

class TestSolvingScreen extends StatelessWidget {
  const TestSolvingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ModulePlaceholder(
      title: 'Ҳалли тест',
      description: 'Ҷойи омода барои муҳаррики саволҳо ва ҷавобҳо.',
      metricLabel: 'Савол',
      metricValue: '1 / 25',
      progress: 0.04,
      actionLabel: 'Натиҷа',
      actionRoute: RouteNames.testResult,
    );
  }
}
