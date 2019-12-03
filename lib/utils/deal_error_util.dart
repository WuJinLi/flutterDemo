import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_learn/utils/net/dio_manager.dart';
import 'package:toast/toast.dart';

/**
 * 简单处理错误，具体业务具体详细操作
 */
void dealError(
  DioError dioError,
  BuildContext context,
) {
  toast(context, DioManager.handleError(dioError));
}

/**
 * toast弹框显示信息
 */
void toast(BuildContext context, String msg) {
  Toast.show(msg, context, duration: Toast.LENGTH_SHORT, gravity: Toast.CENTER);
}
