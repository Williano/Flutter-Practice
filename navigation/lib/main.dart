import 'package:flutter/material.dart';
import 'package:navigation/routes/router.dart';
import 'package:navigation/utilities/routing_constants.dart';

void main() => runApp(MaterialApp(
    title: "Routing",
    onGenerateRoute: generateRoute,
    initialRoute: HomeViewRoute,
));

