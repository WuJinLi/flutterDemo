import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  String title;
  final arguments;

  DetailsPage({this.title, this.arguments});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("详情页面"),
      ),
      body: Center(
//        child: Text(this.title),
        child: Text("${title},${arguments != null ? arguments['result']:""}"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Text("返回"),
      ),
    );
  }
}

