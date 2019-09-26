import 'package:flutter/material.dart';
import 'package:flutter_learn/res/list_data.dart';
/********************************************************************/
class ListHome extends StatelessWidget {
  List list = new List();

  ListHome() {
    this.list = listData;
  }

  @override
  Widget build(BuildContext context) {
//    return _getListViewItemByListTile(list);
//    return _getListViewItemByNormal(list);
//    return _getGridViewByCount(list);
    return _getGridViewByBuilder(context);
  }
}

/**
 * 获取GridView的方法
 */
GridView _getGridViewByBuilder(BuildContext context) {
  return GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 5.0,
      mainAxisSpacing: 5.0,
    ), //这是GridView的属性，这一点与GridView.count()方式是有区别的
    itemBuilder: _getData, //构建包含数据的widget，自身遍历集合切返回含数据的widget
    itemCount: listData.length, //数据的长度
  );
}

/**
 * 获取包含数据的widget
 */
Widget _getData(context, index) {
  return Container(
    alignment: Alignment.center,
    decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(color: Colors.red, width: 2.0),
        borderRadius: BorderRadius.circular(5.0)),
    margin: EdgeInsets.all(10.0),
    child: ListTile(
      title: Text(listData[index]["title"]),
      subtitle: Text(listData[index]["author"]),
      leading: Icon(Icons.settings),
    ),
  );
}

/**
 * 获取GridView的方法
 */
GridView _getGridViewByCount(List list) {
  return GridView.count(
    crossAxisCount: 2,
    //表格布局的列
    children: _getListWidget(list),
    //表格布局展示的数据-》包含数据的视图集合
    crossAxisSpacing: 5.0,
    //水平子Widget之间的间距
    mainAxisSpacing: 5.0,
    //垂直子Widge之间的间距
    childAspectRatio: 1.0, //子widget宽高比例
  );
}

/**
 * 获取子widget的集合
 */
List<Widget> _getListWidget(List list) {
  var temple = list.map((value) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(color: Colors.red, width: 2.0),
          borderRadius: BorderRadius.circular(5.0)),
      margin: EdgeInsets.all(10.0),
      child: ListTile(
        title: Text(value["title"]),
        subtitle: Text(value["author"]),
        leading: Icon(Icons.settings),
      ),
    );
  });
  return temple.toList();
}