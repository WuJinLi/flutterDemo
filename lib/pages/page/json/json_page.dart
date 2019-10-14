import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter_learn/res/data_resc.dart';
import 'package:flutter_learn/pages/page/json/author.dart';
import 'package:flutter_learn/pages/page/json/book.dart';

class JsonPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _JsonState();
}

class _JsonState extends State<JsonPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Json数据解析"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
//            Text("${user.}"),
            RaisedButton(
              onPressed: () {
                this._dealData();
              },
              child: Text("json解析数据"),
            )
          ],
        ),
      ),
    );
  }

  void _dealData() {
    setState(() {
      var book = Book.fromJson(bookData);
      print("name:${book.name},publishDate:${book.publishDate}");
    });
  }
}
