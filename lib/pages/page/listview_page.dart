import 'package:flutter/material.dart';
import 'package:flutter_learn/res/data_resc.dart';

class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text("ListView"),
        ),
        body: Padding(
          padding: EdgeInsets.all(4.0),
          child: Container(
              child: ListView(
                children: listData.map((value){
                  return ListTile(
                    title: Text(value["title"]),
                    subtitle: Text(value["author"]),
                    leading: Icon(Icons.title),
                  );
                }).toList()
              )),
        ),
      ),
    );
  }
}
