import 'package:adeeb/core/widgets/module_placeholder.dart';
import 'package:flutter/material.dart';

class DailyQuestionScreen extends StatelessWidget {
  const DailyQuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ModulePlaceholder(
      title: 'Саволи рӯз',
      description: 'Ҷойи омода барои саволи ҳаррӯза ва мукофоти streak.',
      metricLabel: 'Мукофот',
      metricValue: '+10 XP',
      progress: 0.5,
    );
  }
}
