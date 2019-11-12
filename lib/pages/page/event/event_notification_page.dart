import 'package:flutter/material.dart';

/**
 * 事件通知：NotificationListener
 * 自身为组件，监听子组件的活动行为：监听具体实现为其属性onNotification：(scrollNotification){}方法
 * 通过scrollNotification的类型判断具体做出针对性的操作
 */
class EventNotificationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _EventNotificationState();
}

class _EventNotificationState extends State<EventNotificationPage> {
  String message = '';

  _onStartStatusScroll(ScrollMetrics scrollMetrics) {
    setState(() {
      this.message = "scroll start";
    });
  }

  _onUpdateScroll(ScrollMetrics scrollMetrics) {
    setState(() {
      this.message = "scroll update";
    });
  }

  _onEndScroll(ScrollMetrics scrollMetrics) {
    setState(() {
      this.message = "scroll end";
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('事件通知NotificationListener'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Container(
              height: 50.0,
              color: Colors.green,
              child: Center(
                child: Text(this.message),
              ),
            ),
            Expanded(
              //NotificationListener事件监听组件
              child: NotificationListener<ScrollNotification>(
                onNotification: (scrollNotification) {
                  if (scrollNotification is ScrollStartNotification) {
                    //滚动开始监听
                    _onStartStatusScroll(scrollNotification.metrics);
                  } else if (scrollNotification is ScrollUpdateNotification) {
                    //滚动时的监听
                    _onUpdateScroll(scrollNotification.metrics);
                  } else if (scrollNotification is ScrollEndNotification) {
                    //滚动结束的监听
                    _onEndScroll(scrollNotification.metrics);
                  }
                },
                child: ListView.builder(
                    itemCount: 30,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text('index:$index'),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
