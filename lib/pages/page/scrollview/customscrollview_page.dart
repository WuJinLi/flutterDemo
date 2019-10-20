import 'package:flutter/material.dart';
import 'package:flutter_learn/res/data_resc.dart';

/**
 * CustomScrollView是可以使用Sliver来自定义滚动模型（效果）的组件。它可以包含多种滚动模型，举个例子，假设有一个页面，
 * 顶部需要一个GridView，底部需要一个ListView，而要求整个页面的滑动效果是统一的，即它们看起来是一个整体。
 * 如果使用GridView+ListView来实现的话，就不能保证一致的滑动效果，因为它们的滚动效果是分离的，所以这时就需要一个"胶水"，
 * 把这些彼此独立的可滚动组件"粘"起来，而CustomScrollView的功能就相当于“胶水”。
 *
 * 为了能让可滚动组件能和CustomScrollView配合使用，Flutter提供了一些可滚动组件的Sliver版，如SliverList、SliverGrid等。
 */
class CustomScrollViewPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CustomScrollViewState();
}

class _CustomScrollViewState extends State<CustomScrollViewPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: CustomScrollView(
        slivers: <Widget>[
          //SliverAppBar
          SliverAppBar(
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                "http://img4.cache.netease.com/photo/0001/2010-04-17/64EFS71V05RQ0001.jpg",
                fit: BoxFit.cover,
              ),
              title: Text('CustomScrollView'),
            ),
          ),

          /**
           * SliverGrid 实现网格布局样式的组件
           *
           */
          SliverPadding(
            padding: EdgeInsets.all(10.0),
            sliver: SliverGrid(
              delegate:
                  //展示item布局
                  SliverChildBuilderDelegate((BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.cyan[100 * (index % 9)],
                  child: ListTile(
                    title: Text("${listData[index]['title']}"),
                    subtitle: Text("${listData[index]['author']}"),
                  ),
                );
              }, childCount: listData.length),
              gridDelegate:
                  //设置gridview布局的属性：列数，主轴，贯穿轴方向的距离
                  SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0),
            ),
          ),

          /**
           * SliverFixedExtentList 实现list的widget
           * childCount 列表数据的数量
           * itemExtent 单个item的高度
           * delegate 列表展示的数据
           *
           */
          SliverFixedExtentList(
              delegate:
                  //设置listview子item的布局
                  SliverChildBuilderDelegate((BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.lightBlue[100 * (index % 9)],
                  child: Text('list item $index'),
                );
              }, childCount: 50),
              itemExtent: 50.0),
        ],
      ),
    );
  }
}
