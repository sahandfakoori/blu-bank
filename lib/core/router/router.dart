import 'package:blubank/core/router/app_routes.dart';
import 'package:blubank/features/presentation/bloc/home_bloc.dart';
import 'package:blubank/features/presentation/screens/card_screen.dart';
import 'package:blubank/features/presentation/screens/dashboard_screen.dart';
import 'package:blubank/features/presentation/screens/deposit_screen.dart';
import 'package:blubank/features/presentation/screens/destinations_screen.dart';
import 'package:blubank/features/presentation/screens/home_screen.dart';
import 'package:blubank/features/presentation/screens/main_screen.dart';
import 'package:blubank/features/presentation/screens/setting_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
              path: AppRoutes.destination.path,
              name: AppRoutes.destination.name,
              builder: (context, state) => DestinationsScreen(),
            ),
          ],
        ), //deposit
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.home.path,
              name: AppRoutes.home.name,
              builder: (context, state) => BlocProvider<HomeBloc>(
                create: (context) => HomeBloc(),
                child: HomeScreen(),
              ),
            ),
          ],
        ), //home
      ],
    ),
    GoRoute(
      path: AppRoutes.deposit.path,
      name: AppRoutes.deposit.name,
      builder: (context, state) => DepositScreen(),
    ),
  ],
);
