import 'package:flutter/material.dart';
/*************************************Layout -> row column***********************************/

class LayoutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 180.0,
                  color: Colors.blue,
                ),
                flex: 1,
              )
            ],
          ),
          SizedBox(height: 5.0),
          Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  height: 180.0,
                  color: Colors.green,
                ),
              ),
              SizedBox(
                width: 5.0,
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                    height: 180.0,
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 87.5,
                          color: Colors.black26,
                        ),
                        SizedBox(height: 5.0),
                        Container(
                          height: 87.5,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}