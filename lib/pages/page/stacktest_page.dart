/*****************************stack组件相当于android中framelayout********************************/
import 'package:flutter/material.dart';
import 'package:flutter_learn/res/data_resc.dart';
/**
 * Stack组件通过自身属性alignment来进行子元素的定位
 */
class StackByAlignment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment(-1.0, 1.0), //通过Alignment来设置stack中子元素的位置
        children: <Widget>[
          Container(
            width: 100.0,
            height: 100.0,
            color: Colors.black,
          ),
          Container(
            width: 80.0,
            height: 80.0,
            color: Colors.blue,
          ),
          Container(
            width: 60.0,
            height: 60.0,
            color: Colors.pink,
          )
        ],
      ),
    );
  }
}

/**
 * Stack组件结合Align组件进行子元素多元化的定位
 * Align组件使用属性alignment中多样性可以完成对指定子元素的位置设定
 */
class StackByAlign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        width: 400.0,
        height: 400.0,
        color: Colors.black12,
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Icon(
                Icons.add,
                size: 50.0,
                color: Colors.white,
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.list,
                size: 50.0,
                color: Colors.white,
              ),
            ),
            Align(
//              alignment: Alignment.center,
              alignment: Alignment(-0.5, 0.0),
              child: Icon(
                Icons.settings,
                size: 50.0,
                color: Colors.white,
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Icon(
                Icons.access_alarm,
                size: 50.0,
                color: Colors.white,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Icon(
                Icons.home,
                size: 50.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}



/**
 * Stack组件结合Positioned组件进行子元素多元化的定位
 * Positioned组件left，top，right，bottom来控制子元素的显示位置，
 */
class StackByPositioned extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400.0,
        height: 400.0,
        color: Colors.black12,
        child: Stack(
          children: <Widget>[
            Positioned(
                right: 100.0,
                top: 100.0,
                child: Icon(
                  Icons.ac_unit,
                  size: 40.0,
                  color: Colors.white,
                )),
            Positioned(
              left: 100.0,
              bottom: 100.0,
              child: Icon(
                Icons.access_time,
                size: 40.0,
                color: Colors.white,
              ),
            ),
            Positioned(
                left: 100.0,
                top: 100.0,
                child: Icon(
                  Icons.account_balance,
                  size: 40.0,
                  color: Colors.white,
                )),
            Positioned(
                right: 100.0,
                bottom: 100.0,
                child: Icon(
                  Icons.home,
                  size: 40.0,
                  color: Colors.white,
                )),
          ],
        ),
      ),
    );
  }
}

/**
 * 通过stack组件实现图文混排（图片为背景，描述文字在其底部）
 */

class ListByStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      alignment: Alignment.center,
      child: ListView(
        padding: EdgeInsets.all(10.0),
        children: _getListData(),
      ),
    );
  }
}

List<Widget> _getListData() {
  List<Widget> list = new List();
  for (var i = 0; i < 20; i++) {
    list.add(Container(
      width: 400.0,
      height: 200.0,
      child: Stack(
        children: <Widget>[
          Container(
            width: 400.0,
            height: 200.0,
            decoration: BoxDecoration(
//                color: Colors.black12,
                border: Border.all(color: Colors.blue, width: 2.0),
                borderRadius: BorderRadius.circular(10.0)),
            child: Image.asset(
              "images/a.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Align(
            //使用Align组件来实现组件位置的定位
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "文字信息$i",
                  style: TextStyle(
                      color: Colors.amberAccent,
                      fontSize: 12.0,
                      fontStyle: FontStyle.italic,
                      decorationStyle: TextDecorationStyle.solid,
                      decoration: TextDecoration.underline),
                ),
              )),
          Positioned(
            //使用Positioned组件进行组件位置的确定
              right: 10.0,
              top: 10.0,
              child: Image.asset(
                "images/ic_recycle.png",
                width: 30.0,
                height: 30.0,
                fit: BoxFit.cover,
              ))
        ],
      ),
    ));
    list.add(SizedBox(
      height: 10.0,
    ));
  }

  return list;
}