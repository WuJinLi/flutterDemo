import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

/**
 * Dismissible 实现侧滑删除
 *
 * 简单实现侧滑删除，具体的复杂的删除操作对应具体业务进行具体的操作
 */
class DismissibleDetail extends StatelessWidget {
  //创建数据集合
  List<String> items = new List<String>.generate(30, (i) => '列表项 ${i + 1}');

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('dismissable实现侧滑删除功能'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: ListView.builder(
            itemCount: items.length, //设置item的长度，于数据源长度相同
            itemBuilder: (context, index) {
              //创建数据源对应的item
              final item = items[index];
              return Dismissible(
                //创建侧滑删除组件，包裹item
                key: Key(item),
                child: ListTile(
                  title: Text('${item}'),
                ),
                onDismissed: (direction) {
                  //删除操作
                  items.removeAt(index);
                  Toast.show('删除第${index+1}数据成功!', context,
                      duration: Toast.LENGTH_SHORT, gravity: Toast.CENTER);
                },
              );
            }),
      ),
    );
  }
}
