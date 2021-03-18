import 'package:dynamic_theming/themeservice.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomepageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      body: Center(
        child: RaisedButton(
          color: context.theme.buttonColor,
          child: Text(
            'Change Theme',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: ThemeService().switchTheme,
        ),
      ),
    );
  }
}
