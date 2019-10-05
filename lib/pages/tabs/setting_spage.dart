import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: TabBar(
                    tabs: [
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
                    labelColor: Colors.blue,
                    indicatorColor: Colors.blue,
                    unselectedLabelColor: Colors.black26,
                    indicatorSize: TabBarIndicatorSize.label,
                    isScrollable: true,
                  ))
            ],
          ),
          backgroundColor: Colors.black26,
        ),
        body: TabBarView(children: [
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
