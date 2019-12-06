import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learn/widget/loading_dialog.dart';

showLoadingDialog(BuildContext context, String text) async {
  showDialog<Null>(
      context: context, //BuildContext对象
      barrierDismissible: false,
      builder: (BuildContext context) {
        /// 调用对话框
        return LoadingDialogWidget(text: text);
      });
}

class LoadingDialogWidget extends Dialog {
  final String text;

  LoadingDialogWidget({
    Key key,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return getLoadingWidget(text: text, bgColor: Colors.white);
  }
}

Widget getLoadingWidget(
    {String text: '加载中...', Color bgColor: const Color(0x4b000000)}) {
  return LoadingDialog();
}
