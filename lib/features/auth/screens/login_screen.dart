import 'package:adeeb/app/router/route_names.dart';
import 'package:adeeb/core/widgets/module_placeholder.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ModulePlaceholder(
      title: 'Вуруд',
      description: 'Ҷойи омода барои пайвасти ояндаи аутентификатсия.',
      metricLabel: 'Backend',
      metricValue: 'Омода',
      actionLabel: 'Демо оғоз кун',
      actionRoute: RouteNames.home,
    );
  }
}
