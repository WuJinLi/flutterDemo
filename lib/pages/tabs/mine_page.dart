import 'package:flutter/material.dart';

/**
 * 注册业务是实现中，完成注册时实现直接跳转到根地址
 */
class MinePage extends StatefulWidget {
  @override
  _MineState createState() => _MineState();
}

class _MineState extends State<MinePage> {
  var result;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        title: Text("我的"),
//      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                      child: RaisedButton(
                    onPressed: () async {
                      this.result = await Navigator.pushNamed(
                          context, "/login"); //命名路由进行页面的跳转

                      print("$result");
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
                      Navigator.pushNamed(context, "/register_frist_page",);
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

/**
 * MaterialPageRoute继承自PageRoute类，PageRoute类是一个抽象类，表示占有整个屏幕空间的一个模态路由页面，
 * 它还定义了路由构建及切换时过渡动画的相关接口及属性。MaterialPageRoute 是Material组件库提供的组件，
 * 它可以针对不同平台，实现与平台页面切换动画风格一致的路由切换动画：
 *
 * 针对页面之间跳转进行信息通信方式：
 * 页面跳转：
 * + 入栈，push(BuildContext context, Route route)/pushNamed(routeName, arguments: arguments)，
 * 返回结果是一个Future对象，Future对象，用以接收新路由出栈（即关闭）时的返回数据（类似androidstartActivityForResult中返回）
 * + 出栈： pop(BuildContext context, [ result ])
 */
