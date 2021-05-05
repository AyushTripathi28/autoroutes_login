import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => ExtendedNavigator.root.pop(),
            icon: Icon(Icons.arrow_back)),
        title: Text(
          'Menu',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
      body: Center(
        child: Text('[Menu Information]'),
      ),
    );
  }
}
