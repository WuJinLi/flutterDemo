import 'package:date_format/date_format.dart';
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
  var _nowDate = DateTime.now(); //初始化的日期
  var _nowTime = TimeOfDay(
      hour: DateTime.now().hour, minute: DateTime.now().minute); //初始化的时间

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
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  child: Row(
                    children: <Widget>[
                      Text("${formatDate(this._nowDate, [
                        yyyy,
                        '-',
                        mm,
                        '-',
                        dd
                      ])}"),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                  onTap: () {
//                    this._showDatePickerNormal();
                    this._showDatePickerAsync();
                  },
                ),
                InkWell(
                  child: Row(
                    children: <Widget>[
                      Text("${this._nowTime.format(context)}"),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                  onTap: () {
//                    this._showTimePickerNormal();
                    this._showTimePickerAsync();
                  },
                ),
              ],
            )
          ],
        )),
      ),
    );
  }

  /**
   * 获取日期的方法
   */
  _showDatePickerNormal() {
    //由于showDatePicker返回参数值为Future，所以在使用时涉及到异步调用，可食用两种方法来实现
    //1.then（（value）{}）关键子来完成
    //2.使用async await实现
    showDatePicker(
      context: context,
      initialDate: this._nowDate,
      firstDate: DateTime(1980),
      lastDate: DateTime(2200),
      locale: Locale('zh'),
    ).then((result) {
      setState(() {
        if (result != null) this._nowDate = result;
      });
    });
  }

  _showDatePickerAsync() async {
    var result = await showDatePicker(
      context: context,
      initialDate: this._nowDate,
      firstDate: DateTime(1980),
      lastDate: DateTime(2200),
      locale: Locale('zh'),
    );

    setState(() {
      if (result != null) this._nowDate = result;
    });
  }

  _showTimePickerNormal() {
    showTimePicker(context: context, initialTime: this._nowTime).then((result) {
      setState(() {
        if (result != null) this._nowTime = result;
      });
    });
  }

  _showTimePickerAsync() async {
    var result = await showTimePicker(
      context: context,
      initialTime: this._nowTime,
    );

    setState(() {
      if (result != null) this._nowTime = result;
    });
  }
}
