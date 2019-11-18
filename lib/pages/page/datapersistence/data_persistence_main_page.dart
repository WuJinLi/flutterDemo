import 'package:flutter/material.dart';
import 'package:flutter_learn/pages/page/datapersistence/shared_preferences_page.dart';
import 'package:flutter_learn/pages/page/datapersistence/sqflite_main_page.dart';

import 'file_style_save_page.dart';

/**
 * 持久化主页面
 */
class DataPersistenceMainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DataPersistenceMainState();
}

class _DataPersistenceMainState extends State<DataPersistenceMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('持久化'),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        //针对ios模拟器运行是出现pod问题，在ios模拟器上运行项目是将此代码注释掉，android上可以放开
                        //具体解决方案
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return SharedPreferencesPage();
                          }),
                        );
                      },
                      child: Text('sharedPreferences持久化'),
                    ),
                  ),
                ],
              ),
              Divider(),
              Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return SqfliteMainPage();
                          }),
                        );
                      },
                      child: Text('数据库sqflite'),
                    ),
                  ),
                ],
              ),
              Divider(),
              Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return FileStyleSavePage();
                          }),
                        );
                      },
                      child: Text('文件存储'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
