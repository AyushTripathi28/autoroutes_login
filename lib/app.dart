import 'package:auto_route/auto_route.dart';
import 'package:autoroute_login/colors/colors_1.dart';
import 'package:autoroute_login/routing/modular_router.gr.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AutoRoute Login App',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: ModularRouter(),
      builder: ExtendedNavigator.builder(
        router: ModularRouter(),
        initialRoute: Routes.loginPage,
        builder: (_, extendedNav) => Theme(
          data: _buildAppTheme(),
          child: extendedNav,
        ),
      ),
    );
  }

  ThemeData _buildAppTheme() {
    final ThemeData base = ThemeData.light();
    return base.copyWith(
      primaryColor: appBluePrimary,
      accentColor: appYellowPrimary,
      scaffoldBackgroundColor: appGrey,
      buttonTheme: base.buttonTheme.copyWith(
        buttonColor: appYellowPrimary,
        textTheme: ButtonTextTheme.primary,
        colorScheme: ColorScheme.light().copyWith(
          primary: appBlueLight,
        ),
      ),
      textTheme: _buildAppTextTheme(base.textTheme),
      primaryTextTheme: _buildAppTextTheme(base.primaryTextTheme),
      accentTextTheme: _buildAppTextTheme(base.accentTextTheme),
      primaryIconTheme: base.iconTheme.copyWith(
        color: appYellowPrimary,
      ),
    );
  }

  TextTheme _buildAppTextTheme(TextTheme base) {
    return base
        .copyWith(
          headline6: base.headline6.copyWith(
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
            color: appBluePrimary,
          ),
          headline5: base.headline5.copyWith(
            fontSize: 24.0,
            fontWeight: FontWeight.w600,
            color: appBlueDark,
          ),
          headline4: base.headline4.copyWith(
            fontSize: 24.0,
            fontWeight: FontWeight.w600,
            color: appYellowPrimary,
          ),
          bodyText1: base.bodyText1.copyWith(
              // fontSize: 12.0,
              // fontWeight: FontWeight.w500,
              ),
        )
        .apply(
          fontFamily: 'Ubuntu',
        );
  }
}
