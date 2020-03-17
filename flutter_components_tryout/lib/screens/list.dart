import 'package:flutter/material.dart';

class ListTryout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),

      ),
      body: Row(
        children: <Widget>[
          ListView(
            children: <

            Widget>[
              Text("Element 1"),
              Text("Element 2")
            ],
          ),
        ],
      ),
    );
  }
}