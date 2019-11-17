import 'package:flutter/material.dart';
import 'package:flutter_learn/utils/dbhelper.dart';

class SqfliteItemDetailPage extends StatefulWidget {
  User user;

  SqfliteItemDetailPage(@required this.user);

  @override
  State<StatefulWidget> createState() => _SqfliteItemDetailState(this.user);
}

class _SqfliteItemDetailState extends State<SqfliteItemDetailPage> {
  User user;

  _SqfliteItemDetailState(@required this.user);

  var item_id = '';
  TextEditingController controller_name = new TextEditingController();

  @override
  void initState() {
    super.initState();
    item_id = this.user.id.toString();
    if (user.name.isNotEmpty) {
      controller_name = new TextEditingController(text: user.name);
    } else {
      controller_name = new TextEditingController();
    }
  }

  _update(
    BuildContext context,
    User user,
  ) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('提示信息'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[Text('是否修改'), Text('一旦修改数据不可恢复')],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  DBHelper.instance.update(user);
                  Navigator.pushNamedAndRemoveUntil(context,
                      '/check_result_page', (Route<dynamic> route) => false);
                },
                child: Text('确定'),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pop(context, '取消');
                },
                child: Text('取消'),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('单条信息详情页'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[Expanded(child: Text('用户id：$item_id'))],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: TextField(
                    controller: controller_name,
                    decoration: InputDecoration(
                        labelText: '用户name', hintText: '输入用户name'),
                  ))
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: FlatButton(
                          onPressed: () {
                            _update(
                              context,
                              new User()
                                ..id = int.parse(item_id)
                                ..name = controller_name.text,
                            );
                          },
                          child: Text('修改')))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
