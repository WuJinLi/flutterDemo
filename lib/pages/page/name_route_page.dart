import 'package:flutter/material.dart';

class NameRoutePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NameRouteState();
}

class _NameRouteState extends State<NameRoutePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("有状态页面"),
      ),
      body: Center(
        child: Text("命名路由"),
      ),
    );
  }
}
