import 'package:flutter/material.dart';

/**
 * 手势识别详情页面gesturedetector
 * 事件类型：
 * onTapDown:点击屏幕立即触发
 * onTapUp:手指离开屏幕
 * onTap:点击屏幕
 * onTapCancle:此次事件结束，onTapDown不会产生点击事件
 * onDoubleTap:双击
 * onLongPress:长按
 * onVerticalDragStart:与屏幕接触，可能垂直移动
 * onVerticalDragUpdate:在垂直方向上移动
 * onVertivalDragEnd:在垂直方向上移动结束
 * onHorizontalStart:与屏幕接触，可能水平方向移动
 * onHorizontalUpdate:在水平方向移动
 * onHorizontalEnd://水平方向移动结束
 */
class GestureDetectorDetailPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GestureDetectorDetailState();
}

class _GestureDetectorDetailState extends State<GestureDetectorDetailPage> {
  String desc = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GenstureDetector手势识别'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 400,
              alignment: Alignment.center,
              child: GestureDetector(
//                onTapDown: (details) {
//                  setState(() {
//                    this.desc = '手指接触屏幕';
//                  });
//                },
                onTapUp: (details) {
                  setState(() {
                    this.desc = '手指离开屏幕';
                  });
                },
                onTap: () {
                  setState(() {
                    this.desc = '手指单击屏幕';
                  });
                },
                onDoubleTap: () {
                  setState(() {
                    this.desc = '手指双击屏幕';
                  });
                },
                onLongPress: () {
                  setState(() {
                    this.desc = '手指长按屏幕';
                  });
                },
                onTapCancel: () {
                  setState(() {
                    this.desc = '手指点击事件结束屏幕';
                  });
                },
                onVerticalDragUpdate: (details) {
                  setState(() {
                    this.desc = '手指垂直移动';
                  });
                },
                onHorizontalDragUpdate: (details) {
                  setState(() {
                    this.desc = '手指水平移动';
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 300,
                  height: 300,
                  color: Colors.cyan,
                  child: Text('手势识别'),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  '手势操作详情：${desc}',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
