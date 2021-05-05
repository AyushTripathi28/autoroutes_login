import 'package:auto_route/auto_route.dart';
import 'package:autoroute_login/colors/colors_1.dart';
import 'package:autoroute_login/routing/modular_router.gr.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController;
  TextEditingController _passwordController;
  FocusNode _usernameFocusNode;
  FocusNode _passwordFocusNode;

  @override
  void initState() {
    super.initState();
    _usernameController = TextEditingController();
    _passwordController = TextEditingController();
    _usernameFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();

    _usernameController.addListener(() {
      setState(() {
        //redraw
      });
    });

    _passwordController.addListener(() {
      setState(() {
        //redraw
      });
    });
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _usernameFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 50.0),
            Column(
              children: <Widget>[
                Image.asset(
                  'assets/image.png',
                  height: 200,
                  width: 200,
                  color: appBlack,
                ),
                SizedBox(height: 10.0),
                Text(
                  'App Name',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ],
            ),
            SizedBox(height: 75.0),
            Container(
              margin: EdgeInsets.only(
                left: 50,
                right: 50,
              ),
              child: TextField(
                controller: _usernameController,
                focusNode: _usernameFocusNode,
                decoration: InputDecoration(
                  labelText: 'Username',
                  labelStyle: TextStyle(
                    color: _usernameFocusNode.hasFocus
                        ? Theme.of(context).accentColor
                        : appBackgroundDaark,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              margin: EdgeInsets.only(
                left: 50,
                right: 50,
              ),
              child: TextField(
                controller: _passwordController,
                focusNode: _passwordFocusNode,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    color: _passwordFocusNode.hasFocus
                        ? Theme.of(context).accentColor
                        : appBackgroundDaark,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              margin: EdgeInsets.only(
                right: 50,
              ),
              child: ButtonBar(
                children: [
                  TextButton(
                    child: Text(
                      'CANCEL',
                      style: TextStyle(
                        color: appBlueDark,
                      ),
                    ),
                    onPressed: () {
                      _usernameController.clear();
                      _passwordController.clear();
                    },
                  ),
                  ElevatedButton(
                    child: Text(
                      'NEXT',
                      style: TextStyle(
                        color: appBlueDark
                      ),
                    ),
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(appYellowPrimary)),
                    onPressed: () => _navigateToHome(context),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


void _navigateToHome(BuildContext context) {
  ExtendedNavigator.root.push(Routes.homePage);
}
