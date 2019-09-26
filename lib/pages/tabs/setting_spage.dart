import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "设置",
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }
}
