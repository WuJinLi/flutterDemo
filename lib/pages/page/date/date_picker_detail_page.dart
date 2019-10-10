import 'package:flutter/material.dart';

class DatePickerDetailPage extends StatefulWidget {
  final arguments;

  DatePickerDetailPage({this.arguments});

  @override
  State<StatefulWidget> createState() =>
      _DatePickerDetailState(arguments: this.arguments);
}

class _DatePickerDetailState extends State<DatePickerDetailPage> {
  final arguments;
  var typeFlag;

  _DatePickerDetailState({this.arguments});

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var type = arguments['type'] as String;
    if (type.isEmpty) {
      typeFlag = 1;
    } else {
      switch (type) {
        case '1':
          typeFlag = 1;
          break;
        case '2':
          typeFlag = 2;
          break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("时间选择"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
          child: Text(typeFlag == 1 ? '系统时间组件' : '三方组件'),
        ),
      ),
    );
  }
}
