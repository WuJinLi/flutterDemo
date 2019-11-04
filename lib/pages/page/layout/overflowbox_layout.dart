import 'package:flutter/material.dart';

/**
 * 允许溢出父类布局的组件，
 * 允许子组件元素超出父容器范围显示，当overflowBox的最大尺寸大于child时，
 * child可以完整显示，当其小于child时，则已overflowbox最大尺寸为基准
 *
 */
class OverflowBoxPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _OverflowBox();
}

class _OverflowBox extends State<OverflowBoxPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('overflowBox布局'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
          padding: EdgeInsets.all(10),
          color: Colors.lightGreen,
          width: 200,
          height: 200,
          child: OverflowBox(
            alignment: Alignment.topLeft,
            maxWidth: 300,
            maxHeight: 500,
            child: Container(
              width: 400,
              height: 400,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
