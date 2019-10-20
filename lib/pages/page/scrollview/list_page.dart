import 'package:flutter/material.dart';
import 'package:flutter_learn/res/data_resc.dart';

class ListPage extends StatefulWidget {
  var arguments;

  ListPage({this.arguments});

  @override
  State<StatefulWidget> createState() => _ListState(arguments: this.arguments);
}

class _ListState extends State<ListPage> {
  var arguments;
  var type = '1';

  _ListState({this.arguments});

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.type = arguments['type'];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("列表展示"),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: showWidget(),
      ),
    );
  }

    Widget showWidget() {
    if (type == '1') {
      print(type);
      return ListView.separated(
          separatorBuilder: (BuildContext context, int index) => Divider(),
          itemCount: listData.length,
          itemBuilder: (BuildContext context, int index) {
            var data = listData[index];
            return ListTile(
              leading: Image.network(
                "http://img4.cache.netease.com/photo/0001/2010-04-17/64EFS71V05RQ0001.jpg",
                fit: BoxFit.cover,
              ),
              title: Text(data['title']),
              subtitle: Text(data['author']),
            );
          });
    } else {
      return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: listData.length,
        itemBuilder: (BuildContext context, int index) {
          var data = listData[index];
          return GridTile(
            child: Image.network(
                'http://img4.cache.netease.com/photo/0001/2010-04-17/64EFS71V05RQ0001.jpg'),
            header: Text(data['title'],style: TextStyle(fontSize:20.0,color: Colors.blue[100]),),
            footer: Text(data['author']),
          );
        },
      );
    }
  }
}
