import 'package:flutter/material.dart';
import 'package:flutter_learn/pages/bottom_tabs.dart';
import 'package:flutter_learn/routes/routes_config.dart';
import 'routes/routes_config.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter",
      home: BottomBar(),
      onGenerateRoute: onGenerateRoute,
    );
  }
}