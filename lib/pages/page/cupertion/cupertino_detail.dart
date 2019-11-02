import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * ios风格组件
 */
class CupertinoDetailPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CupertinoDetailState();
}

class _CupertinoDetailState extends State<CupertinoDetailPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          //底部导航栏
          items: [
            //底部导航栏item，CupertinoIcons：ios风格的图片
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home), title: Text('主页')),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.conversation_bubble),
                title: Text('聊天')),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.location), title: Text('位置')),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person), title: Text('我的'))
          ],
        ),
        tabBuilder: (context, index) {
          //tab也切换展示的页面
          return CupertinoTabView(
            //展示页面
            builder: (context) {
              switch (index) {
                case 0:
                  return HomePage();
                  break;
                case 1:
                  return ChatPage();
                  break;
                case 2:
                  return LocationPage();
                  break;
                case 3:
                  return MinePage();
                  break;
              }
            },
          );
        });
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
        //类似与materalDesign设计风格
        navigationBar: CupertinoNavigationBar(
          //顶部标题栏
          middle: Text('主页'),
          leading: CupertinoButton(
              child: Icon(CupertinoIcons.back),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        child: Center(
          child: Text('主页', style: Theme.of(context).textTheme.button),
        ));
  }
}

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('聊天面板'),
          trailing: CupertinoButton(
              child: Icon(CupertinoIcons.add), onPressed: () {}),
          leading: CupertinoButton(
              child: Icon(CupertinoIcons.back),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/cupertino_page');
              }),
        ),
        child: Center(
          child: CupertinoActivityIndicator(
            radius: 20.0,
          ),
        ));
  }
}

class LocationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('位置'),
        ),
        child: Center(
          child: Text('位置', style: Theme.of(context).textTheme.button),
        ));
  }
}

class MinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('我的'),
        ),
        child: Center(
          child: CupertinoAlertDialog(
            title: Text('提示信息'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[Text('这是ios风格的对话框')],
              ),
            ),
            actions: <Widget>[
              CupertinoDialogAction(
                child: Text('确定'),
                onPressed: () {},
              ),
              CupertinoDialogAction(
                child: Text('取消'),
                onPressed: () {},
              )
            ],
          ),
        ));
  }
}
