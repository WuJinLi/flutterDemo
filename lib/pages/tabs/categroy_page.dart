import 'package:flutter/material.dart';
import 'package:flutter_learn/res/list_data.dart';
class CategroyPage extends StatefulWidget {
  @override
  _CategroyState createState() => _CategroyState();
}

class _CategroyState extends State<CategroyPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: listData.map((value){
          return ListTile(
            title: Text(value["title"]),
            subtitle: Text(value["author"]),
          );
        }).toList(),
      ),
    );
  }
}
