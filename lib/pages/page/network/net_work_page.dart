import 'package:flutter/material.dart';
import 'package:flutter_learn/api/apis.dart';
import 'package:flutter_learn/api/apis_service.dart';
import 'package:flutter_learn/model/rule_modle.dart';
import 'package:flutter_learn/pages/page/network/net_request_test.dart';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

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
  var content = "", type = "";
  int stateCode = 0;

  static const String key = '52dc04b1b08a43dc9f51325a5b5cb87b';

  var url =
      'https://free-api.heweather.net/s6/weather/now?location=beijing&key=${key}';

  /**
   * http请求方式进行网络数据的请求
   */
  void httpWay() {
    print('http request start');
    //http对象直接进行get方式请求数据，具体请求参数可以在get（）方法中详细的设置
    //由于get请求返回的future对象，针对futuer对象处理何以使用then（）或者 async+await方式进行数据的获取
    http.get(url).then((resopnse) {
      clearData();
      setState(() {
        type = 'HTTP方式';
        stateCode = resopnse.statusCode;
        content = resopnse.body;
      });
      print(resopnse.statusCode);
      print(resopnse.body);
    });
  }

  /**
   * httpClient方式进行网络数据的获取
   */
  void httpClientWay() async {
    //实例话httpClient对象
    HttpClient client = new HttpClient();
    //发起请求，如果请求路径中涉及到请求参数的设置，则可以在uri中进行参数的设置
    Uri uri = Uri(
        scheme: 'https',
        host: 'free-api.heweather.net',
        path: 's6/weather/now',
        queryParameters: {
          'location': 'shanghai',
          'key': key,
        });

//    HttpClientRequest request = await client.getUrl(Uri.parse(this.url));
    HttpClientRequest request = await client.getUrl(uri);

    //等待服务器返回数据
    HttpClientResponse response = await request.close();
    //根据返回数据状态没进行数据的解析获取
    if (response.statusCode == HttpStatus.ok) {
      var result = await response.transform(utf8.decoder).join();
      print(result);
      clearData();
      setState(() {
        type = 'httpclient方式';
        stateCode = response.statusCode;
        content = result;
      });
    }
  }

  void dioGet() {
    apiService.getNormalWeather(context,(RuleModle ruleModle) {
      setState(() {
        content = ruleModle.HeWeather6[0].basic.cnty;
      });
    });
  }

  //清除数数据
  void clearData() {
    if (stateCode != 0) {
      stateCode = 0;
    }

    if (type.isNotEmpty) {
      type = "";
    }

    if (content.isNotEmpty) {
      content = "";
    }
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
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      onPressed: () {
                        httpWay();
                      },
                      child: new Text('Http方式请求网络'),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      onPressed: () {
                        httpClientWay();
                      },
                      child: new Text('HttpClient方式请求网络'),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      onPressed: () {
                        dioGet();
                      },
                      child: new Text('dio方式请求网络'),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      onPressed: () {
                        clearData();
                        setState(() {});
                      },
                      child: new Text('清除数据'),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return NetWorkRequestPage();
                        }));
                      },
                      child: new Text('测试页面'),
                    ),
                  ),
                ],
              ),
              spacer,
              Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('请求模式:${type}'),
                    Text('请求状态:${stateCode}'),
                    Text('请求内容结果:${content}'),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
