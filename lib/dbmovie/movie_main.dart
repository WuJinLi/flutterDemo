import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_learn/api/apis.dart';

class MovieMainPage extends StatefulWidget {
  @override
  createState() => _MovieMainState();
}

class _MovieMainState extends State<MovieMainPage> {
  Filmtype filmtype = Filmtype.IN_THEATERS;
  String title = '正在热映';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      drawer: Drawer(
        child: _drawer(),
      ),
      body: _bodyContent(),
    );
  }

  Widget _bodyContent() {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Center(
        child: Text(this.title),
      ),
    );
  }

  _drawer() {
    return ListView(
      children: <Widget>[
        drawerItem("正在热映", Icon(Icons.hot_tub), Filmtype.IN_THEATERS),
        Divider(),
        drawerItem("即将上映", Icon(Icons.hot_tub), Filmtype.COMING_SOON),
        Divider(),
        drawerItem("新片榜", Icon(Icons.hot_tub), Filmtype.NEW_MOVIES),
        Divider(),
        drawerItem("口碑榜", Icon(Icons.hot_tub), Filmtype.WEEKLY),
        Divider(),
        drawerItem("Top250", Icon(Icons.hot_tub), Filmtype.TOP250),
        Divider(),
        drawerItem("北美票房榜", Icon(Icons.hot_tub), Filmtype.US_BOX),
      ],
    );
  }

  Widget drawerItem(String title, Icon icon, Filmtype filmtype) {
    return ListTile(
      title: Text(title),
      leading: CircleAvatar(
        child: icon,
      ),
      onTap: () {
        this.filmtype = filmtype;
        _switchTitle();
        setState(() {});
        Navigator.pop(context); //关闭抽屉
      },
    );
  }

  _switchTitle() {
    switch (filmtype) {
      case Filmtype.IN_THEATERS:
        title = "正在热映";
        break;
      case Filmtype.COMING_SOON:
        title = "即将上映";
        break;
      case Filmtype.NEW_MOVIES:
        title = "新片榜";
        break;
      case Filmtype.WEEKLY:
        title = "口碑榜";
        break;
      case Filmtype.TOP250:
        title = "Top250";
        break;
      case Filmtype.US_BOX:
        title = "北美票房榜";
        break;
    }
  }
}
