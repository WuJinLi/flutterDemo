import 'package:flutter/material.dart';

class DecorateMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('组件装饰和视觉效果'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/opacity_detail');
                  },
                  child: Text('Opacity透明度处理'),
                ))
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: RaisedButton(
                  onPressed: () {},
                  child: Text('decortaedBox装饰'),
                ))
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: RaisedButton(
                  onPressed: () {},
                  child: Text('Chip裁剪'),
                ))
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: RaisedButton(
                  onPressed: () {},
                  child: Text('RoatedBox旋转盒子'),
                ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
