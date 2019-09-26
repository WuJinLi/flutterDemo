import 'package:flutter/material.dart';
import '../detail_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              //普通路由跳转和传值
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => DetailsPage(title: "这是上级页面传递的数据",)));
            },
            child: Text("普通路由传值"),
          ),
        ],
      )
    );
  }
}
