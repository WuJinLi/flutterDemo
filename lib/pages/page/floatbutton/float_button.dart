import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

/**
 * 使用FloatingActionButton实现底部导航的功能
 * backgroundColor：设置button的背景色；
 * child：设置button的显示内容如图标
 * floatingActionButtonLocation：设置button的位置
 *
 */
class FloatButtonPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatButtonState();
  }
}

class _FloatButtonState extends State<FloatButtonPage> {
  final tabs = ["主页", "分类", "添加", "信息", "我的"];
  final bodys = [
    Center(
      child: Text("主页"),
    ),
    Center(
      child: Text("分类"),
    ),
    Center(
      child: Text("添加"),
    ),
    Center(
      child: Text("信息"),
    ),
    Center(
      child: Text("我的"),
    ),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(tabs[this.currentIndex]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("主页")),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text("分类")),
          BottomNavigationBarItem(icon: Icon(Icons.add), title: Text("添加")),
          BottomNavigationBarItem(icon: Icon(Icons.message), title: Text("信息")),
          BottomNavigationBarItem(icon: Icon(Icons.people), title: Text("我的")),
        ],
        onTap: (int index) {
          setState(() {
            this.currentIndex = index;
          });
        },
        currentIndex: this.currentIndex,
        type: BottomNavigationBarType.fixed,
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(top: 5),
        padding: EdgeInsets.all(0.2),
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.grey, width: 0.2)),
        child: FloatingActionButton(
          backgroundColor: currentIndex == 2 ? Colors.blue : Colors.grey,
          onPressed: () {
            setState(() {
              this.currentIndex = 2;
            });
          },
          child: Icon(Icons.add),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: bodys[this.currentIndex],
    );
  }
}
