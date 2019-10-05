import 'package:flutter/material.dart';

class RegisterSecoundPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RegisterSecoundState();
  }
}

class _RegisterSecoundState extends State<RegisterSecoundPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("注册第二步"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Text("注册页面二步"),
                  flex: 1,
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/register_third_page");
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
