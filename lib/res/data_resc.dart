import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_learn/pages/page/datapersistence/data_persistence_main_page.dart';
import 'package:flutter_learn/pages/page/event/event_main_page.dart';
import 'package:flutter_learn/pages/page/listview_page.dart';
import 'package:flutter_learn/pages/page/pageview/page_view_main.dart';

List listData = [
  {
    "title": "西游记",
    "author": "吴承恩",
    "imageurl":
        "http://img4.cache.netease.com/photo/0001/2010-04-17/64EFS71V05RQ0001.jpg"
  },
  {
    "title": "三国演义",
    "author": "罗贯中",
    "imageurl":
        "http://img.redocn.com/sheji/20140819/chuangyeluntanhaibaobeijing_2924317.jpg"
  },
  {
    "title": "水浒传",
    "author": "施耐庵",
    "imageurl": "http://photocdn.sohu.com/20120625/Img346436473.jpg"
  },
  {
    "title": "红楼梦",
    "author": "曹雪芹",
    "imageurl":
        "http://img.redocn.com/sheji/20150304/qixiqingrenjiejiehunhaibao_3975017.jpg"
  },
  {
    "title": "大学",
    "author": "曾子",
    "imageurl": "http://pic39.nipic.com/20140329/5654593_113505353155_2.jpg"
  },
  {
    "title": "中庸",
    "author": "子思",
    "imageurl":
        "http://img4.imgtn.bdimg.com/it/u=3402074881,2283617737&fm=26&gp=0.jpg"
  },
  {
    "title": "论语",
    "author": "孔子",
    "imageurl":
        "http://img5.imgtn.bdimg.com/it/u=2967113123,3272767240&fm=26&gp=0.jpg"
  },
  {
    "title": "孟子",
    "author": "孟子",
    "imageurl":
        "http://img3.imgtn.bdimg.com/it/u=1738703766,3397955731&fm=26&gp=0.jpg"
  },
  {
    "title": "诗经",
    "author": "《诗》温柔宽厚",
    "imageurl": "http://pic31.nipic.com/20130718/9885883_150221623000_2.jpg"
  },
  {
    "title": "尚书",
    "author": "《书》疏通知远，广博易良",
    "imageurl":
        "http://img0.imgtn.bdimg.com/it/u=1560883013,966679573&fm=26&gp=0.jpg"
  },
  {
    "title": "礼记",
    "author": "《易》洁静精微",
    "imageurl":
        "http://img5.imgtn.bdimg.com/it/u=2048146211,2844218056&fm=26&gp=0.jpg"
  },
  {
    "title": "周易",
    "author": "《礼》恭俭庄敬",
    "imageurl":
        "http://gss0.baidu.com/-fo3dSag_xI4khGko9WTAnF6hhy/lvpics/pic/item/6a600c338744ebf8f40404fbd1f9d72a6159a7f9.jpg"
  },
  {
    "title": "春秋",
    "author": "《春秋》属词比事",
    "imageurl":
        "http://img2.imgtn.bdimg.com/it/u=3640011857,1022100535&fm=26&gp=0.jpg"
  },
];

var bookData = {
  "name": "book1",
  "author": {"name": "Jack"},
  "publishDate": "2018-10-10",
  "publisher": "xxx company"
};

var pages = [
  {"title": "路由跳转", "routeName": "/route_page", "target": null},
  {"title": "ListView", "routeName": "", "target": ListViewPage()},
  {"title": "命名路由，有状态页面", "routeName": "/name_route_page", "target": null},
  {"title": "按钮种类详情页面", "routeName": "/buttom_page", "target": null},
  {"title": "文本输入框", "routeName": "/text_field", "target": null},
  {"title": "勾选框", "routeName": "/check_box", "target": null},
  {"title": "网络请求", "routeName": "/net_work_page", "target": null},
  {"title": "radio", "routeName": "/radio_page", "target": null},
  {"title": "学生信息录取页面", "routeName": "/student_info_page", "target": null},
  {"title": "日期选择组件", "routeName": "/date_pick_page", "target": null},
  {"title": "Json数据解析", "routeName": "/json_page", "target": null},
  {"title": "可滚动组件", "routeName": "/scrollview", "target": null},
  {"title": "流式布局", "routeName": "/flowlayout", "target": null},
  {"title": "自定义主题", "routeName": "/custom_theme", "target": null},
  {"title": "弹出菜单组件", "routeName": "/popup_menu", "target": null},
  {"title": "对话框组件", "routeName": "/dialog_page", "target": null},
  {"title": "Cupertion风格组件", "routeName": "/cupertino_page", "target": null},
  {"title": "布局", "routeName": "/layout_main", "target": null},
  {"title": "装饰，视觉效果", "routeName": "/decorate_main", "target": null},
  {"title": "动画", "routeName": "/animate_main", "target": null},
  {"title": "轮播图", "routeName": "", "target": PageViewMainPage()},
  {"title": "事件通知", "routeName": "", "target": EventMainPage()},
  {"title": "持久化", "routeName": "", "target": DataPersistenceMainPage()},
];

