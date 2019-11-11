import 'package:flutter/material.dart';
import 'package:flutter_learn/pages/page/event/original_event_page.dart';

import 'gesturedetector_main.dart';
import 'ignore_event.dart';

class EventMainPage extends StatelessWidget {
  /**
   * context:上下文对象
   * title:按钮内容
   * widget:组件实例
   */
  Widget _itemButton(context, title, widget) {
    return Row(
      children: <Widget>[
        Expanded(
          child: FlatButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return widget;
              }));
            },
            child: Text(title),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('事件处理')),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            _itemButton(context, '原始事件listener', OriginalEventPage()),
            Divider(),
            _itemButton(context, '忽略事件', IgnoreEventPage()),
            Divider(),
            _itemButton(context, '手势GestureDetector', GestureDetectorMainPage()),

          ],
        ),
      ),
    );
  }
}
