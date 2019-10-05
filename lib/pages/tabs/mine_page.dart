import 'package:flutter/material.dart';

/**
 * 注册业务是实现中，完成注册时实现直接跳转到根地址
 */
class MinePage extends StatefulWidget {
  @override
  _MineState createState() => _MineState();
}

class _MineState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我的"),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                      child: RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/login"); //命名路由进行页面的跳转
                    },
                    child: Text("登陆"),
                  )),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/register_frist_page");
                    },
                    child: Text("注册"),
                  ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
