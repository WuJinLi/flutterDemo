import 'package:flutter/material.dart';

class LimitedBoxLayout extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LimitedBoxState();
}

class _LimitedBoxState extends State<LimitedBoxLayout> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('limitedBox最大宽高限制'),
      ),
    );
  }
}
