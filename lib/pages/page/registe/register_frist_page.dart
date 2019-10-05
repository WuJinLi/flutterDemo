import 'package:flutter/material.dart';

class RegisterFristPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RegisterFristState();
  }
}

class _RegisterFristState extends State<RegisterFristPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("注册第一步"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Text("注册页面第一步",textAlign: TextAlign.center,),
                  flex: 1,
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/register_secound_page");
                  },
                  child: Text("下一步"),
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
