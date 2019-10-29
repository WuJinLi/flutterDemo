import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

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

  final String MIN_DATETIME = "1980-05-12 05:15:20";
  final String MAX_DATETIME = "2100-05-12 05:15:20";
  final String dateformat = 'YYYY-mm-dd';

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
//                    this._showDatePickerAsync();
                    this._checkDate();
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
////                    this._showTimePickerNormal();
//                    this._showTimePickerAsync();
                    this._checkTime();
                  },
                ),
              ],
            )
          ],
        )),
      ),
    );
  }

  void _checkDate() {
    switch (typeFlag) {
      case 1:
//      this._showDatePickerNormal();
        this._showDatePickerAsync();
        break;
      case 2:
        _checkDateByDatePicker();
        break;
    }
  }

  void _checkTime() {
    switch (typeFlag) {
      case 1:
        // this._showTimePickerNormal();
        this._showTimePickerAsync();
        break;
      case 2:
        this._checkTimeByTimePicker();
        break;
    }
  }


  /**
   * 注意：DateTime与TimeOfDay之间的用法
   */

  /******************************系统日期选择器******************************/
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
//      locale: Locale('zh'),
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
//      locale: Locale('zh'),
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

  /*******************************三方依赖库实现日期时间选择************************************/

  /**
   * 当前使用的是三方依赖库实现时间日期的选择
   * 1.配置三方依赖库：dependencies: flutter_datetime_picker: ^1.2.6
   * 2.使用时引入包：import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
   * 三方依赖包github地址：https://github.com/Realank/flutter_datetime_picker
   */

  /**
   * 展示日期选择组件
   * 日期组件 DatePicker.showDatePicker（）
   * minTime：起始时间
   * maxTime：截止最大时间
   * onConfirm:确定回调
   * currentTime：当前日期
   * locale:显示语言
   */
  void _checkDateByDatePicker() {
    DatePicker.showDatePicker(context,
        showTitleActions: true,
        minTime: DateTime(2018, 3, 5),
        maxTime: DateTime(2100, 6, 7), onConfirm: (date) {
      setState(() {
        this._nowDate = date;
      });
    }, currentTime: DateTime.now(), locale: LocaleType.zh);
  }

  /**
   * 展示时间选择组件
   * 时间组件： DatePicker.showTimePicker
   * currentTime：当前时间
   *
   */
  void _checkTimeByTimePicker() {
    DatePicker.showTimePicker(context, showTitleActions: true,
        onConfirm: (date) {
//      print(date);
//      print(date.hour);
//      print(date.minute);
      setState(() {
        this._nowTime = TimeOfDay(hour: date.hour, minute: date.minute);
//        print(this._nowTime.format(context));
//        print(this._nowTime);
      });
    }, currentTime: DateTime.now(), locale: LocaleType.zh);
  }
}
