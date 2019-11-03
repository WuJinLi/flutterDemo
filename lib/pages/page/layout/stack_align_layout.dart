import 'package:flutter/material.dart';

/**
 * stack集合组件Align 实现定位布局
 */
class AlignLayout extends StatefulWidget {
  @override
  _AlignLayoutState createState() => _AlignLayoutState();
}

class _AlignLayoutState extends State<AlignLayout> {
  Alignment alignment = Alignment.center;
  String location = 'Alignment.center';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Align布局'),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: GridView.count(
                crossAxisCount: 4,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        alignment = Alignment.bottomCenter;
                        location = 'bottomCenter';
                      });
                    },
                    child: Text('底中', textAlign: TextAlign.center),
                  ),
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        alignment = Alignment.bottomLeft;
                        location = 'bottomLeft';
                      });
                    },
                    child: Text('底左', textAlign: TextAlign.center),
                  ),
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        alignment = Alignment.bottomRight;
                        location = 'bottomRight';
                      });
                    },
                    child: Text('底右', textAlign: TextAlign.center),
                  ),
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        alignment = Alignment.centerLeft;
                        location = 'centerLeft';
                      });
                    },
                    child: Text('中左', textAlign: TextAlign.center),
                  ),
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        alignment = Alignment.center;
                        location = 'center';
                      });
                    },
                    child: Text('居中', textAlign: TextAlign.center),
                  ),
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        alignment = Alignment.centerRight;
                        location = 'centerRight';
                      });
                    },
                    child: Text('中右', textAlign: TextAlign.center),
                  ),
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        alignment = Alignment.topLeft;
                        location = 'topLeft';
                      });
                    },
                    child: Text(
                      '顶左',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        alignment = Alignment.topCenter;
                        location = 'topCenter';
                      });
                    },
                    child: Text('顶中', textAlign: TextAlign.center),
                  ),
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        alignment = Alignment.topRight;
                        location = 'topRight';
                      });
                    },
                    child: Text('顶右', textAlign: TextAlign.center),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.grey,
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: alignment,
                      child: Image.asset(
                        'images/ic_recycle.png',
                        width: 100,
                        height: 100,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
