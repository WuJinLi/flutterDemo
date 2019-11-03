import 'package:flutter/material.dart';

/**
 * 实现Stacl/positioned来实现定位布局，对应布局主要决定于positioned属性top，bottom，left，right；
 */
class StackPositionedLayout extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StackPositionedState();
}

class _StackPositionedState extends State<StackPositionedLayout> {
  double top = 0, bottom = 0, left = 0, right = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Stack/Positioned'),
        ),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView(
                  children: <Widget>[
                    TextField(
                      decoration:
                          InputDecoration(hintText: '输入top', labelText: 'top'),
                      maxLines: 1,
                      onChanged: (value) {
                        setState(() {
                          this.top = double.parse(value);
                        });
                      },
                      onSubmitted: (value) {
                        setState(() {
                          this.top = double.parse(value);
                        });
                      },
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: '输入bottom', labelText: 'bottom'),
                      maxLines: 1,
                      onChanged: (value) {
                        setState(() {
                          this.bottom = double.parse(value);
                        });
                      },
                      onSubmitted: (value) {
                        setState(() {
                          this.bottom = double.parse(value);
                        });
                      },
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: '输入left', labelText: 'left'),
                      maxLines: 1,
                      onChanged: (value) {
                        setState(() {
                          this.left = double.parse(value);
                        });
                      },
                      onSubmitted: (value) {
                        setState(() {
                          this.left = double.parse(value);
                        });
                      },
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: '输入right', labelText: 'right'),
                      maxLines: 1,
                      onChanged: (value) {
                        setState(() {
                          this.right = double.parse(value);
                        });
                      },
                      onSubmitted: (value) {
                        setState(() {
                          this.right = double.parse(value);
                        });
                      },
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                            child: RaisedButton(
                          onPressed: () {
                            setState(() {
                              this.top = 0.0;
                              this.bottom = 0.0;
                              this.left = 0.0;
                              this.right = 0.0;
                            });
                          },
                          child: Text('清空数据'),
                        ))
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      child: Text(
                        '设置尺寸详情：top=${top},bottom=${bottom},left=${left},right=${right}',
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                  child: Container(
                width: double.infinity,
                color: Colors.grey,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                        top: this.top,
                        left: this.left,
                        bottom: this.bottom,
                        right: this.right,
                        child: Image.asset(
                          "images/ic_recycle.png",
                          width: 40,
                          height: 40,
                        ))
                  ],
                ),
              ))
            ],
          ),
        ));
  }
}
