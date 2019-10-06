import 'package:flutter/material.dart';

/**
 * 按钮页面
 */
class ButtomPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ButtomState();
  }
}

class _ButtomState extends State<ButtomPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("按钮分类页面"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: RaisedButton(
                  onPressed: () {},
                  child: Text("RaisedButton"),
                )) //凸起的按钮，material design风格的按钮
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: FlatButton(
                  onPressed: () {},
                  child: Text("FlatButton"),
                )) //扁平化的按钮
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: OutlineButton(
                  onPressed: () {},
                  textColor: Colors.amber,
                  highlightColor: Colors.blue,
                  child: Text("OutlineButton"),
                )) //线框按钮
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.map),
                )) //图标按钮
              ],
            )
          ],
        ),
      ),
    );
  }
}
