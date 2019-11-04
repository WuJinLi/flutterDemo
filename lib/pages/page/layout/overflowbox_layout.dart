import 'package:flutter/material.dart';

class OverflowBoxPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _OverflowBox();
}

class _OverflowBox extends State<OverflowBoxPage> {
  double width, height = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('overflowBox布局'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Expanded(
                child: Container(
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration:
                        InputDecoration(labelText: 'width', hintText: '输入宽度'),
                    onChanged: (value) {
                      setState(() {
                        this.width = double.parse(value);
                      });
                    },
                    onSubmitted: (value) {
                      setState(() {
                        this.width = double.parse(value);
                      });
                    },
                  ),
                  TextField(
                    decoration:
                        InputDecoration(labelText: 'height', hintText: '输入高度'),
                    onChanged: (value) {
                      setState(() {
                        this.height = double.parse(value);
                      });
                    },
                    onSubmitted: (value) {
                      setState(() {
                        this.height = double.parse(value);
                      });
                    },
                  )
                ],
              ),
            )),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: Container(
                  alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.green,
                width: 200,
                height: 200,
                child: OverflowBox(
                  minHeight:50 ,
                  minWidth: 50,
                  maxWidth: 200,
                  maxHeight: 200,
                  alignment: Alignment.center,
                  child: Container(
                    width: this.width,
                    height: this.height,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
