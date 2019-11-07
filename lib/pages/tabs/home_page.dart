import 'dart:async';

import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learn/pages/page/listview_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
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
              Container(
                width: 90,
                height: 90,
                child: RaisedButton(
                  onPressed: () {
                    //普通路由跳转和传值
                    Navigator.pushNamed(context, "/route_page");
                  },
                  child: Text("路由跳转"),
                ),
              ),
              Container(
                width: 90,
                height: 90,
                child: RaisedButton(
                  onPressed: () {
                    //普通路由跳转和传值
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ListViewPage()));
                  },
                  child: Text("ListView"),
                ),
              ),
              Container(
                width: 90,
                height: 90,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/name_route_page");
                  },
                  child: Text("命名路由，有状态页面"),
                ),
              ),
              Container(
                width: 90,
                height: 90,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/buttom_page");
                  },
                  child: Text("按钮种类详情页面"),
                ),
              ),
              Container(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/text_field");
                  },
                  child: Text("文本输入框"),
                ),
              ),
              Container(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/check_box");
                  },
                  child: Text("勾选框"),
                ),
              ),
              Container(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/net_work_page");
                  },
                  child: Text("网络请求"),
                ),
              ),
              Container(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/radio_page");
                  },
                  child: Text("radio"),
                ),
              ),
              Container(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/student_info_page");
                  },
                  child: Text("学生信息录取页面"),
                ),
              ),
              Container(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/date_pick_page");
                  },
                  child: Text("日期选择组件"),
                ),
              ),
              Container(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/json_page");
                  },
                  child: Text("Json数据解析"),
                ),
              ),
              Container(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/scrollview");
                  },
                  child: Text("可滚动组件"),
                ),
              ),
              Container(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/flowlayout");
                  },
                  child: Text("流式布局"),
                ),
              ),
              Container(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/custom_theme");
                  },
                  child: Text("自定义主题"),
                ),
              ),
              Container(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/popup_menu");
                  },
                  child: Text("弹出菜单组件"),
                ),
              ),
              Container(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/dialog_page");
                  },
                  child: Text("对话框组件"),
                ),
              ),
              Container(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/cupertino_page");
                  },
                  child: Text("Cupertion风格组件"),
                ),
              ),
              Container(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/layout_main");
                  },
                  child: Text("布局"),
                ),
              ),
              Container(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/gesturedetector_main");
                  },
                  child: Text("手势"),
                ),
              ),
              Container(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/decorate_main");
                  },
                  child: Text("装饰，视觉效果"),
                ),
              ),
              Container(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/animate_main");
                  },
                  child: Text("动画"),
                ),
              ),
            ],
          )),
    );
  }
}
