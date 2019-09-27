import 'package:flutter/material.dart';
import 'package:flutter_learn/pages/page/listview_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
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
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ListViewPage()));
                },
                child: Text("ListView"),
              ),
            )
          ],
        )
      ],
    ));
  }
}
