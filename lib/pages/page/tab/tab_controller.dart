import 'package:flutter/material.dart';

/**
 * 使用TabBarController实现顶部tab切换的效果
 * <p>注意：：：：：：
 * 在使用TabBarController实现功能是需要继承StatefulWidget，且在创建State对象是实现SingleTickerProviderStateMixin
 *1.实现State的两个生命周期方法：initState，dispose
 * + initState 组件初始化是完成的任务：这里我们完成TabController的创建初始化，监听事件的舰监听；
 * + dispose 完成事件或者组件的销毁；
 * 2.创建tab（TabBar）和tab对应的详情页（TabBarView），分别通过属性controller来关联TabController
 */
class TabBarControllerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TabBarControllerState();
  }
}

class _TabBarControllerState extends State<TabBarControllerPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  var page_content = "热销";

//  var tab = ["热销", "推荐", "新闻", "美图", "视频", "体育", "财经", "法制", "娱乐"];
  var tab = ["热销", "推荐", "新闻", "美图", "视频"];
  List<Widget> widgets = new List();
  List<Widget> tabs = new List();

  //生命周期函数
  @override
  void initState() {
    super.initState();
    initData();
    _tabController = new TabController(length: this.tab.length, vsync: this);

    //添加监听器来完成动态的改变页面的数据
    _tabController.addListener(() {
      setState(() {
//        print(content);
        setState(() {
          page_content = this.tab[_tabController.index];
        });
      });
    });
  }

  //命周期函数
  @override
  void dispose() {
    super.dispose();
    this._tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBarController实现顶部tab切换的效果"),
        bottom: TabBar(
          tabs: this.tabs,
          controller: this._tabController, //注意
          isScrollable: true,
          indicatorSize: TabBarIndicatorSize.label,
        ),
      ),
      body: TabBarView(
        controller: this._tabController, //注意
//          children: this.widgets
        children: <Widget>[
          Center(
            child: Text(this.page_content),
          ),
          Center(
            child: Text(this.page_content),
          ),
          Center(
            child: Text(this.page_content),
          ),
          Center(
            child: Text(this.page_content),
          ),
          Center(
            child: Text(this.page_content),
          )
        ],
      ),
    );
  }

  void initData() {
    for (var i = 0; i < tab.length; i++) {
      widgets.add(Center(
        child: Text(tab[i]),
      ));
      tabs.add(Tab(
        text: tab[i],
      ));
    }
  }
}
