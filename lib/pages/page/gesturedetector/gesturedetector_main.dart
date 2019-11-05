import 'package:flutter/material.dart';

class GestureDetectorMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('手势'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/gesturedetector_detail_page');
                },
                child: Text('一类手势GesturnDetector'),
              ),
              RaisedButton(
                onPressed: () {},
                child: Text('二类手势'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
