import 'package:flutter/material.dart';
import 'package:flutter_components_tryout/screens/list.dart';

void main() => runApp(
  MaterialApp(
    initialRoute: "/list",
    routes: {
      "/list": (context) => ListTryout(),
    },
    darkTheme: ThemeData.dark(),
));


