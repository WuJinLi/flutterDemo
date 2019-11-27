import 'package:flutter/material.dart';
import 'package:flutter_learn/pages/contact/themestate.dart';
import 'package:flutter_learn/res/colors.dart';
import 'package:flutter_learn/pages/tabs/home_page.dart';
import 'package:flutter_learn/pages/tabs/setting_spage.dart';
import 'package:flutter_learn/pages/tabs/categroy_page.dart';
import 'package:flutter_learn/pages/tabs/mine_page.dart';
import 'package:flutter_learn/utils/sp_util.dart';
import 'package:flutter_learn/utils/theme_util.dart';
import 'package:provider/provider.dart';

/**
 * 设置底部导航栏：
 * Scaffold控件：
 * ++drawer：抽屉控件；Drawer抽屉组件，DrawerHeader抽屉头部控件
 * ++appBar：顶部标题栏；title
 * ++bottomNavigationBar：底部导航栏：BottomNavigationBar(items：[BottomNavigationBarItem()])
 */
/*****************************BottomNavigattionBar底部导航栏******************************/
class BottomBar extends StatefulWidget {
  var index;

  BottomBar({this.index = 0});

  @override
  _BottomBarState createState() => _BottomBarState(index);
}

class _BottomBarState extends State<BottomBar> {
  int currentIndex = 0;
  List list = [HomePage(), CategroyPage(), SettingsPage(), MinePage()];

  _BottomBarState(index) {
    this.currentIndex = index;
  }

  Widget drawerItem(String title, Icon icon, String path, arguments) {
    return ListTile(
      title: Text(title),
      leading: CircleAvatar(
        child: icon,
      ),
      onTap: () {
        Navigator.pop(context); //关闭抽屉
        Navigator.of(context).pushNamed(path, arguments: arguments); //详情页面跳转
      },
    );
  }

  List<BottomNavigationBarItem> _bottomNav = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      title: Text("首页"),
    ),
    BottomNavigationBarItem(icon: Icon(Icons.category), title: Text("分类")),
    BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text("设置")),
    BottomNavigationBarItem(icon: Icon(Icons.people), title: Text("我的"))
  ];

  Widget _drawerLayout() {
    return ListView(
      children: <Widget>[
//              DrawerHeader(child: Text("这是头像")),
        Row(
          children: <Widget>[
            Expanded(
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                    //头部布局背景
                    image: DecorationImage(
                        image: AssetImage("images/a.jpg"), fit: BoxFit.cover)),
                accountName: Text("张三"),
                //用户名
                accountEmail: Text("zhangsan@163.com"),
                //邮箱
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("images/a.jpg"),
                ),
                //头像
                otherAccountsPictures: <Widget>[
                  Icon(Icons.account_balance),
                  Icon(Icons.widgets),
                  Icon(Icons.map)
                ],
                onDetailsPressed: () {
                  Navigator.pop(context); //关闭抽屉
                  Navigator.of(context).pushNamed("/drawer_detail_page",
                      arguments: {"content": "抽屉头部"}); //详情页面跳转
                },
              ),
            )
          ],
        ), //抽屉栏头部布局
        drawerItem(
            "我的", Icon(Icons.mic), "/drawer_detail_page", {"content": "我的"}),
        Divider(), //分割线控件
        drawerItem("设置", Icon(Icons.settings), "/drawer_detail_page",
            {"content": "设置"}),
        Divider(),
        drawerItem(
            "主页", Icon(Icons.home), "/drawer_detail_page", {"content": "主页"}),
        Divider(),
        drawerItem(
            "热门", Icon(Icons.hd), "/drawer_detail_page", {"content": "热门"}),
        Divider(),
        new ExpansionTile(
          //ExpansionTile实现点击展开显示二级菜单
          title: new Row(
            children: <Widget>[
              Icon(Icons.color_lens, color: Theme.of(context).primaryColor),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text('主题'),
              )
            ],
          ),
          children: <Widget>[
            new Wrap(
              children: themeColorMap.keys.map((String key) {
                Color value = themeColorMap[key];
                //触发事件，且同志更新状态
                return Consumer<ThemeState>(
                  builder: (_, state, __) => new InkWell(
                    onTap: () {
                      SPUtil.putString('theme', key);
                      ThemeData themeDate = new ThemeData(primaryColor: value);
                      state.changeThemeData(themeDate);
                    },
                    child: new Container(
                      margin: EdgeInsets.all(5.0),
                      width: 36.0,
                      height: 36.0,
                      color: value,
                    ),
                  ),
                );
              }).toList(),
            )
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Center(child: _drawerLayout()),
      ),
//      endDrawer: Drawer(
//        child: Center(
//          child: ListTile(
//            title: Text("右侧边栏"),
//            leading: Icon(Icons.account_balance),
//            onTap: () {
//              Navigator.pop(context); //关闭抽屉
//              Navigator.of(context).pushNamed("/drawer_detail_page",
//                  arguments: {"content": "右侧边栏"});
//            },
//          ),
//        ),
//      ),
      //右侧边栏
      appBar: AppBar(
        title: Text("Flutter Demo"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _bottomNav,
        onTap: (int index) {
          setState(() {
            this.currentIndex = index;
          });
        },
        currentIndex: this.currentIndex,
        type: BottomNavigationBarType.fixed,
      ),
      body: this.list[this.currentIndex],
    );
  }
}

/**
 * 抽屉栏实现：
 * 方式一：
 * +++++++++：Drawer+DrawerHeader控件实现
 * 方式二:
 * +++++++++：Drawer+UserAccountsDrawerHeader控件实现
 */