var layoutMainDatas=[
  {"title": "Stack/Align", "routeName": "/stack_align_layout", "target": null},
  {"title": "Stack/Alignment", "routeName": "/stack_aligment_layout", "target": null},
  {"title": "Stack/Positioned", "routeName": "/stack_positioned_layout", "target": null},
  {"title": "IndexStack", "routeName": "/index_stack_layout", "target": null},
  {"title": "OverflowBox", "routeName": "/overflowbox_layout", "target": null},
  {"title": "ConstrainedBox", "routeName": "/constrainedbox_layout", "target": null},
  {"title": "LimitedBox", "routeName": "/limitedbox_layout", "target": null},
  {"title": "AspectRatio调整宽高比", "routeName": "/aspectratio_layout", "target": null},
  {"title": "FractionallySizedBox百分比", "routeName": "/fractionallysizebox_layout", "target": null},
  {"title": "表格布局", "routeName": "/table_layout", "target": null},
  {"title": "综合demo", "routeName": "/synthesize_demo", "target": null},
  {"title": "transform矩阵转换", "routeName": "/transform_layout", "target": null},
  {"title": "offstage组件的显示隐藏", "routeName": "/offstage_layout", "target": null},
];


class Colours {
  static const Color app_main = Color(0xFF666666);
  static const Color app_bg = Color(0xfff5f5f5);

  static const Color transparent_80 = Color(0x80000000); //<!--204-->
  static const Color white_19 = Color(0X19FFFFFF);
  static const Color transparent_ba = Color(0xBA000000);

  static const Color text_dark = Color(0xFF333333);
  static const Color text_normal = Color(0xFF666666);
  static const Color text_gray = Color(0xFF999999);

  static const Color divider = Color(0xffe5e5e5);

  static const Color gray_33 = Color(0xFF333333); //51
  static const Color gray_66 = Color(0xFF666666); //102
  static const Color gray_99 = Color(0xFF999999); //153
  static const Color common_orange = Color(0XFFFC9153); //252 145 83
  static const Color gray_ef = Color(0XFFEFEFEF); //153

  static const Color gray_f0 = Color(0xfff0f0f0); //<!--204-->
  static const Color gray_f5 = Color(0xfff5f5f5); //<!--204-->
  static const Color gray_cc = Color(0xffcccccc); //<!--204-->
  static const Color gray_ce = Color(0xffcecece); //<!--206-->
  static const Color green_1 = Color(0xff009688); //<!--204-->
  static const Color green_62 = Color(0xff626262); //<!--204-->
  static const Color green_e5 = Color(0xffe5e5e5); //<!--204-->

  static const Color green_de = Color(0xffdedede);
}

Map<String, Color> themeColorMap = {
  'redAccent': Colors.redAccent,
  'gray': Colours.gray_33,
  'blue': Colors.blue,
  'blueAccent': Colors.blueAccent,
  'cyan': Colors.cyan,
  'deepPurple': Colors.deepPurple,
  'deepPurpleAccent': Colors.deepPurpleAccent,
  'deepOrange': Colors.deepOrange,
  'green': Colors.green,
  'lime': Colors.lime,
  'indigo': Colors.indigo,
  'indigoAccent': Colors.indigoAccent,
  'orange': Colors.orange,
  'amber': Colors.amber,
  'purple': Colors.purple,
  'pink': Colors.pink,
  'red': Colors.red,
  'cyan': Colors.cyan,
  'teal': Colors.teal,
  'black': Colors.black,
};
