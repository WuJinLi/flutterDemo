import 'package:flutter/material.dart';

/**
 * 忽略事件：
 * IgnorePointer：此节点及其子节点都将忽略点击事件，用ignoring参数来配置
 * AbsorbPointer：这个组件本身回消费当前事件，他会阻止事件传播到其他子节点；
 *
 * 可见IgnorePointer与AbsorbPointer的区别就是前者自身不再接受事件，后者本身可以接受事件
 *
 *
 * 当前demo实现的就是两种忽略事件组件实现效果的案例
 *
 */
class IgnoreEventPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _IgnoreEventState();
}

class _IgnoreEventState extends State<IgnoreEventPage> {
  bool _ignore = true;
  String parent_event = '';
  String child_event = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('忽略事件'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Switch(
                value: _ignore,
                onChanged: (value) {
                  setState(() {
                    this._ignore = value;
                    parent_event = '';
                    child_event = '';
                  });
                }),
            GestureDetector(
              //父节点事件
              onTap: () {
                setState(() {
                  parent_event = 'GestureDetector clicked';
                });
              },
              child: IgnorePointer(
                ignoring: _ignore,
                child: RaisedButton(
                  //子节点事件
                  onPressed: () {
                    setState(() {
                      child_event = 'IgnorePointer';
                    });
                  },
                  child: Text('IgnorePointer'),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  parent_event = 'GestureDetector clicked';
                });
              },
              child: AbsorbPointer(
                absorbing: _ignore,
                child: RaisedButton(
                  onPressed: () {
                    setState(() {
                      child_event = 'AbsorbPointer';
                    });
                  },
                  child: Text('AbsorbPointer'),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    '''
              $parent_event
              $child_event
              ''',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
