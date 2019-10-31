import 'package:flutter/material.dart';

/**
 * 展示对话框页面，包含了simpleDialog(简单对话框)，AlertDialog（提示对话框），SnackBar（轻量级对话框）
 */
class DialogPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DialogState();
}

class _DialogState extends State<DialogPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('对话框展示页面'),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              width: double.infinity,
              height: 30.0,
              child: Text(
                'SimpleDialog',
                textAlign: TextAlign.start,
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20.0),
              ),
            ),
            Divider(),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: RaisedButton(
                onPressed: () {
//                  _simpleDialogAsync(context);
                  _simpleDialogThen(context);
                },
                child: Text('简单对话框'),
              ),
            )
          ],
        ),
      ),
    );
  }

  /**
   * 使用async await完成弹框业务
   *
   */
  void _simpleDialogAsync(context) async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text('简单对话框'),
            children: <Widget>[
              SimpleDialogOption(
                child: Text('选项一'),
                onPressed: () {
                  Navigator.pop(context, '选项一');
                },
              ),
              SimpleDialogOption(
                child: Text('选项二'),
                onPressed: () {
                  Navigator.pop(context, '选项二');
                },
              )
            ],
          );
        });
    print(result);
  }

  /**
   * 使用then方法完成提示框的业务操作
   */
  void _simpleDialogThen(context) {
    showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text('简单对话框'),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, '选项卡1');
                },
                child: Text('选项卡1'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, '选项卡2');
                },
                child: Text('选项卡2'),
              )
            ],
          );
        }).then((value) {
      print(value);
    });
  }
}
