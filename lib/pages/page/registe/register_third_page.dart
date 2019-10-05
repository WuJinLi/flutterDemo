import 'package:flutter/material.dart';
import 'package:flutter_learn/pages/bottom_tabs.dart';
class RegisterThirdPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RegisterThirdState();
  }
}

class _RegisterThirdState extends State<RegisterThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("注册第三步"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Text("注册页面三步"),
                  flex: 1,
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: RaisedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>  BottomBar(index: 3,)), (route)=> route==null);
                  },
                  child: Text("完成"),
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
