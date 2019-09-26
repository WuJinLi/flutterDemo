/*****************************StatefulWidget有状态组件******************************/
import 'package:flutter/material.dart';

class HomePageControlList extends StatefulWidget {
  @override
  _HomePageControlListState createState() => _HomePageControlListState();
}

class _HomePageControlListState extends State<HomePageControlList> {
  List list = new List();
  int count = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Stack(
        children: <Widget>[
          ListView(
            children: this.list.map((value) {
              return Center(
                child: ListTile(
                  title: Text(value),
                ),
              );
            }).toList(),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: RaisedButton(
              onPressed: () {
                setState(() {
                  count++;
                  list.add("${this.count}");
                });
              },
              child: Text("增加数据"),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: RaisedButton(
              onPressed: () {
                setState(() {
                  --count;
                  if (count == 0) {
                    list.clear();
                  } else if (count > 0) {
                    list.remove("${this.count}");
                  } else {
                    count = 0;
                    list.clear();
                  }
                });
              },
              child: Text("减少数据"),
            ),
          )
        ],
      ),
    );
  }
}

/**
 * 实现点击按钮进行页面数据的修改
 */
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Chip(label: Text("${this.count}")),
          SizedBox(height: 10.0),
          RaisedButton(
            onPressed: () {
              setState(() {
                count++;
              });
            },
            child: Text("点击增加"),
          ),
          SizedBox(
            height: 10.0,
          ),
          RaisedButton(
            onPressed: () {
              setState(
                () {
                  count--;
                },
              );
            },
            child: Text("点击减少"),
          ),
          SizedBox(
            height: 10.0,
          ),
          RaisedButton(
            onPressed: () {
              setState(
                () {
                  if (count != 0) {
                    count = 0;
                  }
                },
              );
            },
            child: Text("清除"),
          )
        ],
      ),
    );
  }
}
