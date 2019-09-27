/*****************************Wrap组件 实现瀑布流的布局*******************************/
import 'package:flutter/material.dart';
import 'package:flutter_learn/res/data_resc.dart';
class WrapWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
//      width: 300.0,
      padding: EdgeInsets.all(10.0),
      child: Wrap(
        //实现瀑布流布局
        children: listData.map((value) {
          return RaisedButton(
            onPressed: null,
            child: Text(
              value["author"],
              style: TextStyle(color: Colors.white),
            ),
          );
        }).toList(),
        spacing: 10.0, //横向间距
        runSpacing: 5.0, //纵向间距
        alignment: WrapAlignment.start, //spaceAround,center,start
//        crossAxisAlignment: WrapCrossAlignment.center,
      ),
    );
  }
}