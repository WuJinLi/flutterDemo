import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

/**
 * 实现流式布局
 */
class FlowLayoutPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FlowLayoutState();
}

class _FlowLayoutState extends State<FlowLayoutPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("流式布局"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 60.0,
              padding: EdgeInsets.only(top: 10, bottom: 10.0),
              child: Text(
                "wrap组件实现流式布局:",
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black87,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w200),
              ),
            ),
            Container(
              width: double.infinity,
              child: Wrap(
                direction: Axis.horizontal,
                //排列方向
                alignment: WrapAlignment.start,
                //内容对其方向
                spacing: 2.5,
                //主轴(水平)方向间距
                runSpacing: 1.25,
                // 纵轴（垂直）方向间距
                children: <Widget>[
                  Chip(
                    label: Text("flag"),
                    avatar: Icon(Icons.flag),
                    deleteIcon: Icon(Icons.delete),
                    onDeleted: (){
                      Toast.show("删除", context,duration: 1,gravity: Toast.BOTTOM);
                    },
                  ),
                  Chip(
                    label: Text("people"),
                    avatar: Icon(Icons.people),
                  ),
                  Chip(
                    label: Text("close"),
                    avatar: Icon(Icons.close),
                  ),
                  Chip(
                    label: Text("lock"),
                    avatar: Icon(Icons.lock),
                  ),
                  Chip(
                    label: Text("cake"),
                    avatar: Icon(Icons.cake),
                  ),
                  Chip(
                    label: Text("close"),
                    avatar: Icon(Icons.close),
                  ),
                  Chip(
                    label: Text("clear"),
                    avatar: Icon(Icons.clear),
                  ),
                  Chip(
                    label: Text("zoom_out_map"),
                    avatar: Icon(Icons.zoom_out_map),
                  ),
                  Chip(
                    label: Text("book"),
                    avatar: Icon(Icons.book),
                  ),
                ],
              ),
            ),
            Divider(),//添加分割线的组件
          ],
        ),
      ),
    );
  }
}

