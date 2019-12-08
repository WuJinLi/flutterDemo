import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_learn/api/apis.dart';
import 'package:flutter_learn/api/apis_service.dart';
import 'package:flutter_learn/model/movie.dart';
import 'package:flutter_learn/ui/item_list.dart';
import 'package:flutter_learn/ui/movie_grid_view.dart';
import 'package:flutter_learn/ui/state_view/empty.dart';
import 'package:flutter_learn/ui/state_view/error.dart';
import 'package:flutter_learn/utils/deal_error_util.dart';
import 'package:flutter_learn/utils/loading_util.dart';

class MovieMainPage extends StatefulWidget {
  @override
  createState() => _MovieMainState();
}

class _MovieMainState extends State<MovieMainPage> {
  Filmtype filmtype = Filmtype.IN_THEATERS;
  String title = '正在热映';
  var result;
  bool isList = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    result = showFilm();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.keyboard_backspace),
              onPressed: () => Navigator.pop(context)),
          IconButton(
              icon: isList ? Icon(Icons.list) : Icon(Icons.grid_on),
              onPressed: () {
                isList = !isList;
                setState(() {});
              })
        ],
      ),
      drawer: Drawer(
        child: _drawer(),
      ),
      body: FutureBuilder(
        builder: (_, AsyncSnapshot<List<Movie>> snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return EmptyPage();
            case ConnectionState.waiting:
              return getLoadingWidget();
            case ConnectionState.done:
              print('done');
              if (snapshot.hasError) {
                print(snapshot.error.toString());
                return ErrorPage(text: '网络请求错误');
              } else {
                print('${snapshot.data.length}');
                if (snapshot.data.length > 0) {
                  return _bodyContent(snapshot.data);
                } else {
                  return EmptyPage(
                      text: '暂无数据', imageAsset: 'images/empty.jpeg');
                }
              }
              break;
            default:
              return null;
              break;
          }
        },
        future: this.result,
      ),
    );
  }

  Widget _bodyContent(List<Movie> movies) {
    return this.isList
        ? ListView.builder(
            itemBuilder: (context, index) {
              Movie movie = movies[index];
              return ItemList(
                movie: movie,
                onTap: () {
                  toast(context, movie.title);
                },
              );
            },
            itemCount: movies.length,
          )
        : SingleChildScrollView(
            ///此处网格展示数据可使用gridview或者瀑布流自适应布局（前提是自布局宽高需要根据屏幕动态计算）
            padding: EdgeInsets.all(6.0),
            physics: const BouncingScrollPhysics(),
            child: Wrap(
              spacing: 5,
              runSpacing: 5,
              children: movies.map((movie) => MovieGridView(movie)).toList(),
            ),
          );
  }

  _drawer() {
    return ListView(
      children: <Widget>[
        drawerItem("正在热映", Icon(Icons.hot_tub), Filmtype.IN_THEATERS),
        Divider(),
        drawerItem("即将上映", Icon(Icons.hot_tub), Filmtype.COMING_SOON),
        Divider(),
        drawerItem("新片榜", Icon(Icons.hot_tub), Filmtype.NEW_MOVIES),
        Divider(),
        drawerItem("口碑榜", Icon(Icons.hot_tub), Filmtype.WEEKLY),
        Divider(),
        drawerItem("Top250", Icon(Icons.hot_tub), Filmtype.TOP250),
        Divider(),
        drawerItem("北美票房榜", Icon(Icons.hot_tub), Filmtype.US_BOX),
      ],
    );
  }

  Widget drawerItem(String title, Icon icon, Filmtype filmtype) {
    return ListTile(
      title: Text(title),
      leading: CircleAvatar(
        child: icon,
      ),
      onTap: () {
        this.filmtype = filmtype;
        _switchTitle();
        setState(() {});
        Navigator.pop(context); //关闭抽屉
      },
    );
  }

  _switchTitle() {
    switch (filmtype) {
      case Filmtype.IN_THEATERS:
        this.title = "正在热映";
        this.result = showFilm();
        break;
      case Filmtype.COMING_SOON:
        this.title = "即将上映";
        this.result = showFilm(type: Filmtype.COMING_SOON);
        break;
      case Filmtype.NEW_MOVIES:
        this.title = "新片榜";
        break;
      case Filmtype.WEEKLY:
        this.title = "口碑榜";
        break;
      case Filmtype.TOP250:
        this.title = "Top250";
        break;
      case Filmtype.US_BOX:
        this.title = "北美票房榜";
        break;
    }
  }

  Future<List<Movie>> showFilm({type: Filmtype.IN_THEATERS}) async {
    return await apiService.showFilms(filmType: type);
  }
}
