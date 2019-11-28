import 'package:flutter/material.dart';
import 'package:flutter_learn/api/apis.dart';
import 'package:flutter_learn/api/apis_service.dart';
import 'package:flutter_learn/model/rule_modle.dart';

/**
 * 二级菜单组件ExpansionTile
 */
class ExpansionTilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ExpansionTileState();
}

class _ExpansionTileState extends State<ExpansionTilePage> {
  var forecast = [];

  Widget _exItem(String title) {
    return Row(
      children: <Widget>[
        Expanded(
          child: ListTile(
            title: Text(title),
          ),
        ),
      ],
    );
  }

  /**
   * 获取网络数据
   */
  void _getForecast() {
    apiService.getNormalWeather(context, (RuleModle ruleModle) {
      setState(() {
        forecast = ruleModle.HeWeather6[0].daily_forecast;
      });
    }, weatherType: WEATHER_TYPE.FORECAST);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpansionTilew二级菜单'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: ListView.builder(
          itemBuilder: (context, index) {
            Daily_forecastBean forecastbean;
            //在index=0的时候展示布局：3-10天天气预报数据，其次则显示列表
            if (index == 0) {
              return ListTile(
                title: Text("3-10天天气预报数据"),
                leading: Icon(Icons.cloud),
                onTap: () {
                  _getForecast();
                },
              );
            } else {
              forecastbean = forecast[index - 1];
            }
            //二级菜单的item
            return ExpansionTile(
              title: Text("预报日期	${forecastbean.date}"),
              children: <Widget>[
                Column(
                  children:
//                    //简单粗暴方法
//                    forecast[index - 1].keys.map((value) {
//                  return _exItem(forecast[index - 1][value]);
//                }).toList()),
                      <Widget>[
                    _exItem("白天天气状况描述:${forecastbean.condTxtD}"),
                    _exItem("晚间天气状况描述:${forecastbean.condCodeN}"),
                    _exItem("风向:${forecastbean.windDir}"),
                    _exItem("风力: ${forecastbean.windSc}"),
                    _exItem("风速，公里/小时: ${forecastbean.windSpd}"),
                    _exItem("日出时间: ${forecastbean.sr}"),
                    _exItem("日落时间: ${forecastbean.ss}"),
                    _exItem("紫外线强度指数	: ${forecastbean.uvIndex}"),
                  ],
                )
              ],
            );
          },
          itemCount: forecast.length + 1,
        ),
      ),
    );
  }
}
