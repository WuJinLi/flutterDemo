import 'package:flutter/material.dart';
import 'package:flutter_learn/res/data_resc.dart';

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

  //页面主题内容
  Widget _homeContent() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
      itemBuilder: (context, index) {
        return _itemGrid(pages[index]['title'],
            target: pages[index]['target'],
            routeName: pages[index]['routeName']);
      },
      itemCount: pages.length,
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
        child: _homeContent(),
      ),
    );
  }
}
