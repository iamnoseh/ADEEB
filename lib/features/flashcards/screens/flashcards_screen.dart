import 'package:adeeb/core/widgets/module_placeholder.dart';
import 'package:flutter/material.dart';

class FlashcardsScreen extends StatelessWidget {
  const FlashcardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ModulePlaceholder(
      title: 'Флешкортҳо',
      description: 'Ҷойи омода барои кортҳои хотирмон ва такрори зуд.',
      metricLabel: 'Маҷмӯа',
      metricValue: 'Demo',
      progress: 0.35,
    );
  }
}
