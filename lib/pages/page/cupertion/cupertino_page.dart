import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * 该页面展示的是ios风格组件
 */
class CupertinoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CupertinoPageState();
}

class _CupertinoPageState extends State<CupertinoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cupertion风格组件ios风格展示页面'),
      ),
      body: Container(
          padding: EdgeInsets.all(10.0),
          child: ListView(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                      child: CupertinoButton(
                    onPressed: () {
                      _showLoading(context);
                    },
                    color: Colors.blue[200],
                    child: Text('loading指示器'),
                  ))
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: <Widget>[
                  Expanded(
                      child: CupertinoButton(
                    onPressed: () {
                      _AlertDialog(context);
                    },
                    color: Colors.blue[200],
                    child: Text('对话框'),
                  ))
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: <Widget>[
                  Expanded(
                    child: CupertinoButton(
                      child: Text('ios风格的按钮'),
                      onPressed: () {
                        Navigator.pushNamed(context, '/cupertino_detail');
                      },
                      color: Colors.blue[200],
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }

  /**
   * 展示加载框，loading加载框
   * 注意：没有关闭loading
   */
  void _showLoading(context) {
    showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: CupertinoActivityIndicator(
              radius: 20.0,
            ),
          );
        });
  }

  /**
   * SingleChildScrollView包裹对话框展示的内容
   */
  void _AlertDialog(context) {
    showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: CupertinoAlertDialog(
              title: Text('提示信息'),
              actions: <Widget>[
                CupertinoDialogAction(
                  child: Text('确定'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                CupertinoDialogAction(
                  child: Text('取消'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[Text('是否删除？'), Text('一旦删除数据不可恢复！')],
                ),
              ),
            ),
          );
        });
  }
}
