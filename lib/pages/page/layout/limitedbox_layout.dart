import 'package:flutter/material.dart';

/**
 * 最大宽高限制布局组件，主要用于限制子组件的最大宽度或者高度，当子组件宽度或者高度小于最大限制是，显示当前子组件自身宽高
 * 当子组件宽高大于最大限制，则子组件使用最大限制数据
 */
class LimitedBoxLayout extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LimitedBoxState();
}

class _LimitedBoxState extends State<LimitedBoxLayout> {
  double width = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('limitedBox最大宽高限制'),
      ),
      body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: '绿色容器宽度px', hintText: '输入宽度'),
                      onChanged: (value) {
                        setState(() {
                          this.width = double.parse(value);
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    LimitedBox(
                      //最大限制组件包裹子组件进行其最大限制
                      maxWidth: 100,
                      child: Container(
                        width: this.width,
                        color: Colors.lightGreen,
                      ),
                    ),
                    Expanded(
                      child: Text('''
                    绿色区域最大宽度为100px,
                    当前输入宽度为：${this.width}px
                    '''),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
