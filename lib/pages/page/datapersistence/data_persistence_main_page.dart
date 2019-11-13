import 'package:flutter/material.dart';
import 'package:flutter_learn/pages/page/datapersistence/shared_preferences_page.dart';

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
                      onPressed: () {},
                      child: Text('数据库'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
