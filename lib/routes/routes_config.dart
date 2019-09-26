import '../pages/page/detail_page.dart';
import 'package:flutter/material.dart';

final routes = {
  "/details": (context, {arguments}) => DetailsPage(arguments: arguments),
};

var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      return MaterialPageRoute(
              builder: (context) =>
                  pageContentBuilder(context, arguments: settings.arguments))
          as Route;
    } else {
      return MaterialPageRoute(
          builder: (context) => pageContentBuilder(context)) as Route;
    }
  }
};
