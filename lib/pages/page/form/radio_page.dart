import 'package:flutter/material.dart';

/**
 * 单选框按钮页面
 * <p>Radio
 * 属性：
 * value → T - 单选的值。
 * groupValue → T - 选择组的值。如果 groupValue == value 则 Radio 被选中
 * activeColor → Color - 激活时的颜色
 * onChanged → ValueChanged - 改变时触发。
 *
 *
 * <p> RadioListTile
 * 属性：
 * value → T - 单选的值。
 * groupValue → T - 选择组的值。如果 groupValue == value 则 Radio 被选中
 * activeColor → Color - 激活时的颜色
 * onChanged → ValueChanged - 改变时触发。
 * title：一级标题
 * subtitle：二级标题
 * secondary：图标
 * selected:设置选中的内容是否高亮
 *
 *
 *
 * 注意：
 * 1.value和groupValue分别代表的含义
 * 2.如果 groupValue == value 则 Radio 被选中
 */
class RadioPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RadioState();
}

class _RadioState extends State<RadioPage> {
  var sex = 1;
  var line = SizedBox(
    height: 10.0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio单选框页面"),
      ),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "radio单选框",
                  style: TextStyle(fontSize: 15.0),
                ),
                line,
                Row(
                  children: <Widget>[
                    Radio(
                        value: 1,
                        groupValue: this.sex,
                        onChanged: (value) {
                          setState(() {
                            this.sex = value;
                          });
                        }),
                    Text(
                      "男",
                      style: TextStyle(
                          color: this.sex == 1 ? Colors.blue : Colors.black),
                    ),
                    SizedBox(
                      width: 25.0,
                    ),
                    Radio(
                      value: 2,
                      groupValue: this.sex,
                      onChanged: (value) {
                        setState(() {
                          this.sex = value;
                        });
                      },
                    ),
                    Text(
                      "女",
                      style: TextStyle(
                          color: this.sex == 2 ? Colors.blue : Colors.black),
                    ),
                  ],
                ),
                Text(
                  "RadioListTile",
                  style: TextStyle(fontSize: 15.0),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RadioListTile(
                      value: 1,
                      groupValue: this.sex,
                      onChanged: (value) {
                        setState(() {
                          this.sex = value;
                        });
                      },
                      title: Text("男"),
                      subtitle: Text("male"),
                      secondary: Icon(Icons.people),
                    ),
                    RadioListTile(
                      value: 2,
                      groupValue: this.sex,
                      onChanged: (value) {
                        setState(() {
                          this.sex = value;
                        });
                      },
                      title: Text("女"),
                      subtitle: Text("female"),
                      secondary: Icon(Icons.people),
                    )
                  ],
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Center(
              child: Container(
                child: Text("选中的内容:${this.sex == 1 ? '男' : '女'}"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
