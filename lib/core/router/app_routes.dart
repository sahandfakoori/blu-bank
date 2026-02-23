class AppRoute {
  final String name;
  final String path;

  const AppRoute(this.name, this.path);
}

class AppRoutes {
  static const home = AppRoute("home", "/");
  static const deposit = AppRoute("deposit", "/deposit");
  static const card = AppRoute("card", "/card");
  static const setting = AppRoute("setting", "/setting");
  static const dashboard = AppRoute("dashboard", "/dashboard");
}
