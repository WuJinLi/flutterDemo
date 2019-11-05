import 'package:flutter/material.dart';

class LayoutMainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LayoutMainPageState();
}

class _LayoutMainPageState extends State<LayoutMainPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('布局方式展示页面'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                      child: Text('Stack/Align'),
                      onPressed: () {
                        Navigator.pushNamed(context, "/stack_align_layout");
                      }),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                      child: Text('Stack/Alignment'),
                      onPressed: () {
                        Navigator.pushNamed(context, "/stack_aligment_layout");
                      }),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                      child: Text('Stack/Positioned'),
                      onPressed: () {
                        Navigator.pushNamed(
                            context, '/stack_positioned_layout');
                      }),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                      child: Text('IndexStack'),
                      onPressed: () {
                        Navigator.pushNamed(context, '/index_stack_layout');
                      }),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                      child: Text('OverflowBox'),
                      onPressed: () {
                        Navigator.pushNamed(context, '/overflowbox_layout');
                      }),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                      child: Text('ConstrainedBox'),
                      onPressed: () {
                        Navigator.pushNamed(context, '/constrainedbox_layout');
                      }),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                      child: Text('LimitedBox'),
                      onPressed: () {
                        Navigator.pushNamed(context, '/limitedbox_layout');
                      }),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                      child: Text('AspectRatio调整宽高比'),
                      onPressed: () {
                        Navigator.pushNamed(context, '/aspectratio_layout');
                      }),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                      child: Text('FractionallySizedBox百分比'),
                      onPressed: () {
                        Navigator.pushNamed(
                            context, '/fractionallysizebox_layout');
                      }),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                      child: Text('表格布局'),
                      onPressed: () {
                        Navigator.pushNamed(context, '/table_layout');
                      }),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                      child: Text('综合demo'),
                      onPressed: () {
                        Navigator.pushNamed(context, '/synthesize_demo');
                      }),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                      child: Text('transform矩阵转换'),
                      onPressed: () {
                        Navigator.pushNamed(context, '/transform_layout');
                      }),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                      child: Text('offstage组件的显示隐藏'),
                      onPressed: () {
                        Navigator.pushNamed(context, '/offstage_layout');
                      }),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
