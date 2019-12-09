import 'package:flutter/material.dart';
import 'package:flutter_learn/model/movie.dart';
import 'package:flutter_learn/ui/bouncing_view.dart';
import 'package:flutter_learn/ui/image_load_view.dart';

class ItemList extends StatelessWidget {
  final VoidCallback onTap;
  final Movie movie;

  ItemList({Key key, this.movie, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// 影片图片
    var movieImage = ImageLoadView(movie.images.medium,
        borderRadius: BorderRadius.circular(4.0), height: 140.0, width: 100.0);
    var casts = '';
    movie.casts.map((cast) {
      casts += cast.name + '/';
    }).toList();

    var directors = '';
    movie.directors.map((director) {
      directors += director.name + ' ';
    }).toList();

    var movieMsg = Container(
      //高度
      height: 140.0,
      margin: EdgeInsets.only(left: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          /// 电影名称（中文名）
          Text(
            movie.title,
            textAlign: TextAlign.left,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.black),
          ),

          /// 导演
          Text('导演：' + directors, maxLines: 2, overflow: TextOverflow.ellipsis),

          /// 主演
          Text('主演：' + casts),

          Row(
            children: <Widget>[
              /// 豆瓣评书
              Text('评分：' +
                  (movie.rating.average.toInt() == 0
                      ? "暂无评分"
                      : movie.rating.average.toString())),

              SizedBox(width: 10.0),
            ],
          ),
        ],
      ),
    );

    //内部实现是继承GestureDetector来实现点击事件处理
    return BouncingView(
      //点击事件
      onPressed: onTap,

      child: Card(
        child: Row(
          children: <Widget>[
            movieImage,
            // Expanded 均分
            Expanded(
              child: movieMsg,
            ),
          ],
        ),
      ),
    );
  }
}
