import 'package:flutter/material.dart';
import 'package:flutter_learn/pages/page/json/book.dart';
import 'package:flutter_learn/res/data_resc.dart';

class JsonPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _JsonState();
}

class _JsonState extends State<JsonPage> {
  var bookname = ""; //书名成
  var name = ""; //作者
  var publishDate = ""; //出版日期
  var publisher = ""; //出版社
  var content;//放置内容的变量
  var flag=false;//false标记对象->json  true：json->对象

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
                    this.name = value;
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
                    setState(() {
                      this.flag=false;
                    });
                    this._dealData();
                  },
                  child: Text("对象生成JSON"),
                ))
              ],
            ),

            Row(
              children: <Widget>[
                Expanded(
                    child: RaisedButton(
                      onPressed: () {
                        setState(() {
                          this.flag=true;
                        });
                        this._dealData();
                      },
                      child: Text("解析json字符串"),
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
  //处理将对象转换成json的方法
  void _dealData() {
    setState(() {
      if(flag){
        Book book=Book.fromJson(bookData);
        content="解析后的数据：\n bookname:${book.name} \n auhhor:${book.author.name} \n publishDate:${book.publishDate} \n publisher:${book.publisher}";
      }else{
        content=Book(this.bookname, Author(this.name), this.publishDate, this.publisher).toJson();
      }
    });
  }
}
