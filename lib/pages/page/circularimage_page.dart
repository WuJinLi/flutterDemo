import 'package:flutter/material.dart';
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