import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation/screens/login_screen.dart';
import 'package:navigation/utilities/routing_constants.dart';

class HomeView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text("Home Screen"),
       centerTitle: true,
      ),
      body: Center(
        child: Text(
          "Home"
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var navigationResult = await Navigator.pushNamed(
            context,
            LoginViewRoute,
            arguments: "William"
            );
            if(navigationResult == 'fromLogin') {
              showCupertinoDialog(
                context: context,
                builder: (context) => CupertinoAlertDialog(
                  title: Text("From Login")
                ));
            }
        }),
    );
  }
}