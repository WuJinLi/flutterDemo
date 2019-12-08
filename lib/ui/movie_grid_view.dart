import 'package:flutter/material.dart';
import 'package:flutter_learn/model/movie.dart';
import 'package:flutter_learn/utils/deal_error_util.dart';
import 'package:flutter_learn/utils/utils.dart';

import 'bouncing_view.dart';
import 'image_load_view.dart';


//gridview展示列表
class MovieGridView extends StatelessWidget {
  final Movie movie;
  final Color textColor;

  MovieGridView(this.movie, {Key key, this.textColor = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //宽度=（屏幕宽度-总间隙宽度/3
    double width = (Utils.width - 6 * 2 - 5 * 2) / 3;
    //高度做适配
    double height = width * 383 / 270;

    return BouncingView(
      child: Container(
          width: width,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ImageLoadView(movie.images.medium.toString(),
                    fit: BoxFit.cover, height: height),
                SizedBox(height: 5),
                Text(movie.title,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: textColor),
                    maxLines: 1),
                SizedBox(height: 3),
              ])),
      onPressed: () => toast(context, movie.title),
    );
  }
}
