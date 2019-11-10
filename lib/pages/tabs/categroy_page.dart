import 'package:flutter/material.dart';
import 'package:flutter_learn/res/data_resc.dart';
import 'package:toast/toast.dart';

/**
 * 分类页面实现listview创建多种方式：
 * 1.Listview:
 * 2.ListView.count():
 * 3.ListView.builder():
 * 4.ListView.custom():
 * 5.ListWheelScrollView():实现滚轮样式的列表
 */
class CategroyPage extends StatefulWidget {
  @override
  _CategroyState createState() => _CategroyState();
}

class _CategroyState extends State<CategroyPage> {
  FixedExtentScrollController controller = new FixedExtentScrollController(initialItem: listData.length~/2);
  String author=listData.isEmpty?'':listData[listData.length~/2]['author'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        title: Text("分类"),
//      ),
      body: Container(
          child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Text('${this.author}',textAlign: TextAlign.center,style: TextStyle(
                  fontSize: 30.0,color: Colors.cyanAccent
                ),),
              ),
            ],
          ),
          Expanded(
            child: ListWheelScrollView(
              itemExtent: 60.0,
              controller: controller,
              physics: FixedExtentScrollPhysics(),
              onSelectedItemChanged: (index) {
//                Toast.show(listData[index]['author'], context,
//                    duration: Toast.LENGTH_SHORT, gravity: Toast.CENTER);
              setState(() {
                this.author=listData[index]['author'];
              });
              },
              children: listData.map((value) {
                return ListTile(
//              leading: Image.network(value["imageurl"],fit: BoxFit.cover,),
                  title: Text(value["title"]),
                  subtitle: Text(value["author"]),
                );
              }).toList(),
            ),
          ),
        ],
      )

//            /****************** ListView.separated*****************/
//            ListView.separated(
//                itemBuilder: (context, index) {
//                  return ListTile(
//                    title: Text(listData[index]['title']),
//                    subtitle: Text(listData[index]['author']),
//                    leading: Image.network(
//                      listData[1]['imageurl'],
//                      fit: BoxFit.cover,
//                    ),
//                  );
//                },
//                separatorBuilder: (context, index) {
//                  return SizedBox(
//                    width: double.infinity,
//                    height: 50.0,
//                    child: Image.asset(
//                      'images/ic_recycle.png',
//                      alignment: Alignment.centerLeft,
//                    ),
//                  );
//                },
//                itemCount: listData.length,
////              physics: NeverScrollableScrollPhysics(),//不滚动效果
////              physics:BouncingScrollPhysics(),//ios效果
////            physics: ClampingScrollPhysics(),//Android效果
////            physics: FixedExtentScrollPhysics(),
//            ),
          /****************** ListView.builder*****************/
//        ListView.builder(
////            itemExtent: 60.0, //设置item的高的
//            itemCount: listData.length, //item的数量
////            shrinkWrap: true, //是否根据子item的高度来确定listview的高度
//            itemBuilder: (context, index) {
//              return ListTile(
//                title: Text(listData[index]['title']),
//                subtitle: Text(listData[index]['author']),
//                leading: Image.network(
//                  listData[1]['imageurl'],
//                  fit: BoxFit.cover,
//                ),
//              );
//            }),

          /******************ListView*****************/
//        ListView(
////          children: listData.map((value) {
////            return ListTile(
//////              leading: Image.network(value["imageurl"],fit: BoxFit.cover,),
////              title: Text(value["title"]),
////              subtitle: Text(value["author"]),
////              onTap: () {
////                Toast.show(value["title"], context, duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);//显示toast
////              },
////            );
////          }).toList(),
////        ),
          ),
    );
  }
}
