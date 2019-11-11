import 'package:flutter/material.dart';


/**
 * transform矩阵转换，实现child的平移，旋转，缩放
 * 属性：
 * transform:转换数值，
 * origin：offset 旋转点 相对于左上角顶点的偏移
 * alogment：对齐方式
 * 
 */
class TransformLayout extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TransformState();
}

class _TransformState extends State<TransformLayout> {
  Matrix4 matrix4 = Matrix4.rotationX(0.0);
  TextEditingController controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('矩阵转换transform'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      this.matrix4 =
                          Matrix4.rotationX(double.parse(controller.text));
                    });
                  },
                  child: Text('rotationX'),
                ),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      this.matrix4 =
                          Matrix4.rotationY(double.parse(controller.text));
                    });
                  },
                  child: Text('rotationY'),
                ),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      setState(() {
                        this.matrix4 =
                            Matrix4.rotationZ(double.parse(controller.text));
                      });
                    });
                  },
                  child: Text('rotationZ'),
                )
              ],
            ),
            TextField(
              decoration: InputDecoration(labelText: '偏于量', hintText: '输入偏移量'),
              controller: this.controller,
            ),
            Expanded(
              child: Center(
                child: Container(
                  color: Colors.grey,
                  child: Transform(
                    transform: this.matrix4,
                    child: Container(
                      color: const Color(0xffe8581c),
                      padding: EdgeInsets.all(8.0),
                      child: Text('transform矩阵转换'),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
