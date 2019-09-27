import '../pages/page/detail_page.dart';
import 'package:flutter/material.dart';
import '../pages/bottom_tabs.dart';
import '../pages/page/route_page.dart';
import 'package:flutter_learn/pages/page/route_page.dart';

/**
 * 配置路由
 */
final routes = {
  "/details": (context, {arguments}) => DetailsPage(arguments: arguments),
  "/": (context) => BottomBar(),
  "/route_page": (conntext) => RouteDetailPage(),
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

/***
 *命名路由传值策略：
 *
 * 通过MaterialApp中属性->onGenerateRoute 通过RouteSettings来进行设置
 *
 * class RouteSettings {
    const RouteSettings({
    this.name,
    this.isInitialRoute = false,
    this.arguments,
    });
    1.路由集合统一管理
    2.通过RouteSettings来进行设置，具体设置方式见上代码
    重点：RouteSettings，arguments
 */
