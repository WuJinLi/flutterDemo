import 'package:flutter/material.dart';
import 'package:flutter_learn/res/listdata.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter",
      home: Scaffold(
          appBar: AppBar(
            title: Text('flutter demo'),
          ),
          body: CardViewWidget()),
//      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

/*****************************CardView********************************/

class CardViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: listData.map((value) {
        return Card(
          margin: EdgeInsets.all(5.0),
          child: Column(
            children: <Widget>[
              AspectRatio(
                  aspectRatio: 16.0 / 9.0, //AspectRatio控件控制子元素的宽高比
                  child: Image.network(value["imageurl"],fit: BoxFit.cover,)),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(value["imageurl"]),
                ),
                title: Text(value["title"]),
                subtitle: Text(value["author"]),
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}

List<Widget> _getItemLikeNetData() {
  listData.map((value) {
    return Card(
      child: Column(
        children: <Widget>[
          AspectRatio(
              aspectRatio: 16.0 / 9.0, //AspectRatio控件控制子元素的宽高比
              child: Image.network(value["url"])),
          ListTile(
//            leading: ClipOval(
//              //ClipOval圆形头像的控件
//              child: Image.asset("images/a.jpg",fit: BoxFit.cover,width: 40.0, height: 40.0,),
//            ),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(value["url"]),
            ),
            title: Text(value["title"]),
            subtitle: Text(value["author"]),
          )
        ],
      ),
    );
  }).toList();
}

List<Widget> _getItemNormal() {
  List<Widget> list = new List();
  for (var i = 0; i < 20; i++) {
    list.add(Card(
      child: Column(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 16.0 / 9.0, //AspectRatio控件控制子元素的宽高比
            child: Image.asset("images/a.jpg"),
          ),
          ListTile(
//            leading: ClipOval(
//              //ClipOval圆形头像的控件
//              child: Image.asset("images/a.jpg",fit: BoxFit.cover,width: 40.0, height: 40.0,),
//            ),
            leading: CircleAvatar(
              backgroundImage: AssetImage("images/a.jpg"),
//              radius: 10.0,
            ),
            title: Text("张三$i"),
            subtitle: Text("高级工程师$i"),
          )
        ],
      ),
    ));
  }

  return list;
}

/*****************************stack组件相当于android中framelayout********************************/

/**
 * Stack组件通过自身属性alignment来进行子元素的定位
 */
class StackByAlignment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment(-1.0, 1.0), //通过Alignment来设置stack中子元素的位置
        children: <Widget>[
          Container(
            width: 100.0,
            height: 100.0,
            color: Colors.black,
          ),
          Container(
            width: 80.0,
            height: 80.0,
            color: Colors.blue,
          ),
          Container(
            width: 60.0,
            height: 60.0,
            color: Colors.pink,
          )
        ],
      ),
    );
  }
}

/**
 * Stack组件结合Align组件进行子元素多元化的定位
 * Align组件使用属性alignment中多样性可以完成对指定子元素的位置设定
 */
class StackByAlign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        width: 400.0,
        height: 400.0,
        color: Colors.black12,
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Icon(
                Icons.add,
                size: 50.0,
                color: Colors.white,
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.list,
                size: 50.0,
                color: Colors.white,
              ),
            ),
            Align(
//              alignment: Alignment.center,
              alignment: Alignment(-0.5, 0.0),
              child: Icon(
                Icons.settings,
                size: 50.0,
                color: Colors.white,
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Icon(
                Icons.access_alarm,
                size: 50.0,
                color: Colors.white,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Icon(
                Icons.home,
                size: 50.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/**
 * Stack组件结合Positioned组件进行子元素多元化的定位
 * Positioned组件left，top，right，bottom来控制子元素的显示位置，
 */
class StackByPositioned extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400.0,
        height: 400.0,
        color: Colors.black12,
        child: Stack(
          children: <Widget>[
            Positioned(
                right: 100.0,
                top: 100.0,
                child: Icon(
                  Icons.ac_unit,
                  size: 40.0,
                  color: Colors.white,
                )),
            Positioned(
              left: 100.0,
              bottom: 100.0,
              child: Icon(
                Icons.access_time,
                size: 40.0,
                color: Colors.white,
              ),
            ),
            Positioned(
                left: 100.0,
                top: 100.0,
                child: Icon(
                  Icons.account_balance,
                  size: 40.0,
                  color: Colors.white,
                )),
            Positioned(
                right: 100.0,
                bottom: 100.0,
                child: Icon(
                  Icons.home,
                  size: 40.0,
                  color: Colors.white,
                )),
          ],
        ),
      ),
    );
  }
}

/**
 * 通过stack组件实现图文混排（图片为背景，描述文字在其底部）
 */

class ListByStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      alignment: Alignment.center,
      child: ListView(
        padding: EdgeInsets.all(10.0),
        children: _getListData(),
      ),
    );
  }
}

List<Widget> _getListData() {
  List<Widget> list = new List();
  for (var i = 0; i < 20; i++) {
    list.add(Container(
      width: 400.0,
      height: 200.0,
      child: Stack(
        children: <Widget>[
          Container(
            width: 400.0,
            height: 200.0,
            decoration: BoxDecoration(
//                color: Colors.black12,
                border: Border.all(color: Colors.blue, width: 2.0),
                borderRadius: BorderRadius.circular(10.0)),
            child: Image.asset(
              "images/a.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Align(
              //使用Align组件来实现组件位置的定位
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "文字信息$i",
                  style: TextStyle(
                      color: Colors.amberAccent,
                      fontSize: 12.0,
                      fontStyle: FontStyle.italic,
                      decorationStyle: TextDecorationStyle.solid,
                      decoration: TextDecoration.underline),
                ),
              )),
          Positioned(
              //使用Positioned组件进行组件位置的确定
              right: 10.0,
              top: 10.0,
              child: Image.asset(
                "images/ic_recycle.png",
                width: 30.0,
                height: 30.0,
                fit: BoxFit.cover,
              ))
        ],
      ),
    ));
    list.add(SizedBox(
      height: 10.0,
    ));
  }

  return list;
}

/*************************************Layout -> row column***********************************/

class LayoutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 180.0,
                  color: Colors.blue,
                ),
                flex: 1,
              )
            ],
          ),
          SizedBox(height: 5.0),
          Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  height: 180.0,
                  color: Colors.green,
                ),
              ),
              SizedBox(
                width: 5.0,
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                    height: 180.0,
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 87.5,
                          color: Colors.black26,
                        ),
                        SizedBox(height: 5.0),
                        Container(
                          height: 87.5,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}

/***********************************Padding*********************************/
class PaddingContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 2,
//      crossAxisSpacing: 4.0,
//      mainAxisSpacing: 4.0,
      children: _getGridViewItem(),
    );
  }
}

/**
 * 创造gridview数据
 */
List<Widget> _getGridViewItem() {
  List<Widget> list = new List();
  for (var i = 0; i < 11; i++) {
    list.add(Padding(
      //使用padding组件作为父容器来完成和子元素直接距离的调整
      padding: EdgeInsets.all(5.0), //设置padding值
      child: Container(
        //初始化子容器
        decoration: BoxDecoration(
          //设置子容器的背景颜色
          color: Colors.blue,
        ),
      ),
    ));
  }
  return list;
}

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
