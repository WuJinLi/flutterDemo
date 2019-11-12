import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

/**
 * 手势识别器gestureRecohnizer
 *
 * 实例实现在richtext中使用
 *
 *
 * 在下边示例可以看出widget的key值，识别器，showSnackBar的使用，RichText的使用
 *
 *
 * 注意：在之前编写使用snackBar实例中出现过context为空的bug，根据网上和官方解决方案是使用空间继续继承statelessWidget组件解决问题，
 * 现可以看出可以使用组件的key（GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();）完美的展示；
 * 实现方法 _globalKey.currentState.showSnackBar(SnackBar(content: Text(value)));
 *
 *
 * ScaffoldState 是一个包涵当前页面所有属性的一个类，具体查看源码
 */
class GestureRecognizerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _GestureRecognizerState();
  }
}

class _GestureRecognizerState extends State<GestureRecognizerPage> {
  TapGestureRecognizer _tapGestureRecognizer = new TapGestureRecognizer();

  //创建当前组件key
  GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();

  /**
   * 显示snackBar的方法
   */
  void _showInSnackBar(value) {
    _globalKey.currentState.showSnackBar(SnackBar(content: Text(value)));
  }

  @override
  void dispose() {
    super.dispose();
    _tapGestureRecognizer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        title: Text('手势识别器'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            RichText(
              textAlign: TextAlign.start,
              text: TextSpan(
                text: '同意',
                style: TextStyle(color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                      text: '《客户隐私协议》',
                      style: TextStyle(color: Colors.blue),
                      recognizer: _tapGestureRecognizer
                        ..onTap = () {
                          _showInSnackBar('客户隐私协议被点击了');
                        })
                ],
              ),
            ),
            SizedBox(height: 10,),
            RichText(
              textAlign: TextAlign.start,
              text: TextSpan(
                text: '同意',
                style: TextStyle(color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                      text: '《银行隐私签约协议》',
                      style: TextStyle(color: Colors.red),
                      recognizer: _tapGestureRecognizer
                        ..onTap = () {
                          _showInSnackBar('银行隐私签约协议被点击了');
                        })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
