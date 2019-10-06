import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("tabbar的实现方式"),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                  child: RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/default_tab_controller");
                },
                child: Text("defaultTabController实现方式"),
              )),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/tab_bar_controller");
                },
                child: Text("TabController实现方式"),
              )),
            ],
          )
        ],
      ),
    );
  }
}
