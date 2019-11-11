import 'package:flutter/material.dart';
import 'package:flutter_learn/pages/page/pageview/page_view.dart';
import 'package:flutter_learn/pages/page/pageview/swiper_page.dart';

class PageViewMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('轮播图效果'),
      ),
      body: Hero(
          tag: 'PageViewMainPage',
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: FlatButton(
                        textTheme: ButtonTextTheme.normal,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return PageViewPage();
                          }));
                        },
                        child: Text('pageview实现轮播图'
                            ''),
                      ),
                    )
                  ],
                ),
                Divider(),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: FlatButton(
                        textTheme: ButtonTextTheme.normal,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return SwiperPage();
                          }));
                        },
                        child: Text('swiper实现轮播图'
                            ''),
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
