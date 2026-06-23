import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppBottomNavBar extends StatelessWidget {
  const AppBottomNavBar({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: (index) {
          navigationShell.goBranch(
            index,
            initialLocation: index == navigationShell.currentIndex,
          );
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            label: 'Асосӣ',
          ),
          NavigationDestination(
            icon: Icon(Icons.school_outlined),
            label: 'Омӯзиш',
          ),
          NavigationDestination(
            icon: Icon(Icons.sports_martial_arts_outlined),
            label: 'Дуэл',
          ),
          NavigationDestination(
            icon: Icon(Icons.emoji_events_outlined),
            label: 'Лига',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            label: 'Профил',
          ),
        ],
      ),
    );
  }
}
