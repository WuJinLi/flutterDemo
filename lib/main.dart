import 'package:flutter/material.dart';
import 'package:flutter_learn/pages/bottom_tabs.dart';
import 'package:flutter_learn/pages/contact/themestate.dart';
import 'package:flutter_learn/pages/res/colors.dart';
import 'package:flutter_learn/routes/routes_config.dart';
import 'package:flutter_learn/utils/sp_util.dart';
import 'package:provider/provider.dart';
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
void main() async {
  await SPUtil.getInstance();
  runApp(new Wrapper(new MyApp()));
}

/**
 * 状态管理库的套路基本一致,将需要管理的部分包裹起来，这里直接上多个provider的包裹器。为了好看点，这里新建一个Wrapper组件来包裹。
 *
 */

class Wrapper extends StatefulWidget {
  final Widget child;

  Wrapper(this.child);

  @override
  State<StatefulWidget> createState() => WrapperState(this.child);
}

class WrapperState extends State<Wrapper> {
  final Widget child;

  WrapperState(this.child);

  //定义初始主题
  var initThemeData = ThemeData(
    //初始主题
    primaryColor: Colors.blue,
  );

  @override
  void initState() {
    super.initState();
    //获取sp存储用户的主题选择配色
    initThemeData = ThemeData(
        primaryColor:
            themeColorMap[SPUtil.getString('theme', defValue: 'blue')]);
  }

  @override
  Widget build(BuildContext context) {
    //来监听状态变化MultiProvider，可以监听多个状态提供，分别对其作出处理，处理方式使用：Consumer
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(builder: (_) => ThemeState(initThemeData)),
      ],
      child: this.child,
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeState>(
        builder: (_, state, __) => MaterialApp(
              title: "flutter",
              theme: state.themeDate,
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
            ));
  }
}
