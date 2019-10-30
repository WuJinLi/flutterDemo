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
      body: Center(
          child: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: RaisedButton(
                  onPressed: () {
                    //普通路由跳转和传值
                    Navigator.pushNamed(context, "/route_page");
                  },
                  child: Text("路由跳转"),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: RaisedButton(
                  onPressed: () {
                    //普通路由跳转和传值
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ListViewPage()));
                  },
                  child: Text("ListView"),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/name_route_page");
                  },
                  child: Text("命名路由，有状态页面"),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/buttom_page");
                  },
                  child: Text("按钮种类详情页面"),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/text_field");
                  },
                  child: Text("文本输入框"),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/check_box");
                  },
                  child: Text("勾选框"),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/net_work_page");
                  },
                  child: Text("网络请求"),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/radio_page");
                  },
                  child: Text("radio"),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/student_info_page");
                  },
                  child: Text("学生信息录取页面"),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/date_pick_page");
                  },
                  child: Text("日期选择组件"),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/json_page");
                  },
                  child: Text("Json数据解析"),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/scrollview");
                  },
                  child: Text("可滚动组件"),
                ),
              ),
            ],
          ),

          Row(
            children: <Widget>[
              Expanded(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/flowlayout");
                  },
                  child: Text("流式布局"),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/custom_theme");
                  },
                  child: Text("自定义主题"),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/popup_menu");
                  },
                  child: Text("弹出菜单组件"),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
