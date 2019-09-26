/*****************************CardView********************************/
import 'package:flutter/material.dart';
import 'package:flutter_learn/res/list_data.dart';
class CardViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(children: _getItemLikeNetData()
//      listData.map((value) {
//        return Card(
//          margin: EdgeInsets.all(5.0),
//          child: Column(
//            children: <Widget>[
//              AspectRatio(
//                  aspectRatio: 16.0 / 9.0, //AspectRatio控件控制子元素的宽高比
//                  child: Image.network(
//                    value["imageurl"],
//                    fit: BoxFit.cover,
//                  )),
//              ListTile(
//                leading: CircleAvatar(
//                  backgroundImage: NetworkImage(value["imageurl"]),
//                ),
//                title: Text(value["title"]),
//                subtitle: Text(value["author"]),
//              )
//            ],
//          ),
//        );
//      }).toList(),
    );
  }
}

List<Widget> _getItemLikeNetData() {
  return listData.map((value) {
    return Card(
      child: Column(
        children: <Widget>[
          AspectRatio(
              aspectRatio: 14.0 / 9.0, //AspectRatio控件控制子元素的宽高比
              child: Image.network(value["imageurl"])),
          ListTile(
//            leading: ClipOval(
//              //ClipOval圆形头像的控件
//              child: Image.asset("images/a.jpg",fit: BoxFit.cover,width: 40.0, height: 40.0,),
//            ),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(value["imageurl"]),
            ),
            title: Text(value["title"]),
            subtitle: Text(value["author"]),
          )
        ],
      ),
    );
  }).toList();
}

List<Widget> _getItemNormal() {
  List<Widget> list = new List();
  for (var i = 0; i < 20; i++) {
    list.add(Card(
      child: Column(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 16.0 / 9.0, //AspectRatio控件控制子元素的宽高比
            child: Image.asset("images/a.jpg"),
          ),
          ListTile(
//            leading: ClipOval(
//              //ClipOval圆形头像的控件
//              child: Image.asset("images/a.jpg",fit: BoxFit.cover,width: 40.0, height: 40.0,),
//            ),
            leading: CircleAvatar(
              backgroundImage: AssetImage("images/a.jpg"),
//              radius: 10.0,
            ),
            title: Text("张三$i"),
            subtitle: Text("高级工程师$i"),
          )
        ],
      ),
    ));
  }

  return list;
}