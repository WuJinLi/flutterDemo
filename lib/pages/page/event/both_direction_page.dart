import 'package:flutter/material.dart';

/**
 * 事件竞争机制
 * 在某一方向操作超过一定的逻辑像素后被定义为另一种事件操作，比如水平移动操作超过一定的逻辑像素。则水平识别区将起作用，称为水平拖拽
 */
class BothDirectionPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BothDirectionState();
  }
}

class _BothDirectionState extends State<BothDirectionPage> {
  double _top = 0.0;
  double _left = 0.0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('事件竞争机制'),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
              left: this._left,
              top: this._top,
              child: GestureDetector(
                child: FlutterLogo(
                  size: 100,
                ),
                onVerticalDragUpdate: (e) {
                  setState(() {
                    this._top = e.delta.dy;
                  });
                  print('垂直操作');
                },
                onHorizontalDragUpdate: (e) {
                  setState(() {
                    this._left = e.delta.dx;
                  });
                  print('水平操作');
                },
                onTapDown: (e) {
                  print('按下');
                },
                onTapUp: (e) {
                  print('松开');
                },
                onHorizontalDragEnd: (e) {
                  print('水平移动结束');
                },
                onVerticalDragEnd: (e) {
                  print('垂直移动结束');
                },
              )),
        ],
      ),
    );
  }
}
