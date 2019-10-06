import 'package:flutter/material.dart';
import 'package:flutter_learn/pages/bottom_tabs.dart';
import 'package:flutter_learn/routes/routes_config.dart';
import 'routes/routes_config.dart';


/**
 *
 * 针对主页面设计：
 * debugShowCheckedModeBanner：设置app右上角是否显示debug的图标；
 * onGenerateRoute：设置路由配置；
 * initialRoute：默认路由配置；
 *
 */
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter",
//      home: BottomBar(),
      debugShowCheckedModeBanner: false, //右上角debug图标
      onGenerateRoute: onGenerateRoute,
      initialRoute: "/",
    );
  }
}
