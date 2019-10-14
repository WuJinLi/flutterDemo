import 'package:flutter/material.dart';
import 'package:flutter_learn/res/data_resc.dart';
import 'package:toast/toast.dart';

class CategroyPage extends StatefulWidget {
  @override
  _CategroyState createState() => _CategroyState();
}

class _CategroyState extends State<CategroyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        title: Text("分类"),
//      ),
      body: Container(
        child: ListView(
          children: listData.map((value) {
            return ListTile(
//              leading: Image.network(value["imageurl"],fit: BoxFit.cover,),
              title: Text(value["title"]),
              subtitle: Text(value["author"]),
              onTap: () {
                Toast.show(value["title"], context, duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);//显示toast
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
