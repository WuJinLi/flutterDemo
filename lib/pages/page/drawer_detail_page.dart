import 'package:flutter/material.dart';

/**
 * 抽屉页面跳转到的详情页面
 */
class DrawerDetailPage extends StatefulWidget {
  final arguments;

  DrawerDetailPage({this.arguments});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DrawerDetailState(arguments);
  }
}

class _DrawerDetailState extends State<DrawerDetailPage> {
  final arguments;

  _DrawerDetailState(this.arguments);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(arguments["content"]),
      ),
      body: Center(
        child: Text(arguments["content"]),
      ),
    );
  }
}
