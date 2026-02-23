import 'package:blubank/core/router/app_routes.dart';
import 'package:blubank/features/presentation/screens/card_screen.dart';
import 'package:blubank/features/presentation/screens/dashboard_screen.dart';
import 'package:blubank/features/presentation/screens/deposit_screen.dart';
import 'package:blubank/features/presentation/screens/home_screen.dart';
import 'package:blubank/features/presentation/screens/main_screen.dart';
import 'package:blubank/features/presentation/screens/setting_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter routerConfig = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: AppRoutes.home.path,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return MainScreen(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.setting.path,
              name: AppRoutes.setting.name,
              builder: (context, state) => SettingScreen(),
            ),
          ],
        ), //setting
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.card.path,
              name: AppRoutes.card.name,
              builder: (context, state) => CardScreen(),
            ),
          ],
        ), // card
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.dashboard.path,
              name: AppRoutes.dashboard.name,
              builder: (context, state) => DashboardScreen(),
            ),
          ],
        ), //dashboard
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.deposit.path,
              name: AppRoutes.deposit.name,
              builder: (context, state) => DepositScreen(),
            ),
          ],
        ), //deposit
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.home.path,
              name: AppRoutes.home.name,
              builder: (context, state) => HomeScreen(),
            ),
          ],
        ), //home
      ],
    ),
  ],
);
