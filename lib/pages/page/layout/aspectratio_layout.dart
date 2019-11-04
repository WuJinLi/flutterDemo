import 'package:flutter/material.dart';


/**
 * AspectRatio设置宽高比
 */
class AspectRatioLayout extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AspectRatioState();
}

class _AspectRatioState extends State<AspectRatioLayout> {
  double aspectRatio = 1;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('AspectRatio调整宽高比'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    decoration:
                        InputDecoration(labelText: '调整宽高比例', hintText: '输入宽高比'),
                    onChanged: (value) {
                      setState(() {
                        double.parse(value)>0? this.aspectRatio=double.parse(value):this.aspectRatio=1;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              child: AspectRatio(
                aspectRatio: this.aspectRatio,
                child: Container(
                  color: Colors.green,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('宽高比：${aspectRatio},宽度：${100 * aspectRatio} px,高度：100 px')
          ],
        ),
      ),
    );
  }
}
