import 'package:flutter/material.dart';
import 'package:flutter_forms/screens/form_practice1_screen.dart';
import 'package:flutter_forms/screens/home_material_screen.dart';

class FormApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Forms',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: PageForm(),
      home: HomeMaterialScreen(),
    );
  }
}
