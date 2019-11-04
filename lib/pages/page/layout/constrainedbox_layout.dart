import 'package:flutter/material.dart';

class ConstrainedBoxLayout extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ConstrainedBoxState();
}

class _ConstrainedBoxState extends State<ConstrainedBoxLayout> {
  double width = 0, height = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('限制最大最小宽高布局'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Expanded(
                child: Column(
              children: <Widget>[
                TextField(
                  decoration:
                      InputDecoration(labelText: '宽度', hintText: '输入宽度'),
                  onChanged: (value) {
                    setState(() {
                      this.width = double.parse(value);
                    });
                  },
                ),
                TextField(
                  decoration:
                      InputDecoration(labelText: '高度', hintText: '输入高度'),
                  onChanged: (value) {
                    setState(() {
                      this.height = double.parse(value);
                    });
                  },
                ),
                Text('''白色方框宽高限制：
                    minHeight: 50,
                    minWidth: 50,
                    maxHeight: 200,
                    maxWidth: 200''')
              ],
            )),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                color: Colors.grey,
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                      minHeight: 50,
                      minWidth: 50,
                      maxHeight: 200,
                      maxWidth: 200),
                  child: Container(
                    width: this.width,
                    height: this.height,
                    alignment: Alignment.center,
                    color: Colors.white,
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
