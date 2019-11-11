import 'package:flutter/material.dart';

/**
 * 原始指针事件：
 * 使用组件Listener进行子类组件包裹，使用其监听方法回调进行指定事件的处理：
 * 方法回调：
 * onPointerDown：手指按下回调
 * onPointerUp：手指抬起回调
 * onPointerMove：手指移动回调
 * onPointerCancel：触摸事件取消回调
 *
 * 上述对调方法参数是PointerDownEvent 该对象包含关于事件处理所有的数据，
 */
class OriginalEventPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _OriginalEventState();
}

class _OriginalEventState extends State<OriginalEventPage> {
  String _op = '未监测到事件';

  void _showEventText(text) {
    setState(() {
      _op = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('原始事件，组件Listener'),
      ),
      body: Center(
        child: Listener(
          child: Container(
            alignment: Alignment.center,
            color: Colors.blue,
            width: 240,
            height: 120,
            child: Text(
              _op,
              style: TextStyle(color: Colors.white),
            ),
          ),
          onPointerDown: (event) {
            _showEventText('onPointerDown');
          },
          onPointerUp: (event) {
            _showEventText('onPointerUp');
          },
          onPointerMove: (event) {
            _showEventText('onPointerMove');
          },
          onPointerCancel: (event) {
            _showEventText('onPointerCancel');
          },
        ),
      ),
    );
  }
}
