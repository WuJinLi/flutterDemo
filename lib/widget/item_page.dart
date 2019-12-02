import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  String title; //名称
  Widget target; //目标widget
  String routeName; //路由名称
  var arguments;

  ItemPage(this.title, {this.target, this.routeName,this.arguments});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: RaisedButton(
              child: Text(this.title),
              onPressed: () {
                if (target != null) {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => target));
                } else if (routeName.isNotEmpty) {
                  Navigator.pushNamed(context, routeName,arguments: arguments);
                }
              }),
        )
      ],
    );
  }
}

