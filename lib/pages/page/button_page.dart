import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

/**
 * 按钮页面
 * textColor:文本颜色
 * color:按钮颜色
 * disabledColor:按钮禁止时的颜色
 * disabledTextColor:按钮禁止时文本的颜色
 * splashColor:点击按钮式水波纹的颜色
 * hightlightColor：点击（长按）按钮是的颜色
 * elevation：阴影范围，值越大阴影范围越大
 * padding：内边距
 * onPressed:按钮点击事件
 * child：按钮文本显示内容
 * shape：设置按钮的形状 shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(10))
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
                  onPressed: () {
                    Toast.show("RaisedButton（凸起按钮）", context,
                        duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
                  },
                  textColor: Colors.pink,
                  //按钮文本颜色
                  child: Text("RaisedButton（凸起按钮）"),
                  //按钮文本内容
                  color: Colors.blue,
                  //按钮颜色
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)), //按钮形状
                )) //凸起的按钮，material design风格的按钮
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: RaisedButton.icon(
                  onPressed: () {
                    Toast.show("图标按钮", context,
                        duration: Toast.LENGTH_SHORT, gravity: Toast.CENTER);
                  },
                  icon: Icon(Icons.home),
                  label: Text("图标按钮"),
                  color: Colors.green,
                  textColor: Colors.black26,
                ))
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: RaisedButton(
                  onPressed: () {
                    Toast.show("按钮", context,
                        duration: Toast.LENGTH_SHORT, gravity: Toast.CENTER);
                  },
                  child: Text("按钮"),
                  color: Colors.green,
                  textColor: Colors.black26,
                  shape: CircleBorder(
                      side: BorderSide(
                    color: Colors.white,
                  )),
                ))
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: FlatButton(
                  onPressed: () {},
                  child: Text("FlatButton（扁平化按钮）"),
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
                  child: Text("OutlineButton（线框按钮）"),
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
            ),
            CounstomButton(
              width: 200,
              height: 50,
              onPressed: () {
                Toast.show("自定义按钮", context,
                    gravity: Toast.BOTTOM, duration: Toast.LENGTH_SHORT);
              },
              text: "自定义按钮",
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    Toast.show("登陆", context,
                        gravity: Toast.BOTTOM, duration: Toast.LENGTH_SHORT);
                  },
                  child: Text("登陆"),
                ),
                RaisedButton(
                  onPressed: () {
                    Toast.show("注册", context,
                        gravity: Toast.BOTTOM, duration: Toast.LENGTH_SHORT);
                  },
                  child: Text("注册"),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(child: RaisedButton(onPressed: (){
                  Navigator.pushNamed(context, "/float_button");
                },child: Text("floatButton"),))
              ],
            )
          ],
        ),
      ),
    );
  }
}

/**
 * 自定义按钮实现自主属性的设置
 */
class CounstomButton extends StatelessWidget {
  final double width;
  final double height;
  final onPressed;
  final text;
  Color backgroundColor;
  Color textColor;

  CounstomButton(
      {this.width = 100,
      this.height = 40,
      this.onPressed,
      this.text = "",
      this.backgroundColor = Colors.grey,
      this.textColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: this.width,
      height: this.height,
      child: RaisedButton(
        onPressed: this.onPressed,
        child: Text(this.text),
        color: this.backgroundColor,
        textColor: this.textColor,
      ),
    );
  }
}
