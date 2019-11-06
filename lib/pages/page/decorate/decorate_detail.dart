import 'package:flutter/material.dart';

/**
 * 装饰盒子组件：
 * 实现子组件，边框样式，背景图案，渐变色等操作
 */
class DecoratedBoxDetailPage extends StatefulWidget {
  @override
  _DecoratedBoxDetailState createState() => _DecoratedBoxDetailState();
}

class _DecoratedBoxDetailState extends State<DecoratedBoxDetailPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('装饰盒子DecoratedBox'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            backgroundWidget(),
          ],
        ),
      ),
    );
  }

  Widget backgroundWidget() {
    return Column(
      children: <Widget>[
        Text(
          '背景图效果',
          textAlign: TextAlign.start,
          style: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        SizedBox(
          height: 5.0,
        ),
        Divider(),
        SizedBox(
          height: 5.0,
        ),
        Center(
          child: Container(
            padding: EdgeInsets.all(10.0),
            width: 300.0,
            height: 300.0,
            decoration: BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                  image: ExactAssetImage('images/a.jpg'), fit: BoxFit.cover),
            ),
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          '边框处理',
          textAlign: TextAlign.start,
          style: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        Divider(),
        SizedBox(
          height: 5.0,
        ),
        Center(
          child: Container(
            padding: EdgeInsets.all(10.0),
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.red, width: 4.0),
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: ExactAssetImage('images/a.jpg'), fit: BoxFit.cover),
            ),
          ),
        ),
      ],
    );
  }
}
