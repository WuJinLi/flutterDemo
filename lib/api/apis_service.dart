import 'package:flutter/material.dart';
import 'package:flutter_learn/api/apis.dart';
import 'package:flutter_learn/model/goods_model.dart';
import 'package:flutter_learn/model/login_model.dart';
import 'package:flutter_learn/model/query_goods_model.dart';
import 'package:flutter_learn/model/rule_modle.dart';
import 'package:flutter_learn/utils/net/dio_manager.dart';

ApiService _apiService = new ApiService();

ApiService get apiService => _apiService;

class ApiService {
  //获取预报天气
  void getNormalWeather(BuildContext context, Function callback,
      {weatherType, location}) {
    dio.get(Apis.weatherTypeNow(weatherType: weatherType)).then((response) {
      //隐藏提示框
      //处理借口返回数据
      callback(RuleModle.fromMap(response.data));
    });
  }

  //登陆
  void login(Function callback, Function errorCallback, Map data) {
    dio.post("/app/login", data: data).then((response) {
      callback(LoginModel.fromMap(response.data));
    }).catchError((e) {
      errorCallback(e);
    });
  }

  /**
   * 查询商品信息列表
   */
  void queryGoods(
      BuildContext context, Function callback, Function errorCallback) {
    Map<String, dynamic> data = new Map();
    data['page'] = "0";
    data['limit'] = "40";
    dio.post(Apis.LIST_GOODS, data: data).then((response) {
      callback(QueryGoodsModel.fromMap(response.data));
//      callback(response.data);
    }).catchError((e) {
      errorCallback(e);
    });
  }

  /**
   * 新增商品
   */
  void saveGoods(BuildContext context, GoodsModel goodsModel, Function callback,
      Function errorCallback) {
    dio.post(Apis.SAVE_GOODS, data: goodsModel.toJson()).then((response) {
      callback(response);
    }).catchError((e) {
      errorCallback(e);
    });
  }

  ///删除商品
  void deleteGood(
      BuildContext context, int id, Function callback, Function errorCallback) {
    ///拼接接口访问业务数据
    Map<String, dynamic> data = new Map();
    List<dynamic> list = new List();
    list.add(id);
    data['goodsIds'] = list;
    ///服务请求
    dio.post(Apis.DELETE_GOODS, data: data).then((response) {
      callback(response.data);
    }).catchError((e) {
      errorCallback(e);
    });
  }

  ///更新商品
  void updateGoods(BuildContext context, GoodsModel goodsModel,
      Function callback, Function errorCallback) {
    dio.post(Apis.UPDATE_GOODS, data: goodsModel.toJson()).then((response) {
      callback(response);
    }).catchError((e) {
      errorCallback(e);
    });
  }
}
