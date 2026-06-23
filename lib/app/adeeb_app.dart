import 'package:adeeb/app/router/app_router.dart';
import 'package:adeeb/app/router/route_names.dart';
import 'package:adeeb/app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AdeebApp extends ConsumerStatefulWidget {
  const AdeebApp({super.key});

  @override
  ConsumerState<AdeebApp> createState() => _AdeebAppState();
}

class _AdeebAppState extends ConsumerState<AdeebApp>
    with WidgetsBindingObserver {
  GoRouter? _router;
  bool _wasBackgrounded = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused ||
        state == AppLifecycleState.detached) {
      _wasBackgrounded = true;
      return;
    }

    if (state == AppLifecycleState.resumed && _wasBackgrounded) {
      _wasBackgrounded = false;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _router?.go(RouteNames.splash);
      });
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final router = ref.watch(appRouterProvider);
    _router = router;

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'ADEEB',
      theme: AppTheme.light,
      routerConfig: router,
    );
  }
}
