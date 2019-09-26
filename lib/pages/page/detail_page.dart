import 'package:flutter/material.dart';



class DetailsPage extends StatelessWidget{
  String title;
  final arguments;
  DetailsPage({this.title="构造方法自带数据",this.arguments});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("详情页面"),
      ),
      body: Text(this.title),

      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.of(context).pop();
      },child: Text("返回"),),
    );
  }
}