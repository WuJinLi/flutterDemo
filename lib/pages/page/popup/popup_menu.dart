import 'package:flutter/material.dart';

/**
 * 实现点击弹出菜单栏组件
 * 重点：
 * PopupMenuButton泛型
 * itemBuilder：参数方法的构建，可以参考sdk源码实例进行创建
 * PopupMenuEntry：包含数据的实体
 * PopupMenuItem：菜单单个条目展示信息
 * onSelected：选择指定条目的回调
 */

class PopupMenuPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PopupMenuState();
}

class _PopupMenuState extends State<PopupMenuPage> {
  var _selectResult = "";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("弹出菜单组件"),
        actions: <Widget>[
          PopupMenuButton<ConferenceItem>(
            itemBuilder: (context) => <PopupMenuEntry<ConferenceItem>>[
              PopupMenuItem(
                child: Text('添加成员'),
                value: ConferenceItem.AddMembe,
              ),
              PopupMenuItem(
                child: Text('锁定会议'),
                value: ConferenceItem.LockConference,
              ),
              PopupMenuItem(
                child: Text('修改布局'),
                value: ConferenceItem.MidifyLayout,
              ),
              PopupMenuItem(
                child: Text('挂断所有'),
                value: ConferenceItem.TurnoffAll,
              ),
            ],
            onSelected: (result) {
//                        print(result);
              setState(() {
                switch (result) {
                  case ConferenceItem.AddMembe:
                    _selectResult = '添加成员';
                    break;

                  case ConferenceItem.LockConference:
                    _selectResult = '锁定会议';
                    break;
                  case ConferenceItem.MidifyLayout:
                    _selectResult = '修改布局';
                    break;
                  case ConferenceItem.TurnoffAll:
                    _selectResult = '挂断所有';
                    break;
                }
              });
            },
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: Text(
                  "${_selectResult}",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.black,
                  ),
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}

enum ConferenceItem { AddMembe, LockConference, MidifyLayout, TurnoffAll }
