import 'package:flutter/material.dart';

/***
 * <p>使用DefaultTabController实现顶部tab切换的效果
 * DefaultTabController：含有tabBar的容器
 * length：tab的个数；
 * TabBar：顶部导航栏
 * tabs:显示的标签的内容，Tab集合;
 * controller:TabController对象;
 * isScrollable:tab导航是否可滚动；
 * indicatorColor：指示器的颜色；
 * indicatorWeight：指示器的高度；
 * indicatorPadding：指示器的padding；
 * indicator：指示器decoration，例如边框等属性；
 * indicatorSize：指示器的计算方式，TabBarIndicatorSize.label：跟文字等宽，TabBarIndicatorSize.tab：跟每个tab等宽；
 * labelColor：选中label的颜色；
 * labelStyle：选中lable的style；
 * labelPadding：每个lable的padding值；
 * unselectedLabelColor：未选中lable的颜色；
 * unselectedLabelStyle：未选中lable的style；
 *
 * TabBarView：放置ab标签对应的界面，
 *
 */
class DefaultTabControllerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("返回"),
        ),
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              Expanded(
                  child: TabBar(
                tabs: <Widget>[
                  Tab(
                    text: "热门",
                  ),
                  Tab(
                    text: "美图",
                  ),
                  Tab(
                    text: "视频",
                  ),
                  Tab(
                    text: "咨询",
                  ),
                  Tab(
                    text: "新闻",
                  ),
                  Tab(
                    text: "体育",
                  ),
                  Tab(
                    text: "游戏",
                  ),
                ],
                isScrollable: true,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black45,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Colors.white,
              ))
            ],
          ),
        ),
        body: TabBarView(children: <Widget>[
          Center(
            child: Text("热门"),
          ),
          Center(
            child: Text("美图"),
          ),
          Center(
            child: Text("视频"),
          ),
          Center(
            child: Text("咨询"),
          ),
          Center(
            child: Text("新闻"),
          ),
          Center(
            child: Text("体育"),
          ),
          Center(
            child: Text("游戏"),
          ),
        ]),
      ),
    );
  }
}
