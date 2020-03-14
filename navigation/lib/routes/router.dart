import "package:flutter/material.dart";
import 'package:navigation/screens/home_screen.dart';
import 'package:navigation/screens/login_screen.dart';
import 'package:navigation/screens/undefined_screen.dart';
import 'package:navigation/utilities/routing_constants.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch(settings.name) {

    case HomeViewRoute:
      return MaterialPageRoute(builder: (context) => HomeView());
      break;

    case LoginViewRoute:
      String argument = settings.arguments;
      return MaterialPageRoute(builder: (context) =>  LoginView(arguments: argument,));
      break;

    default:
      String name = settings.arguments;
      return MaterialPageRoute(builder: (context) => UndefinedView(name: name,));

  }
}
