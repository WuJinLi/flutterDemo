import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';

/**
 * async关键字声明该函数内部有代码需要延迟执行
 * wait延迟执行的结果
 * await关键字必须在async函数内部使用,调用async函数必须使用await关键字
 *
 * 网络调用通常遵循如下步骤：
 * 1.创建 client.
 * 2.构造 Uri.
 * 3.发起请求, 等待请求，同时您也可以配置请求headers、 body。
 * 4.关闭请求, 等待响应.
 * 5.解码响应的内容.
 */
class NetWorkPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NetWorkState();
}

class _NetWorkState extends State<NetWorkPage> {
  var _ipAddress = 'Unknown';

  _getIPAddress() async {
    var url = 'https://httpbin.org/ip'; //初始化url
    var httpClient = new HttpClient(); //创建httpClient
    String result;

    try {
      var request =
          await httpClient.getUrl(Uri.parse(url)); //发起请求，配置请求参数，地址uri的配置
      var response = await request.close(); //关闭请求等待响应
      //解码响应内容
      if (response.statusCode == HttpStatus.ok) {
        var json = await response.transform(utf8.decoder).join(); //获取结果json串
//        print(json);
        var data = jsonDecode(json); //解码json串，即将json格式的数据转换成对象格式或map
//        print(data);
        result = data['origin']; //获取解析结果
      } else {
        result =
            'Error getting IP address:\nHttp status ${response.statusCode}';
      }
    } catch (exception) {
      print(exception);
      result = 'Failed getting IP address';
    }

    if (!mounted) return;

    setState(() {
      _ipAddress = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    var spacer = SizedBox(
      height: 32.0,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("网络请求"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Your current IP address is:'),
            Text('$_ipAddress.'),
            spacer,
            RaisedButton(
              onPressed: _getIPAddress,
              child: new Text('Get IP address'),
            ),
          ],
        ),
      ),
    );
  }
}
