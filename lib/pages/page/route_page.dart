import 'package:flutter/material.dart';
import 'package:flutter_learn/pages/page/detail_page.dart';

/***
 * 路由配置页面
 *
 */

class RouteDetailPage extends StatefulWidget {
  @override
  _RoutePageState createState() => _RoutePageState();
}

class _RoutePageState extends State<RouteDetailPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("路由配置"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailsPage()));
                      },
                      child: Text("普通路由不传值"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 1.0,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> DetailsPage(title: "普通跳转传值",)));
                      },
                      child: Text("普通路由传值"),
                    )
                  ),
                ],
              ),
              SizedBox(
                height: 1.0,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed("/details");
                        },
                        child: Text("命名路由"),
                      ))
                ],
              ),
              SizedBox(
                height: 1.0,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed("/details",arguments:{"result":"命名路由传值方式进行传值页面跳转"});
                        },
                        child: Text("命名路由传值"),
                      ))
                ],
              )
            ],
          ),
        ));
  }
}
