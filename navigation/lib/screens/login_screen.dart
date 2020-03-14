import "package:flutter/material.dart";

class LoginView extends StatelessWidget {

  final String arguments;
  const LoginView({Key key, this.arguments}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
          onWillPop: () async {
             Navigator.pop(context, "fromLogin");
             return false;
          },
          child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.pop(context, 'fromLogin');
          }),
        body: Center(child: Text("Hello $arguments")),
      ),
    );
  }
}