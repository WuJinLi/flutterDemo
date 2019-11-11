import 'package:flutter/material.dart';

/**
 * pageview实现轮播
 *
 * pageview 是flutter提供的轮播图组件，类似androud中viewpager展示的效果的组件
 *
 *
 *
 * * */
class PageViewPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PageViewState();
  }
}

class _PageViewState extends State<PageViewPage> {
   List colors = [Colors.cyan, Colors.blue, Colors.green];
  Color currentColors = Colors.cyan;

  Widget _buildPage(int index, Color color) {
    return Container(
      alignment: Alignment.center,
      color: color,
      child: Text(
        '$index',
        style: TextStyle(fontSize: 150.0, color: Colors.white),
      ),
    );
  }

  Widget _buildPageView() {
    return PageView(
      children: <Widget>[
        _buildPage(1, colors[0]),
        _buildPage(2, colors[1]),
        _buildPage(3, colors[2]),
      ],
      onPageChanged: (index) {
        setState(() {
          currentColors = colors[index];
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView'),
        backgroundColor: this.currentColors,
      ),
      body: _buildPageView(),
    );
  }
}
