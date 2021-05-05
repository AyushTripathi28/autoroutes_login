import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => ExtendedNavigator.root.pop(),
        ),
        title: Text(
          'Settings',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
      body: Center(
        child: Text(
          '[SettingsInformation]',
        ),
      ),
    );
  }
}
