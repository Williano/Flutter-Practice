import 'package:flutter/material.dart';
import 'package:flutter_tab_bar_view/tab_bar_view_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Color(0xFF2d3447),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TabBarViewScreen(),
    );
  }
}
