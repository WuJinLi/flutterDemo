import 'package:flutter/material.dart';

/**
 * 编写简单的学生信息的页面，通过按钮来获取组件中的信息
 */
class StudentInfoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StudentInfoState();
}

class _StudentInfoState extends State<StudentInfoPage> {
  var colunm_space = SizedBox(
    height: 10.0,
  );
  var row_space = SizedBox(
    width: 10.0,
  );
  var username = ''; //用户名
  var age = ""; //年龄
  var sex = 1; //性别
  var email = ""; //邮箱
  var hobby = [
    {
      "title": "篮球",
      "checked": false,
    },
    {
      "title": "足球",
      "checked": false,
    },
    {
      "title": "乒乓球",
      "checked": false,
    },
    {
      "title": "排球",
      "checked": false,
    },
    {
      "title": "台球",
      "checked": false,
    },
    {
      "title": "其他",
      "checked": false,
    },
  ]; //爱好
  var remark = ""; //备注信息

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("学生信息"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: "请输入姓名", labelText: "姓名"),
              onChanged: (value) {
                setState(() {
                  this.username = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(hintText: "请输入年龄", labelText: "年龄"),
              onChanged: (value) {
                setState(() {
                  this.age = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(hintText: "请输入邮箱", labelText: "邮箱"),
              onChanged: (value) {
                setState(() {
                  this.email = value;
                });
              },
            ),
            Row(
              children: <Widget>[
                Text("性别："),
                Text("男 "),
                Radio(value: 1, groupValue: this.sex, onChanged: _setSex),
                Text("女 "),
                Radio(value: 2, groupValue: this.sex, onChanged: _setSex)
              ],
            ),
            Text("爱好："),
            Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.grey, width: 1.0, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Wrap(
                  children: _hobbys(),
                )),
            Text("备注："),
            TextField(
              decoration: InputDecoration(
                  hintText: "输入备注信息", border: OutlineInputBorder()),
            ),
            Container(
              width: double.infinity,
              child: RaisedButton(
                onPressed: () {
                  print("username:${this.username}");
                  print("sex:${this.sex}");
                  print("hobby:${this.hobby}");
                  print("email:${this.email}");
                  print("age:${this.age}");
                },
                child: Text('提交'),
              ),
            )
          ],
        ),
      ),
    );
  }

  //设置性别选择
  void _setSex(value) {
    setState(() {
      this.sex = value;
    });
  }

  List<Widget> _hobbys() {
    List<Widget> temp = new List();

    for (var i = 0; i < hobby.length; i++) {
      temp.add(Row(
        children: <Widget>[
          Text(hobby[i]['title']),
          Checkbox(
            value: hobby[i]['checked'],
            onChanged: (value) {
              setState(() {
                hobby[i]['checked'] = value;
              });
            },
          )
        ],
      ));
    }
    return temp;
  }
}
