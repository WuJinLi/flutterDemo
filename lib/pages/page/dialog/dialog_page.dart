import 'package:flutter/material.dart';

/**
 * 展示对话框页面，包含了simpleDialog(简单对话框)，AlertDialog（提示对话框），SnackBar（轻量级对话框）
 * 注意：
 * 在使用snackbar是会涉及到异常情况：Scaffold.of() called with a context that does not contain a Scaffold，
 * 解决方法：在外层build之内重新创建StatelessWidget对象放置在该层body下再加一层Builder
 */
class DialogPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DialogState();
}

class _DialogState extends State<DialogPage> {
  var result;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('对话框展示页面'),
      ),
      body: MyScaffoldBody(),
    );
  }
}

class MyScaffoldBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
          ),
          Divider(),
          Container(
            alignment: Alignment.centerLeft,
            width: double.infinity,
            height: 30.0,
            child: Text(
              'AlertDialog',
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
//                  _showAlertDialogThen(context);
                _showAlertDialogAsync(context);
              },
              child: Text('提示对话框'),
            ),
          ),
        ],
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
    Scaffold.of(context)
        .showSnackBar(SnackBar(content: Text('选择结果为：${result}')));
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
      Scaffold.of(context)
          .showSnackBar(SnackBar(content: Text('选择结果为：${value}')));
    });
  }

  /**
   * 异步弹出对话框
   */
  void _showAlertDialogThen(context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('提示'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[Text('是否删除'), Text('一旦删除数据不可恢复！')],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context, '确定');
                  },
                  child: Text('确定')),
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context, '取消');
                  },
                  child: Text('取消'))
            ],
          );
        }).then((result) {
      Scaffold.of(context)
          .showSnackBar(SnackBar(content: Text('选择结果为：${result}')));
    });
  }

  /**
   * 异步执行弹对话框
   */
  void _showAlertDialogAsync(context) async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Container(
              alignment: Alignment.center,
              width: double.infinity,
              child: Text('提示信息'),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[Text('是否删除'), Text('一旦删除数据不可恢复！')],
              ),
            ),
            actions: <Widget>[
              Container(
                  width: 300,
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: FlatButton(
                          onPressed: () {
                            Navigator.pop(context, '确定');
                          },
                          child: Text('确定'),
                        ),
                      ),
                      Expanded(
                          child: FlatButton(
                              onPressed: () {
                                Navigator.pop(context, '取消');
                              },
                              child: Text('取消')))
                    ],
                  )),
            ],
          );
        });
    Scaffold.of(context)
        .showSnackBar(SnackBar(content: Text('选择结果为：${result}')));
  }
}
