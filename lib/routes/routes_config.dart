import '../pages/page/detail_page.dart';
import 'package:flutter/material.dart';
import '../pages/bottom_tabs.dart';
import 'package:flutter_learn/pages/page/route_page.dart';
import 'package:flutter_learn/pages/page/name_route_page.dart';
import 'package:flutter_learn/pages/page/login/login_page.dart';
import 'package:flutter_learn/pages/page/registe/register_frist_page.dart';
import 'package:flutter_learn/pages/page/registe/register_secound_page.dart';
import 'package:flutter_learn/pages/page/registe/register_third_page.dart';
import 'package:flutter_learn/pages/page/tab/default_tab_controller.dart';
import 'package:flutter_learn/pages/page/tab/tab_controller.dart';
import 'package:flutter_learn/pages/page/drawer_detail_page.dart';
import 'package:flutter_learn/pages/page/button_page.dart';
import 'package:flutter_learn/pages/page/floatbutton/float_button.dart';

/**
 * 配置路由
 */
final routes = {
  "/details": (context, {arguments}) => DetailsPage(arguments: arguments),
  "/": (context) => BottomBar(),
  "/route_page": (conntext) => RouteDetailPage(),
  "/name_route_page": (context) => NameRoutePage(),
  "/register_frist_page": (context) => RegisterFristPage(),
  "/register_secound_page": (context) => RegisterSecoundPage(),
  "/register_third_page": (context) => RegisterThirdPage(),
  "/login": (context) => LoginPage(),
  "/default_tab_controller": (context) => DefaultTabControllerPage(),
  "/tab_bar_controller": (context) => TabBarControllerPage(),
  "/drawer_detail_page":(context,{arguments}) =>DrawerDetailPage(arguments: arguments),
  "/buttom_page":(context) => ButtomPage(),
  "/float_button":(context) => FloatButtonPage(),
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
