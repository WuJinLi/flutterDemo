import 'package:flutter/material.dart';

/**
 * indexStack实现指定child展示的布局的演
 * indexStack继承Stack，它的作用是显示第index个child，其他的子child都是不可见的
 * indexStack实现指定组件显示其他组件是隐藏状态的，
 */
class IndexStackLayout extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _IndexStackLayoutState();
}

class _IndexStackLayoutState extends State<IndexStackLayout> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('IndexStack'),
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
                    if (this.index == 0) {
                      setState(() {
                        this.index = 1;
                      });
                    } else if (this.index == 1) {
                      setState(() {
                        this.index = 0;
                      });
                    }
                  },
                  child: Text("切换显示"),
                ))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            IndexedStack(
              index: this.index,
              children: <Widget>[
//                Image.network(
//                    'http://img4.cache.netease.com/photo/0001/2010-04-17/64EFS71V05RQ0001.jpg'),
                Image.asset(
                  'images/ic_recycle.png',
                  width: 100,
                  height: 100,
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(color: Colors.black),
                  child: Text(
                    '我是文本信息',
                    style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: Text(
                  '当前indexStack属性index值为：${index}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blue[200],
                      fontWeight: FontWeight.bold),
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
