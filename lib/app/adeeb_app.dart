import 'package:adeeb/app/router/app_router.dart';
import 'package:adeeb/app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AdeebApp extends ConsumerWidget {
  const AdeebApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'ADEEB',
      theme: AppTheme.light,
      routerConfig: router,
    );
  }
}
