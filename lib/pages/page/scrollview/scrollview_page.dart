import 'package:flutter/material.dart';

class ScrollViewPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ScrollViewState();
}

class _ScrollViewState extends State<ScrollViewPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("可滚动的view"),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: RaisedButton(
                  onPressed: () {
                      Navigator.pushNamed(context, "/list_page",arguments: {'type':"1"});
                  },
                  child: Text("Listview"),
                ))
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/list_page",arguments: {'type':"2"});
                      },
                      child: Text("Gridview"),
                    ))
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/customscrollview_page");
                      },
                      child: Text("CustomScrollView"),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
