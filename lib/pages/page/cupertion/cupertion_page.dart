import 'package:flutter/material.dart';

/**
 * 该页面展示的是ios风格组件
 */
class CupertionPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CupertionPageState();
}

class _CupertionPageState extends State<CupertionPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Cupertion风格组件ios风格展示页面'),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: GridView.count(crossAxisCount: 2,children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: FlatButton(onPressed: (){}, child: Text('')),
          )
        ],),
      ),
    );
  }
}
