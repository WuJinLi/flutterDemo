import 'package:flutter/material.dart';
import 'package:flutter_learn/pages/page/json/author.dart';
import 'package:flutter_learn/pages/page/json/book.dart';

class JsonPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _JsonState();
}

class _JsonState extends State<JsonPage> {
  var bookname = ""; //书名成
  var author = ""; //作者
  var publishDate = ""; //出版日期
  var publisher = ""; //出版社
  var content;

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
            TextField(
              onChanged: (value) {
                setState(
                  () {
                    this.bookname = value;
                  },
                );
              },
              decoration: InputDecoration(labelText: "书名"),
            ),
            TextField(
              onChanged: (value) {
                setState(
                  () {
                    this.author = value;
                  },
                );
              },
              decoration: InputDecoration(labelText: "作者"),
            ),
            TextField(
              onChanged: (value) {
                setState(
                  () {
                    this.publisher = value;
                  },
                );
              },
              decoration: InputDecoration(labelText: "出版社"),
            ),
            TextField(
              onChanged: (value) {
                setState(
                  () {
                    this.publishDate = value;
                  },
                );
              },
              decoration: InputDecoration(labelText: "出版日期"),
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: RaisedButton(
                  onPressed: () {
                    this._dealData();
                  },
                  child: Text("json解析数据"),
                ))
              ],
            ),
            Container(
              width: double.infinity,
              child: Text("${this.content}"),
            )
          ],
        ),
      ),
    );
  }

  void _dealData() {
    setState(() {
      content = Book(this.bookname, Author(this.author), this.publishDate,
              this.publisher)
          .toJson();
    });
  }
}
