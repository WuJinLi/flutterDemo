import 'package:flutter/material.dart';

/**
 * Checkbox属性：
 * onChanged：勾选方法回调
 * activeColor：勾选框选中的颜色
 * checkColor：勾选中后对勾的颜色
 * value:默认勾选状态boolean
 *
 *CheckboxListTile属性：
 *onChanged：勾选方法回调
 * activeColor：勾选框选中的颜色
 * checkColor：勾选中后对勾的颜色
 * value:默认勾选状态boolean
 * title:主标题
 * subtitle:子标题
 * secondary:图标
 */
class CheckboxPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CheckboxState();
}

class _CheckboxState extends State<CheckboxPage> {
  var _flag = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("checkbox"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Checkbox",
              style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: this._flag,
                  onChanged: (value) {
                    setState(() {
                      this._flag = value;
                    });
                  },
                  activeColor: Colors.green, //勾选框选中的颜色
                  checkColor: Colors.grey, //勾选中后对勾的颜色
                ),
                Expanded(
                  child: Text(
                    this._flag ? "选中" : "未选中",
                    style: TextStyle(
                        color: this._flag ? Colors.green : Colors.grey),
                  ),
                )
              ],
            ),
            Divider(),
            Text(
              "CheckboxListTile",
              style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
            ),
            CheckboxListTile(
              value: this._flag,
              onChanged: (value) {
                setState(() {
                  this._flag = value;
                });
              },
              title: Text("主标题"),
              //主标题
              subtitle: Text("子标题"),
              //子标题
              secondary: Icon(Icons.check),
              //图标
              activeColor: Colors.green,
              //勾选框选中的颜色
              checkColor: Colors.grey, //勾选中后对勾的颜色
            )
          ],
        ),
      ),
    );
  }
}
