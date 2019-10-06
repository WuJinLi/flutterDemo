import 'package:flutter/material.dart';
import 'package:flutter_learn/pages/tabs/home_page.dart';
import 'package:flutter_learn/pages/tabs/setting_spage.dart';
import 'package:flutter_learn/pages/tabs/categroy_page.dart';
import 'package:flutter_learn/pages/tabs/mine_page.dart';

/*****************************BottomNavigattionBar底部导航栏******************************/
class BottomBar extends StatefulWidget {
  var index;
  BottomBar({this.index=0});
  @override
  _BottomBarState createState() => _BottomBarState(index);
}

class _BottomBarState extends State<BottomBar> {
  int currentIndex = 0;
  List list=[HomePage(),CategroyPage(),SettingsPage(),MinePage()];

  _BottomBarState(index){
    this.currentIndex=index;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
////        title: Text("Flutter Demo"),
//      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页"),),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text("分类")),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text("设置")),
          BottomNavigationBarItem(
              icon: Icon(Icons.people), title: Text("我的"))
        ],
        onTap: (int index) {
          setState(() {
            this.currentIndex = index;
          });
        },
        currentIndex: this.currentIndex,
        type: BottomNavigationBarType.fixed,
      ),
      body: this.list[this.currentIndex],
    );
  }
}
