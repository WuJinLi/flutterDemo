import 'dart:convert';

import 'package:dio/dio.dart';

import '../expor.dart';

class ErrorInterceptor extends InterceptorsWrapper {
  @override
  onRequest(RequestOptions options) async {
    return options;
  }

  @override
  onError(DioError error) async {
    String errorMsg = DioManager.handleError(error);
    return error;
  }

  @override
  onResponse(Response response) async {
    var data = response.data;

    if (data is String) {
      data = json.decode(data);
    }
    if (data is Map) {
      int errorCode = data['errorCode'] ?? 0;
      String errorMsg = data['errorMsg'] ?? '请求失败[$errorCode]';
      if (errorCode == 0) {
        return response;
      } else {
        return dio.reject(errorMsg);
      }
    }

    return response;
  }
}
