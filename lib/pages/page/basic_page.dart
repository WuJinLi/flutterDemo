import 'package:flutter/material.dart';
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