import 'package:flutter/material.dart';

class CustomThemePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CustomThemeState();
}

class _CustomThemeState extends State<CustomThemePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("自定义主题"),
      ),
      body: Center(
        child: Container(
          color: Theme.of(context).accentColor,
          child: Text(
            '带背景颜色文本组件',
            style: Theme.of(context).textTheme.title,
          ),
        ),
      ),
      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(accentColor: Colors.grey),
        child: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.computer),
        ),
      ),
    );
  }
}
