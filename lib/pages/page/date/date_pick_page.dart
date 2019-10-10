import 'package:flutter/material.dart';

class DatePickerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePickerPage> {
  var now_time;
  var now_time_stamp;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("日期组件"),
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
                    Navigator.pushNamed(context, "/date_picker_detail_page",
                        arguments: {'type': '1'});
                  },
                  child: Text("系统提供日期选择"),
                ))
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/date_picker_detail_page",
                        arguments: {'type': '2'});
                  },
                  child: Text("三方提供日期选择"),
                ))
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: RaisedButton(
                  onPressed: () {
                    this._getNowTimeStamp();
                  },
                  child: Text("获取当前时间"),
                ))
              ],
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Text("当前时间:${this.now_time}"),
                  SizedBox(
                    height: 10,
                  ),
                  Text("对应时间戳：${this.now_time_stamp}")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  /**
   * 获取当前时间类DateTime
   * 获取当前时间：DateTime.now()
   * 转化为时间戳：DateTime.now().millisecondsSinceEpoch
   * 将时间戳转化为时间：DateTime.fromMillisecondsSinceEpoch(millisecondsSinceEpoch) millisecondsSinceEpoch->时间戳（int）
   */
  void _getNowTimeStamp() {
    setState(() {
      this.now_time = DateTime.now();
      print(now_time);
      this.now_time_stamp = (this.now_time as DateTime).millisecondsSinceEpoch;

      print(now_time_stamp);
    });
  }
}
