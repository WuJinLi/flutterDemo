import 'package:flutter/material.dart';
import 'package:flutter_learn/pages/page/datapersistence/data_persistence_main_page.dart';
import 'package:flutter_learn/pages/page/event/event_main_page.dart';
import 'package:flutter_learn/pages/page/listview_page.dart';
import 'package:flutter_learn/pages/page/pageview/page_view_main.dart';

class HomePage extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  Widget _itemGrid(String name,
      {double width = 90.0,
      double height = 90.0,
      Widget target,
      String routeName}) {
    return Container(
      width: width,
      height: height,
      child: RaisedButton(
        onPressed: () {
          if (target != null) {
            //普通路由跳转和传值
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => target));
          } else if (routeName.isNotEmpty) {
            Navigator.pushNamed(context, routeName);
          }
        },
        child: Text(name),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        title: Text("主页"),
//      ),
      body: Container(
          padding: EdgeInsets.all(10.0),
          child: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10,
            children: <Widget>[
              _itemGrid("路由跳转", routeName: "/route_page"),
              _itemGrid("ListView", target: ListViewPage()),
              _itemGrid("命名路由，有状态页面", routeName: "/name_route_page"),
              _itemGrid("按钮种类详情页面", routeName: "/buttom_page"),
              _itemGrid("文本输入框", routeName: "/text_field"),
              _itemGrid("勾选框", routeName: "/check_box"),
              _itemGrid("网络请求", routeName: "/net_work_page"),
              _itemGrid("radio", routeName: "/radio_page"),
              _itemGrid("学生信息录取页面", routeName: "/student_info_page"),
              _itemGrid("日期选择组件", routeName: "/date_pick_page"),
              _itemGrid("Json数据解析", routeName: "/json_page"),
              _itemGrid("可滚动组件", routeName: "/scrollview"),
              _itemGrid("流式布局", routeName: "/flowlayout"),
              _itemGrid("自定义主题", routeName: "/custom_theme"),
              _itemGrid("弹出菜单组件", routeName: "/popup_menu"),
              _itemGrid("对话框组件", routeName: "/dialog_page"),
              _itemGrid("Cupertion风格组件", routeName: "/cupertino_page"),
              _itemGrid("布局", routeName: "/layout_main"),
              _itemGrid("装饰，视觉效果", routeName: "/decorate_main"),
              _itemGrid("动画", routeName: "/animate_main"),
              _itemGrid("轮播图", target: PageViewMainPage()),
              _itemGrid("事件通知", target: EventMainPage()),
              _itemGrid("持久化", target: DataPersistenceMainPage()),
            ],
          )),
    );
  }
}
