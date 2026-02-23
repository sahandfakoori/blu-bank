import 'package:blubank/core/widgets/app_navigation_destination.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      backgroundColor: Color(0xFF1b1f28),
      onDestinationSelected: (index) => navigationShell.goBranch(index),
      height: 56,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      selectedIndex: navigationShell.currentIndex,
      indicatorColor: Colors.transparent,
      elevation: 0.5,
      destinations: [
        AppNavigationDestination(
          icon: 'assets/icons/Setting.svg',
          label: 'settings',
        ),
        AppNavigationDestination(
          icon: 'assets/icons/card.svg',
          label: 'card',
        ),
        AppNavigationDestination(
          icon: 'assets/icons/dashboard-bold.svg',
          label: 'dashboard',
        ),
        AppNavigationDestination(
          icon: 'assets/icons/deposit-bold.svg',
          label: 'deposit',
        ),

        AppNavigationDestination(icon: 'assets/icons/Home.svg', label: 'home'),
      ],
    );
  }
}