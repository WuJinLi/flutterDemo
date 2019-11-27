import 'package:flutter/material.dart';
import 'package:flutter_learn/res/data_resc.dart';
import 'package:flutter_learn/widget/item_page.dart';

class LayoutMainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LayoutMainPageState();
}

class _LayoutMainPageState extends State<LayoutMainPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('布局方式展示页面'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: ListView.builder(
            itemCount: layoutMainDatas.length,
            itemBuilder: (context, index) {
              return ItemPage(layoutMainDatas[index]['title'],
                  routeName: layoutMainDatas[index]['routeName']);
            }),
      ),
    );
  }
}
