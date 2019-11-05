import 'package:flutter/material.dart';

/**
 * 实现布局的显示和隐
 * 属性：
 * offstage：bool 组件显示的标识
 */
class OffstageLayout extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _OffstageState();
}

class _OffstageState extends State<OffstageLayout> {
  bool offstage = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('offstage是否显示组件'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        this.offstage = !offstage;
                      });
                    },
                    child: Text(!this.offstage ? '隐藏组件' : '显示组件'),
                  ),
                )
              ],
            ),
            Expanded(
                child: Center(
              child: Offstage(
                offstage: this.offstage,
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  color: Colors.cyan,
                  alignment: Alignment.center,
                  child: Text(
                    '我展示出来了',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white),
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
