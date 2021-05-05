import 'package:auto_route/auto_route_annotations.dart';
import 'package:autoroute_login/routes/home.dart';
import 'package:autoroute_login/routes/login.dart';
import 'package:autoroute_login/routes/menu.dart';
import 'package:autoroute_login/routes/settings.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: LoginPage, initial: true),
    MaterialRoute(page: HomePage),
    MaterialRoute(page: MenuPage),
    MaterialRoute(page: SettingsPage),

  ],
)
class $ModularRouter {}

//flutter pub run build_runner watch --delete-conflicting-outputs