
import 'package:flutter/material.dart';
/***********************************Padding*********************************/
class PaddingContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 2,
//      crossAxisSpacing: 4.0,
//      mainAxisSpacing: 4.0,
      children: _getGridViewItem(),
    );
  }
}

/**
 * 创造gridview数据
 */
List<Widget> _getGridViewItem() {
  List<Widget> list = new List();
  for (var i = 0; i < 11; i++) {
    list.add(Padding(
      //使用padding组件作为父容器来完成和子元素直接距离的调整
      padding: EdgeInsets.all(5.0), //设置padding值
      child: Container(
        //初始化子容器
        decoration: BoxDecoration(
          //设置子容器的背景颜色
          color: Colors.blue,
        ),
      ),
    ));
  }
  return list;
}