import 'package:adeeb/app/router/route_names.dart';
import 'package:adeeb/core/widgets/app_bottom_nav_bar.dart';
import 'package:adeeb/features/auth/screens/login_screen.dart';
import 'package:adeeb/features/daily_question/screens/daily_question_screen.dart';
import 'package:adeeb/features/duel/screens/duel_screen.dart';
import 'package:adeeb/features/flashcards/screens/flashcards_screen.dart';
import 'package:adeeb/features/home/screens/home_screen.dart';
import 'package:adeeb/features/league/screens/league_screen.dart';
import 'package:adeeb/features/learning/screens/learning_screen.dart';
import 'package:adeeb/features/market/screens/market_screen.dart';
import 'package:adeeb/features/missions/screens/missions_screen.dart';
import 'package:adeeb/features/mmt/screens/mmt_screen.dart';
import 'package:adeeb/features/onboarding/screens/onboarding_screen.dart';
import 'package:adeeb/features/onboarding/screens/onboarding_screen_three.dart';
import 'package:adeeb/features/onboarding/screens/onboarding_screen_two.dart';
import 'package:adeeb/features/profile/screens/profile_screen.dart';
import 'package:adeeb/features/settings/screens/settings_screen.dart';
import 'package:adeeb/features/splash/screens/splash_screen.dart';
import 'package:adeeb/features/tests/screens/test_result_screen.dart';
import 'package:adeeb/features/tests/screens/test_solving_screen.dart';
import 'package:adeeb/features/tests/screens/tests_screen.dart';
import 'package:adeeb/features/vocabulary/screens/vocabulary_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorHomeKey = GlobalKey<NavigatorState>(debugLabel: 'home');
final _shellNavigatorLearningKey = GlobalKey<NavigatorState>(
  debugLabel: 'learning',
);
final _shellNavigatorDuelKey = GlobalKey<NavigatorState>(debugLabel: 'duel');
final _shellNavigatorLeagueKey = GlobalKey<NavigatorState>(
  debugLabel: 'league',
);
final _shellNavigatorProfileKey = GlobalKey<NavigatorState>(
  debugLabel: 'profile',
);

final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: RouteNames.splash,
    routes: [
      GoRoute(
        path: RouteNames.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: RouteNames.onboarding,
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: RouteNames.onboardingTwo,
        builder: (context, state) => const OnboardingScreenTwo(),
      ),
      GoRoute(
        path: RouteNames.onboardingThree,
        builder: (context, state) => const OnboardingScreenThree(),
      ),
      GoRoute(
        path: RouteNames.login,
        builder: (context, state) => const LoginScreen(),
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return AppBottomNavBar(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            navigatorKey: _shellNavigatorHomeKey,
            routes: [
              GoRoute(
                path: RouteNames.home,
                builder: (context, state) => const HomeScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorLearningKey,
            routes: [
              GoRoute(
                path: RouteNames.learning,
                builder: (context, state) => const LearningScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorDuelKey,
            routes: [
              GoRoute(
                path: RouteNames.duel,
                builder: (context, state) => const DuelScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorLeagueKey,
            routes: [
              GoRoute(
                path: RouteNames.league,
                builder: (context, state) => const LeagueScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorProfileKey,
            routes: [
              GoRoute(
                path: RouteNames.profile,
                builder: (context, state) => const ProfileScreen(),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: RouteNames.mmt,
        builder: (context, state) => const MmtScreen(),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: RouteNames.tests,
        builder: (context, state) => const TestsScreen(),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: RouteNames.testSolving,
        builder: (context, state) => const TestSolvingScreen(),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: RouteNames.testResult,
        builder: (context, state) => const TestResultScreen(),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: RouteNames.vocabulary,
        builder: (context, state) => const VocabularyScreen(),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: RouteNames.flashcards,
        builder: (context, state) => const FlashcardsScreen(),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: RouteNames.dailyQuestion,
        builder: (context, state) => const DailyQuestionScreen(),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: RouteNames.missions,
        builder: (context, state) => const MissionsScreen(),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: RouteNames.market,
        builder: (context, state) => const MarketScreen(),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: RouteNames.settings,
        builder: (context, state) => const SettingsScreen(),
      ),
    ],
  );
});
