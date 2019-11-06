import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

/**
 * 透明度控制组件Opacity
 */
class OpacityDetailPage extends StatefulWidget {
  @override
  _OpacityDetailState createState() => _OpacityDetailState();
}

class _OpacityDetailState extends State<OpacityDetailPage> {
  double opacity = 0.0;
  static TextEditingController controllerOpacity =
      new TextEditingController(text: '0.0');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('透明度处理'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: TextField(
                  controller: controllerOpacity,
                  //这是操作textfiled的控制器，便于获取输入框的值，
                  decoration: InputDecoration(
                    labelText: '输入透明度，在0.0-1.0之间数值',
                    hintText: '输入透明度',
                  ),
                  onChanged: (value) {
                    //获取输入框值，并且对输入内容进行校验，符合条件的进行正常展示业务，不符合条件的进行提示
                    double currentValue = double.parse(value);

                    //由于透明度的取值范围[0.0,1.0]，所以针对大于1.0的数值进行判断
                    if (currentValue > 1.0) {
                      //大于1.0的数值给予提示，输入框内容初始化0.0
                      Toast.show('请输入大小区间在0.0-1.0之间的数值', context,
                          duration: Toast.LENGTH_SHORT, gravity: Toast.CENTER);
                      controllerOpacity.text = '0.0';
                    } else {
                      setState(() {
                        this.opacity = currentValue;
                      });
                    }
                  },
                ))
              ],
            ),
            Expanded(
                child: Center(
              child: Opacity(
                opacity: this.opacity,
                child: Image.asset(
                  'images/a.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
