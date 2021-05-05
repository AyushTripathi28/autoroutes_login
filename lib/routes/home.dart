import 'package:auto_route/auto_route.dart';
import 'package:autoroute_login/colors/colors_1.dart';
import 'package:autoroute_login/routing/modular_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FToast fToast;

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
  }

  _showToast() {
    Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: appBluePrimary,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.error, color: appWhite,),
          SizedBox(
            width: 12.0,
          ),
          Text("Settings Page Coming Soon...", style: TextStyle(
            color: appWhite,
          ),),
        ],
      ),
    );

    fToast.showToast(
      child: toast,
      gravity: ToastGravity.BOTTOM,
      toastDuration: Duration(seconds: 2),
    );

    // Custom Toast Position
    // fToast.showToast(
    //     child: toast,
    //     toastDuration: Duration(seconds: 2),
    //     positionedToastBuilder: (context, child) {
    //       return Positioned(
    //         child: child,
    //         top: 16.0,
    //         left: 16.0,
    //       );
    //     });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => _navigateToMenu(context),
          icon: Icon(Icons.menu),
        ),
        title: Text(
          'Dashboard',
          style: Theme.of(context).textTheme.headline4,
        ),
        actions: [
          IconButton(
            onPressed: () => _showToast(),
            icon: Icon(Icons.search),
          ),
          IconButton(
              onPressed: () => _navigateToSettings(context),
              icon: Icon(Icons.tune))
        ],
      ),
      body: Center(
        child: Text('[Dashboard Information]'),
      ),
    );
  }
}

void _navigateToMenu(BuildContext context) {
  ExtendedNavigator.root.push(Routes.menuPage);
}

void _navigateToSettings(BuildContext context) {
  ExtendedNavigator.root.push(Routes.settingsPage);
}
