import 'package:flutter/material.dart';

/**
 * FractionallySizedBox百分比布局限制'
 * 限制因子：widthFactor，heightFactor 因子可以为null
 */
class FractionallySizedBoxLayout extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FractionallySizedBoxState();
}

class _FractionallySizedBoxState extends State<FractionallySizedBoxLayout> {
  double widthFactor=0.1, heightFactor=0.1;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('FractionallySizedBox百分比布局'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                TextField(
                  decoration:
                      InputDecoration(labelText: '宽度因子', hintText: '输入宽度因子'),
                  onChanged: (value) {
                    setState(() {
                      this.widthFactor = double.parse(value);
                    });
                  },
                ),
                TextField(
                  decoration:
                      InputDecoration(labelText: '高度因子', hintText: '输入高度因子'),
                  onChanged: (value) {
                    setState(() {
                      this.heightFactor = double.parse(value);
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: 100,
                child: Container(
                  color: Colors.blueGrey,
                  width: 100,
                  height: 100,
                  child: FractionallySizedBox(
                    widthFactor: this.widthFactor,
                    heightFactor: this.heightFactor,
                    child: Container(
                      color: Colors.green,
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
