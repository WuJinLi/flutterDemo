import 'package:flutter/material.dart';
import 'package:flutter_learn/pages/page/datapersistence/sqflite_item_detail_page.dart';
import 'package:flutter_learn/utils/dbhelper.dart';
import 'package:toast/toast.dart';

class CheckInResult extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CheckInResultState();
  }
}

class CheckInResultState extends State<CheckInResult> {
  _deleteItem(int id, BuildContext context) async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('提示'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[Text('是否删除'), Text('一旦删除数据不可恢复！')],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  DBHelper.instance.delete(id).then((value) {
                    if (value > 0) {
                      Toast.show("删除成功", context,
                          duration: Toast.LENGTH_SHORT, gravity: Toast.CENTER);
                      setState(() {});
                    } else {
                      Toast.show("删除失败，请重新操作", context,
                          duration: Toast.LENGTH_SHORT, gravity: Toast.CENTER);
                    }
                  });
                  Navigator.pop(context);
                },
                child: Text('确定'),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pop(context, '取消');
                },
                child: Text('取消'),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("已打卡人员")),
      body: FutureBuilder<List<User>>(
        future: DBHelper.instance.getAllUser(),
        builder: (BuildContext context, AsyncSnapshot<List<User>> snapshot) {
          if (snapshot.connectionState == ConnectionState.none) {
            return Center(
              child: Text('暂无数据'),
            );
          } else if (snapshot.connectionState == ConnectionState.active ||
              snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.connectionState == ConnectionState.done) {
            // ignore: missing_return, missing_return, missing_return
            snapshot.data.forEach((value) {
              print(value.toMap());
            });
            if (snapshot.hasData) {
              if (snapshot.data.length > 0) {
                return ListView.builder(
                  itemBuilder: (context, index) {
                    User item = snapshot.data[index];
                    return ListTile(
                      //主标题
                      title: Text(item.name),
                      //子标题
                      subtitle: Text(item.id.toString()),
                      //长按删除
                      onLongPress: () {
                        _deleteItem(item.id, context);
                      },
                      //查看详情
                      trailing: IconButton(
                          icon: Icon(Icons.chevron_right),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return SqfliteItemDetailPage(item);
                            }));
                          }),
                    );
                  },
                  itemCount: snapshot.data.length,
                );
              } else {
                return Center(
                  child: Text('暂无数据'),
                );
              }
            } else if (snapshot.hasError) {
              return Center(
                child: Text(snapshot.error.toString()),
              );
            } else {
              return Center(
                child: Text('暂无数据'),
              );
            }
          }
        },
      ),
    );
  }
}
