import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<SettingsPage> {
  @override
  void initState() {
    super.initState();
    print("SettingsPage initState");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("SettingsPage didChangeDependencies");
  }

  @override
  void didUpdateWidget(SettingsPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('SettingsPage didUpdateWidget');
  }

  @override
  void deactivate() {
    super.deactivate();
    print('SettingsPage deactivate');
  }

  @override
  void dispose() {
    super.dispose();
    print('SettingsPage dispose');
  }
  @override
  void reassemble() {
    // TODO: implement reassemble
    super.reassemble();
    print('SettingsPage reassemble');
  }

  @override
  Widget build(BuildContext context) {
    print('SettingsPage build');
    return Scaffold(
//      appBar: AppBar(
//        title: Text("tabbar的实现方式"),
//      ),
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
