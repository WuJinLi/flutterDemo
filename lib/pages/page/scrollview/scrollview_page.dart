import 'package:flutter/material.dart';
import 'package:flutter_learn/pages/page/scrollview/listwheelscrollview_page.dart';
import 'package:flutter_learn/widget/item_page.dart';

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
            ItemPage(
              "Listview",
              routeName: "/list_page",
              arguments: {'type': "1"},
            ),
            ItemPage(
              "Gridview",
              routeName: "/list_page",
              arguments: {'type': "2"},
            ),
            ItemPage("CustomScrollView", routeName: "/customscrollview_page"),
            ItemPage(
              "ListWheelScrollView",
              target: ListWheelScrollViewPage(),
            ),
          ],
        ),
      ),
    );
  }
}
