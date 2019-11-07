import 'package:flutter/material.dart';

/**
 * 渐变动画
 */
class AnimatedOpacityPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AnimatedOpacityState();
}

class _AnimatedOpacityState extends State<AnimatedOpacityPage> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('渐变动画'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: AnimatedOpacity(
            opacity: _visible ? 1.0 : 0.0,
            duration: Duration(milliseconds: 2000),
            child: Container(
              width: 200,
              height: 200,
              color: Colors.green,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(
            () {
              this._visible = !_visible;
            },
          );
        },
        tooltip: '显示隐藏',
        child: Icon(Icons.flip),
      ),
    );
  }
}
