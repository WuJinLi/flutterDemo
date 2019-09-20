import 'package:flutter/material.dart';
import 'listdata.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('flutter demo'),
        ),
        body: ListHome(),
      ),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

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
    ),//这是GridView的属性，这一点与GridView.count()方式是有区别的
    itemBuilder: _getData,//构建包含数据的widget，自身遍历集合切返回含数据的widget
    itemCount: listData.length,//数据的长度
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

ListView _getListViewItemByNormal(List list) {
  var temple = list.map((value) {
    return ListTile(
      title: Text(value["title"]),
      subtitle: Text(value["author"]),
      leading: Icon(Icons.settings),
    );
  });

  return ListView(
    children: temple.toList(),
  );
}

ListView _getListViewItemByListTile(List list) {
  return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(list[index]["title"]),
          subtitle: Text(list[index]["author"]),
          leading: Icon(Icons.settings),
        );
      });
}

/**
 * 圆角图片的实现 container实现圆角
 */
class CircularImage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 300.0,
      height: 300.0,
      decoration: BoxDecoration(
          border: Border.all(width: 2.0, color: Colors.red),
          borderRadius: BorderRadius.circular(150.0),
          image: DecorationImage(
              image: NetworkImage(
                  "http://pic13.nipic.com/20110316/4722789_085024215161_2.jpg"),
              fit: BoxFit.cover)),
    );
  }
}

/**
 *ClipOval实现圆形图片
 */
class CircularImage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        child: ClipOval(
          child: Image.network(
            "http://pic13.nipic.com/20110316/4722789_085024215161_2.jpg",
            width: 100.0,
            height: 100.0,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

/**
 * Container,Text,Image组件
 */
class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
          child: Text(
            "this is flutter demo this is flutter demo this is flutter demo this is flutter demo this is flutter demo this is flutter demo this is flutter demo this is flutter demo this is flutter demo this is flutter demo this is flutter demo this is flutter demo this is flutter demo this is flutter demo this is flutter demo this is flutter demo this is flutter demo this is flutter demo this is flutter demo this is flutter demo this is flutter demo this is flutter demo this is flutter demo this is flutter demo this is flutter demo this is flutter demo this is flutter demo this is flutter demo this is flutter demo this is flutter demo",
            textAlign: TextAlign.center,
            //文本显示位置
            textDirection: TextDirection.ltr,
            maxLines: 5,
            //最大行
            style: TextStyle(
                color: Colors.black,
                fontSize: 12.0,
//            fontWeight: FontWeight.w900//字体加粗倍数
                fontStyle: FontStyle.italic,
                //字体样式（正常，倾斜）
                decoration: TextDecoration.underline,
                //字体的装饰线（lineThrough,overline,underline）
                decorationColor: Colors.blue,
                //装饰线的颜色
                decorationStyle: TextDecorationStyle.dotted,
                //装饰线的样式（double->双线,dashed->虚线，solid->实线,dotted->点虚）
                wordSpacing: 2.0,
                //字间距
                letterSpacing: 2.0),
            overflow: TextOverflow.ellipsis,
            //裁剪(TextOverflow.clip),省略号（TextOverflow.ellipsis），渐隐（TextOverflow.fade）
            textScaleFactor: 1.0, //字体方法倍数
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.green, width: 2.0), //边框的颜色，宽度
              borderRadius: BorderRadius.all(Radius.circular(9.0)) //边框拐角处的弧度
              ),
          //设置container的背景属性
          width: 300.0,
          //double 类型  单位px
          height: 300.0,
          padding: EdgeInsets.all(10.0),
          //container的内边距
          transform: Matrix4.translationValues(0.0, 3.0, 0.0),
          //位移属性，旋转，平移，缩放，倾斜
          alignment: Alignment.centerLeft, //这是容器内元素的位置信息
        ),
        Container(
          width: 300.0,
          height: 300.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.red, width: 2.0),
              borderRadius: BorderRadius.all(Radius.circular(8.0))),
          child: Column(
            children: <Widget>[
              Text(
                "本地图片",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 12.0,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.black),
              ),
              Image.asset(
                "images/3.0x/ic_recycle.png",
                width: 100.0,
                height: 100.0,
              ),
              Text(
                "远程图片",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 12.0,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.black),
              ),
              Image.network(
                "https://www.baidu.com/img/bd_logo1.png", //图片地址
                width: 100.0,

                //图片的尺寸
                height: 100.0,
                fit: BoxFit.cover,
                //图片显示模式（原图，缩小，裁剪）
//                alignment: Alignment.centerRight,//位置
                color: Colors.green,
                colorBlendMode: BlendMode.difference,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

/**
 * Flutter图片组件
 * <p>本地图片 image.asset 1.项目根目录创建文件夹images,在创建文件夹下创建多分辨率的文件夹2.0x，3.0x等;2.在pubspec.yaml中配置资源文件assets
 * <p>远程图片 image.network
 */
