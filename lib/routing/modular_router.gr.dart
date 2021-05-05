// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../routes/home.dart';
import '../routes/login.dart';
import '../routes/menu.dart';
import '../routes/settings.dart';

class Routes {
  static const String loginPage = '/';
  static const String homePage = '/home-page';
  static const String menuPage = '/menu-page';
  static const String settingsPage = '/settings-page';
  static const all = <String>{
    loginPage,
    homePage,
    menuPage,
    settingsPage,
  };
}

class ModularRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.loginPage, page: LoginPage),
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.menuPage, page: MenuPage),
    RouteDef(Routes.settingsPage, page: SettingsPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    LoginPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginPage(),
        settings: data,
      );
    },
    HomePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomePage(),
        settings: data,
      );
    },
    MenuPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => MenuPage(),
        settings: data,
      );
    },
    SettingsPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SettingsPage(),
        settings: data,
      );
    },
  };
}
