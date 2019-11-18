import 'package:flutter/material.dart';
import 'package:flutter_learn/utils/dbhelper.dart';

import 'check_result_page.dart';

class SqfliteMainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SqfliteMainState();
}

class _SqfliteMainState extends State<SqfliteMainPage> {
  TextEditingController controller_name = new TextEditingController();
  TextEditingController controller_id = new TextEditingController();

  Widget _inputArea() {
    return Column(
      children: <Widget>[
        _inputItem('输入人员id', "人员id", controller_id),
        _inputItem('输入人员name', "人员name", controller_name),
      ],
    );
  }

  Widget _inputItem(
      String hintText, String labelText, TextEditingController controller) {
    return Row(
      children: <Widget>[
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              labelText: labelText,
              hintText: hintText,
            ),
            controller: controller,
          ),
        ),
      ],
    );
  }

  Widget _itemControllerArea() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          child: FlatButton(
              onPressed: () {
                _save();
              },
              child: Text('添加')),
        ),
        Expanded(
          child: FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    _clearInputContent();
                    return CheckInResult();
                  }),
                );
              },
              child: Text('查询')),
        )
      ],
    );
  }

  /**
   * 保存
   */
  _save() {
    if (controller_name.text.isEmpty) {
      print('name is empty');
      return;
    }
    User user = User();
    user.name = controller_name.text;
    user.id = int.parse(controller_id.text);

    DBHelper.instance.insert(user);

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        _clearInputContent();
        return CheckInResult();
      }),
    );
  }

  _clearInputContent() {
    if (controller_name.text.isNotEmpty || controller_id.text.isNotEmpty) {
      controller_id.text = '';
      controller_name.text = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('sqflite数据库'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _inputArea(),
              _itemControllerArea(),
            ],
          ),
        ),
      ),
    );
  }
}
