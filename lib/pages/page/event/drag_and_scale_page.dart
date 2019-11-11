import 'package:flutter/material.dart';

/**
 * 实现手势操作完成拖拽和缩放的
 *
 * 拖拽监听：onPanUpdate()
 * 缩放监听：onScaleUpdate()
 */
class DragAndScalePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DragAndScaleState();
}

class _DragAndScaleState extends State<DragAndScalePage> {
  double _top = 0.0;
  double _left = 0.0;
  double _dragSize = 100.0;
  double _scaleSize = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('拖拽和缩放效果'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.blueGrey[100],
              child: Stack(
                //使用stack与Positioned组件实现定位布局
                children: <Widget>[
                  Positioned(
                    top: this._top,
                    left: this._left,
                    child: GestureDetector(
                      //手势组件实现拖拽事件的监听
                      child: FlutterLogo(
                        size: this._dragSize,
                      ),
                      onPanUpdate: (event) {
                        setState(() {
                          this._left += event.delta.dx;
                          this._top += event.delta.dx;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              color: Colors.blueGrey[100],
              child: GestureDetector(
                child: FlutterLogo(
                  size: this._scaleSize,
                ),
                onScaleUpdate: (e) {
                  setState(() {
                    _scaleSize = 100 * e.scale.clamp(0.5, 10.0);
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
