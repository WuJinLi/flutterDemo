import 'package:flutter_learn/api/apis.dart';
import 'package:flutter_learn/model/rule_modle.dart';
import 'package:flutter_learn/utils/net/dio_manager.dart';

ApiService _apiService = new ApiService();

ApiService get apiService => _apiService;

class ApiService {
  void getNormalWeather(Function callback, {weatherType, location}) async {
    dio
        .get(Apis.weatherTypeNow())
        .then((response) {
      callback(RuleModle.fromMap(response.data));
    });
  }
}
