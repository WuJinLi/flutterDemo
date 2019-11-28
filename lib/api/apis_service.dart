import 'package:flutter/material.dart';
import 'package:flutter_learn/api/apis.dart';
import 'package:flutter_learn/model/login_model.dart';
import 'package:flutter_learn/model/rule_modle.dart';
import 'package:flutter_learn/utils/net/dio_manager.dart';
import 'package:flutter_learn/widget/loading_dialog.dart';

ApiService _apiService = new ApiService();

ApiService get apiService => _apiService;

class ApiService {
  //获取预报天气
  void getNormalWeather(BuildContext context, Function callback,
      {weatherType, location}) async {
    //显示加载框
    showDialog(
        context: context,
        builder: (context) {
          return LoadingDialog();
        });
    dio.get(Apis.weatherTypeNow(weatherType: weatherType)).then((response) {
      //隐藏提示框
      Navigator.pop(context);
      //处理借口返回数据
      callback(RuleModle.fromMap(response.data));
    });
  }

  void login(Function callback, Function errorCallback, Map data) {
    dio.post("/app/login", data: data).then((response) {
      callback(LoginModel.fromMap(response.data));
    }).catchError((e) {
      errorCallback(e);
    });
  }
}
