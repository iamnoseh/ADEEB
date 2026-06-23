import 'package:adeeb/core/widgets/module_placeholder.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ModulePlaceholder(
      title: 'Танзимот',
      description: 'Ҷойи омода барои забон, ҳисоб ва афзалиятҳои барнома.',
      metricLabel: 'Storage',
      metricValue: 'Prepared',
      progress: 0.2,
    );
  }
}
