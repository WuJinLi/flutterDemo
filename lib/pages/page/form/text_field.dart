import 'package:flutter/material.dart';

/**
 * 文本框演示页面
 * 1.文本编辑框默认初始有值使用TextEditingController与属性controller结合完成赋值
 *
 * 属性：
 * obscureText：是否隐藏密码
 * focusNode：绑定焦点控制
 * cursorColor：控制光标样式（颜色）
 * cursorRadius：控制光标样式（圆角）
 * cursorWidth控制光标样式（宽度）
 * autofocus:自动获取焦点
 * maxLength:最大长度，设置此项会让TextField右下角有一个输入数量的统计字符串
 * style:TextStyle输入文本的样式
 * keyboardType:在弹出键盘的时候修改键盘类型
 * textInputAction:键盘回车键的样式
 * inputFormatters:允许的输入格式 WhitelistingTextInputFormatter.digitsOnly 只允许输入数字
 * onChanged:内容改变的回调
 * onSubmitted: 内容提交(按回车)的回调
 * onEditingComplete:键盘上按了done
 * decoration:InputDecoration{
 *  hintText,
 *  hintStyle,
 *  fillColor,填充颜色
 *  contentPadding边框的内边距
 *  border:OutlineInputBorder边框
 * }
 * textCapitalization：
 * +++++TextCapitalization.sentences  这是最常见的大写化类型，每个句子的第一个字母被转换成大写。
 * +++++TextCapitalization.characters  大写句子中的所有字符。
 * +++++TextCapitalization.words 对每个单词首字母大写。
 */
class TextFiledPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TextFiledState();
}

class _TextFiledState extends State<TextFiledPage> {
  var _username = new TextEditingController(text: "初始值");
  var _content = " ";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("textFiled演示"),
      ),
      body: Container(
          child: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 5, bottom: 5),
              child: Text(
                "默认显示:",
                style: TextStyle(fontSize: 15, color: Colors.green),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            TextField(
              controller: _username,
              onChanged: (value) {
                setState(() {
                  this._content = value;
                });
              },
              autofocus: true,
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, bottom: 5),
              child: Text(
                "包含提示文字:",
                style: TextStyle(fontSize: 15, color: Colors.green),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "输入内容",
                border: OutlineInputBorder(), //设置输入框边框
              ),
              maxLines: 1,
              onChanged: (value) {
                setState(() {
                  this._content = value;
                });
              },
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, bottom: 5),
              child: Text(
                "密码输入框:",
                style: TextStyle(fontSize: 15, color: Colors.green),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "输入密码",
                border: OutlineInputBorder(),
              ),
              obscureText: true, //密码输入格式
              maxLines: 1,
              onChanged: (value) {
                setState(() {
                  this._content = value;
                });
              },
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, bottom: 5),
              child: Text(
                "label:",
                style: TextStyle(fontSize: 15, color: Colors.green),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            TextField(
              maxLines: 1,
              decoration: InputDecoration(
                  icon: Icon(Icons.people), //输入框前边设置图标
                  labelText: "用户名",
                  border: OutlineInputBorder()),
              onChanged: (value) {
                setState(() {
                  this._content = value;
                });
              },
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              maxLines: 1,
              decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  labelText: "密码",
                  border: OutlineInputBorder()),
              obscureText: true,
              onChanged: (value) {
                setState(() {
                  this._content = value;
                });
              },
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, bottom: 5),
              child: Text(
                "输入框输入的内容:",
                style: TextStyle(fontSize: 15, color: Colors.green),
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 40,
              color: Colors.grey,
              child: Text(
                this._content,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
