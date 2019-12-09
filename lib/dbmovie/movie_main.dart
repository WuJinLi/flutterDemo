import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learn/api/apis.dart';
import 'package:flutter_learn/api/apis_service.dart';
import 'package:flutter_learn/base/base_widget.dart';
import 'package:flutter_learn/model/movie.dart';
import 'package:flutter_learn/ui/item_list.dart';
import 'package:flutter_learn/ui/loadmore_view.dart';
import 'package:flutter_learn/ui/movie_grid_view.dart';
import 'package:flutter_learn/utils/deal_error_util.dart';

import 'movie_search.dart';

class MovieMainPage extends BaseWidget {
  @override
  attachState() => _MovieMainState();
}

class _MovieMainState extends BaseWidgetState<MovieMainPage> {
  Filmtype filmtype = Filmtype.IN_THEATERS;
  String title = '正在热映';
  String bottomText = "....加载更多....";
  var result;
  List<Movie> movies = List();
  bool isList = true;
  ScrollController _controller = ScrollController();
  int currCount = 0;
  int totalCount = 0;
  int count = 20;
  TextStyle textStyle = TextStyle(color: Colors.blue);
  bool isLoadMore = true;

  @override
  void initState() {
    super.initState();
    setAppBarVisible(true);
    setFloatActionButtonVisible(true);
    _controller.addListener(() {
      if (_controller.position.pixels == _controller.position.maxScrollExtent) {
        ///不支持加载更多则直接展示没有更多数据布局
        if (!isLoadMore) {
          bottomText = '----我是有底线的----';
          textStyle = TextStyle(color: Colors.grey);
          setState(() {});
          return;
        }

        ///支持下拉加载更多
        ///如果不是最后一页数据，则生成新的数据添加到list里面
        if (currCount < totalCount) {
          bottomText = '....加载更多....';
          textStyle = TextStyle(color: Colors.blue);
          currCount += 20;
          setState(() {});
          showFilm();
        } else {
          bottomText = '----我是有底线的----';
          textStyle = TextStyle(color: Colors.grey);
          setState(() {});
        }
      }
    });

    ///初始化页面加载默认数据
    showFilm();
  }

  @override
  attachAppBar() => AppBar(
        title: Text(
          this.title,
          style: TextStyle(fontSize: 17),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.keyboard_backspace),
              onPressed: () => Navigator.pop(context)),
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return MovieSearchPage();
                }));
              })
        ],
      );

  @override
  Widget attachContentWidget(BuildContext context) {
    return _bodyContent();
  }

  @override
  Widget attachFloatingActionButtonWidget() {
    return FloatingActionButton(
      onPressed: () {
        isList = !isList;
        setState(() {});
      },
      child: isList ? Icon(Icons.menu) : Icon(Icons.apps),
    );
  }

  @override
  void onClickErrorWidget() {}

  @override
  attachBaseDrawer() => Drawer(child: _drawer());

  Widget _bodyContent() {
    return this.isList
        ? ListView.builder(
            itemBuilder: (context, index) {
              if (index == movies.length) {
                return LoadMoreView(
                  this.bottomText,
                  textStyle: this.textStyle,
                );
              } else {
                Movie movie = movies[index];
                return ItemList(
                  movie: movie,
                  onTap: () {
                    toast(context, movie.title);
                  },
                );
              }
            },
            itemCount: movies.length + 1,
            controller: _controller,
          )
        : SingleChildScrollView(
            ///此处网格展示数据可使用gridview或者瀑布流自适应布局（前提是自布局宽高需要根据屏幕动态计算）
            padding: EdgeInsets.all(6.0),
            physics: const BouncingScrollPhysics(),
            controller: _controller,
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
        //更新操作类型
        this.filmtype = filmtype;
        this.movies.clear();
        this.currCount = 0;
        this.totalCount = 0;
        _switchTitle();
        _switchRequest();
        setState(() {});
        Navigator.pop(context); //关闭抽屉
      },
    );
  }

  ///侧滑栏点击点击对应的类型
  _switchTitle() {
    switch (filmtype) {
      case Filmtype.IN_THEATERS:
        this.title = "正在热映";
        break;
      case Filmtype.COMING_SOON:
        this.title = "即将上映";
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

  //更具功能属性不同请求不同的数据接口
  _switchRequest() {
    switch (filmtype) {
      case Filmtype.IN_THEATERS:
      case Filmtype.COMING_SOON:
      case Filmtype.TOP250:
        this.isLoadMore = true;
        showFilm();
        break;
      case Filmtype.NEW_MOVIES:
      case Filmtype.WEEKLY:
      case Filmtype.US_BOX:
        this.isLoadMore = false;
        orderFilm();
        break;
    }
  }

  ///热映/即将上映//top250
  void showFilm() {
    showLoading().then((result) {
      apiService.showFilms((Hot hot) {
        this.totalCount = hot.total;
        movies.addAll(hot.subjects);
        this.title = hot.title;
        showContent();
      }, (error) {
        //异常处理，针对网络的 非网络的
        if (error is DioError) {
          dealError(error, context);
        } else {
          print(error); //打印非网络请求异常
        }
        showError();
      }, start: this.currCount, count: 20, filmType: this.filmtype);
    });
  }

  ///新片榜/口碑榜/北美票房榜
  void orderFilm() {
    showLoading().then((value) {
      apiService.orderFilm((OrderFilm orderFilm) {
        movies.addAll(orderFilm.subjects);
        this.title = orderFilm.title;
        showContent();
      }, (error) {
        //异常处理，针对网络的 非网络的
        if (error is DioError) {
          dealError(error, context);
        } else {
          print(error); //打印非网络请求异常
        }
        showError();
      }, filmtype);
    });
  }
}
