import 'package:flutter/material.dart';
import 'package:flutter_learn/pages/bottom_tabs.dart';
import 'package:flutter_learn/routes/routes_config.dart';
import 'routes/routes_config.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

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
//      theme: ThemeData(
//        //通过ThemeData进行自定义主题的设置
//        brightness: Brightness.light,
//        primaryColor: Colors.lightGreen[100],//app主要部分的背景色
//        accentColor: Colors.white,//前景色（文本，按钮）
//        buttonColor: Colors.white//material中RaisedButtons使用的默认填充色
//      ),
//      home: BottomBar(),
      debugShowCheckedModeBanner: false,
      //右上角debug图标
      onGenerateRoute: onGenerateRoute,
      //路由配置
      initialRoute: "/",
      //初始化默认启动路由
      localizationsDelegates: [
        //此处
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        //此处
        const Locale('zh', 'CH'),
        const Locale('en', 'US'),
      ],
    );
  }
}
