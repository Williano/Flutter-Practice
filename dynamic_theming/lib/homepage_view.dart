import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomepageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.theme.backgroundColor,
      child: RaisedButton(
        color: context.theme.buttonColor,
        child: Text(
          "Change Theme",
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          if (Get.isDarkMode) {
            Get.changeThemeMode(ThemeMode.light);
          } else {
            Get.changeThemeMode(ThemeMode.dark);
          }
        },
      ),
    );
  }
}
