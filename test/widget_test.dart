import 'package:adeeb/app/adeeb_app.dart';
import 'package:adeeb/app/router/app_router.dart';
import 'package:adeeb/app/router/route_names.dart';
import 'package:adeeb/features/home/data/demo_home_repository.dart';
import 'package:adeeb/features/home/providers/home_provider.dart';
import 'package:adeeb/features/learning/data/demo_learning_repository.dart';
import 'package:adeeb/features/mmt/data/demo_mmt_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('AdeebApp builds the splash route', (tester) async {
    await tester.pumpWidget(const ProviderScope(child: AdeebApp()));
    await tester.pump();

    expect(find.text('Биё, донотар шав!'), findsOneWidget);
    expect(find.byType(Router<Object>), findsOneWidget);
  });

  testWidgets('splash automatically navigates to onboarding', (tester) async {
    await tester.pumpWidget(const ProviderScope(child: AdeebApp()));

    await tester.pump(const Duration(milliseconds: 3000));
    await tester.pump(const Duration(milliseconds: 250));

    expect(find.text('Омӯзишро ба сатҳи нав бардор'), findsOneWidget);
  });

  test('router exposes all planned route paths', () {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    final router = container.read(appRouterProvider);

    const paths = [
      RouteNames.splash,
      RouteNames.onboarding,
      RouteNames.login,
      RouteNames.home,
      RouteNames.learning,
      RouteNames.mmt,
      RouteNames.tests,
      RouteNames.testSolving,
      RouteNames.testResult,
      RouteNames.vocabulary,
      RouteNames.flashcards,
      RouteNames.dailyQuestion,
      RouteNames.missions,
      RouteNames.duel,
      RouteNames.league,
      RouteNames.market,
      RouteNames.profile,
      RouteNames.settings,
    ];

    final configuration = router.configuration;
    for (final path in paths) {
      expect(configuration.findMatch(Uri.parse(path)).matches, isNotEmpty);
    }
  });

  test('demo repositories return backend-shaped data', () async {
    final dashboard = await DemoHomeRepository().getDashboard();
    final learning = await DemoLearningRepository().getHub();
    final mmt = await DemoMmtRepository().getOverview();

    expect(dashboard.userName, 'Носеҳ');
    expect(learning.activeCourses, greaterThan(0));
    expect(mmt.readinessPercent, inInclusiveRange(0, 100));
  });

  test('home dashboard provider loads demo data', () async {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    final dashboard = await container.read(homeDashboardProvider.future);

    expect(dashboard.xp, 120);
    expect(dashboard.todayTotalMissions, 5);
  });
}
