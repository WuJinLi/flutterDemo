import 'package:flutter/material.dart';


/**
 * stack结合自身属性alignment 来实现定位布局功能！
 */
class StackAligmentLayout extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StackAligmentState();
}

class _StackAligmentState extends State<StackAligmentLayout> {
  var locationdesc = '居中';
  var locationType = Alignment.center;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack/Aligment'),
      ),
      body: Padding(
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
                        updateState(LocationType.center);
                      },
                      child: Text("居中"),
                    ),
                    RaisedButton(
                      onPressed: () {
                        updateState(LocationType.centerLeft);
                      },
                      child: Text("中左"),
                    ),
                    RaisedButton(
                      onPressed: () {
                        updateState(LocationType.centerRight);
                      },
                      child: Text("中右"),
                    ),
                    RaisedButton(
                      onPressed: () {
                        updateState(LocationType.topLeft);
                      },
                      child: Text("上左"),
                    ),
                    RaisedButton(
                      onPressed: () {
                        updateState(LocationType.topCenter);
                      },
                      child: Text("上中"),
                    ),
                    RaisedButton(
                      onPressed: () {
                        updateState(LocationType.topRight);
                      },
                      child: Text("上右"),
                    ),
                    RaisedButton(
                      onPressed: () {
                        updateState(LocationType.bottomLeft);
                      },
                      child: Text("下左"),
                    ),
                    RaisedButton(
                      onPressed: () {
                        updateState(LocationType.bottomCenter);
                      },
                      child: Text("下中"),
                    ),
                    RaisedButton(
                      onPressed: () {
                        updateState(LocationType.bottomRight);
                      },
                      child: Text("下右"),
                    ),
                  ],
                )),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: Text(
                "位置描述：${locationdesc}",
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
                flex: 1,
                child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(color: Colors.grey[300]),
                    child: Stack(
                      alignment: locationType,
                      children: <Widget>[
                        Image.asset(
                          'images/ic_recycle.png',
                          width: 50,
                          height: 50,
                        ),
                      ],
                    )))
          ],
        ),
      ),
    );
  }

  void updateState(type) {
    switch (type) {
      case LocationType.topLeft:
        setState(() {
          locationType = Alignment.topLeft;
          locationdesc = "上左";
        });
        break;

      case LocationType.topCenter:
        setState(() {
          locationType = Alignment.topCenter;
          locationdesc = "上中";
        });
        break;

      case LocationType.topRight:
        setState(() {
          locationType = Alignment.topRight;
          locationdesc = "上右";
        });
        break;

      case LocationType.center:
        setState(() {
          locationType = Alignment.center;
          locationdesc = "居中";
        });
        break;

      case LocationType.centerLeft:
        setState(() {
          locationType = Alignment.centerLeft;
          locationdesc = "中左";
        });
        break;

      case LocationType.centerRight:
        setState(() {
          locationType = Alignment.centerRight;
          locationdesc = "中右";
        });
        break;

      case LocationType.bottomCenter:
        setState(() {
          locationType = Alignment.bottomCenter;
          locationdesc = "底中";
        });
        break;

      case LocationType.bottomLeft:
        setState(() {
          locationType = Alignment.bottomLeft;
          locationdesc = "底左";
        });
        break;

      case LocationType.bottomRight:
        setState(() {
          locationType = Alignment.bottomRight;
          locationdesc = "底右";
        });
        break;
    }
  }
}

enum LocationType {
  bottomCenter,
  bottomLeft,
  bottomRight,
  topLeft,
  topCenter,
  topRight,
  center,
  centerLeft,
  centerRight
}
