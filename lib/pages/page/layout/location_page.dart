import 'package:flutter/material.dart';

class LocationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LocationState();
}

class _LocationState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('定位方式展示页面'),
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
          ],
        ),
      ),
    );
  }
}
