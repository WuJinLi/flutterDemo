import 'package:flutter/material.dart';

class LoadMoreView extends StatelessWidget{
  String title;
  TextStyle textStyle=TextStyle(color: Colors.blue);
  LoadMoreView(@required this.title,{this.textStyle});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(16.0),
      alignment: Alignment.center,
      child: new Text(
        this.title,
        style: textStyle,
      ),
    );
  }

}