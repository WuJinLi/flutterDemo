import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_learn/pages/page/datapersistence/data_persistence_main_page.dart';
import 'package:flutter_learn/pages/page/event/event_main_page.dart';
import 'package:flutter_learn/pages/page/expansiontile_page.dart';
import 'package:flutter_learn/pages/page/listview_page.dart';
import 'package:flutter_learn/pages/page/pageview/page_view_main.dart';
import 'package:flutter_learn/widget/loading_dialog.dart';

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
  {
    "title": "ExpansionTile",
    "routeName": "",
    "target": ExpansionTilePage()
  },{
    "title": "加载中",
    "routeName": "",
    "target": LoadingDialog()
  },
];

var layoutMainDatas = [
  {"title": "Stack/Align", "routeName": "/stack_align_layout", "target": null},
  {
    "title": "Stack/Alignment",
    "routeName": "/stack_aligment_layout",
    "target": null
  },
  {
    "title": "Stack/Positioned",
    "routeName": "/stack_positioned_layout",
    "target": null
  },
  {"title": "IndexStack", "routeName": "/index_stack_layout", "target": null},
  {"title": "OverflowBox", "routeName": "/overflowbox_layout", "target": null},
  {
    "title": "ConstrainedBox",
    "routeName": "/constrainedbox_layout",
    "target": null
  },
  {"title": "LimitedBox", "routeName": "/limitedbox_layout", "target": null},
  {
    "title": "AspectRatio调整宽高比",
    "routeName": "/aspectratio_layout",
    "target": null
  },
  {
    "title": "FractionallySizedBox百分比",
    "routeName": "/fractionallysizebox_layout",
    "target": null
  },
  {"title": "表格布局", "routeName": "/table_layout", "target": null},
  {"title": "综合demo", "routeName": "/synthesize_demo", "target": null},
  {"title": "transform矩阵转换", "routeName": "/transform_layout", "target": null},
  {"title": "offstage组件的显示隐藏", "routeName": "/offstage_layout", "target": null},
];

var forecast = [
  {
    "cond_code_d": "100",
    "cond_code_n": "101",
    "cond_txt_d": "晴",
    "cond_txt_n": "多云",
    "date": "2019-11-28",
    "hum": "23",
    "mr": "08:38",
    "ms": "18:18",
    "pcpn": "0.0",
    "pop": "0",
    "pres": "1029",
    "sr": "07:14",
    "ss": "16:50",
    "tmp_max": "3",
    "tmp_min": "-5",
    "uv_index": "4",
    "vis": "25",
    "wind_deg": "197",
    "wind_dir": "西南风",
    "wind_sc": "1-2",
    "wind_spd": "2"
  },
  {
    "cond_code_d": "104",
    "cond_code_n": "104",
    "cond_txt_d": "阴",
    "cond_txt_n": "阴",
    "date": "2019-11-29",
    "hum": "87",
    "mr": "09:39",
    "ms": "19:11",
    "pcpn": "0.0",
    "pop": "1",
    "pres": "1022",
    "sr": "07:15",
    "ss": "16:50",
    "tmp_max": "3",
    "tmp_min": "-4",
    "uv_index": "2",
    "vis": "16",
    "wind_deg": "184",
    "wind_dir": "南风",
    "wind_sc": "1-2",
    "wind_spd": "1"
  },
  {
    "cond_code_d": "101",
    "cond_code_n": "100",
    "cond_txt_d": "多云",
    "cond_txt_n": "晴",
    "date": "2019-11-30",
    "hum": "28",
    "mr": "10:33",
    "ms": "20:08",
    "pcpn": "0.0",
    "pop": "1",
    "pres": "1024",
    "sr": "07:16",
    "ss": "16:50",
    "tmp_max": "6",
    "tmp_min": "-5",
    "uv_index": "2",
    "vis": "25",
    "wind_deg": "307",
    "wind_dir": "西北风",
    "wind_sc": "3-4",
    "wind_spd": "22"
  },
  {
    "cond_code_d": "100",
    "cond_code_n": "100",
    "cond_txt_d": "晴",
    "cond_txt_n": "晴",
    "date": "2019-12-01",
    "hum": "30",
    "mr": "11:19",
    "ms": "21:07",
    "pcpn": "0.0",
    "pop": "0",
    "pres": "1025",
    "sr": "07:17",
    "ss": "16:49",
    "tmp_max": "5",
    "tmp_min": "-5",
    "uv_index": "6",
    "vis": "25",
    "wind_deg": "334",
    "wind_dir": "西北风",
    "wind_sc": "4-5",
    "wind_spd": "27"
  },
  {
    "cond_code_d": "100",
    "cond_code_n": "100",
    "cond_txt_d": "晴",
    "cond_txt_n": "晴",
    "date": "2019-12-02",
    "hum": "39",
    "mr": "11:58",
    "ms": "22:06",
    "pcpn": "0.0",
    "pop": "0",
    "pres": "1022",
    "sr": "07:18",
    "ss": "16:49",
    "tmp_max": "3",
    "tmp_min": "-6",
    "uv_index": "2",
    "vis": "25",
    "wind_deg": "198",
    "wind_dir": "西南风",
    "wind_sc": "3-4",
    "wind_spd": "17"
  },
  {
    "cond_code_d": "100",
    "cond_code_n": "100",
    "cond_txt_d": "晴",
    "cond_txt_n": "晴",
    "date": "2019-12-03",
    "hum": "38",
    "mr": "12:31",
    "ms": "23:06",
    "pcpn": "0.0",
    "pop": "0",
    "pres": "1026",
    "sr": "07:19",
    "ss": "16:49",
    "tmp_max": "6",
    "tmp_min": "-4",
    "uv_index": "2",
    "vis": "25",
    "wind_deg": "228",
    "wind_dir": "西南风",
    "wind_sc": "1-2",
    "wind_spd": "3"
  },
  {
    "cond_code_d": "100",
    "cond_code_n": "100",
    "cond_txt_d": "晴",
    "cond_txt_n": "晴",
    "date": "2019-12-04",
    "hum": "40",
    "mr": "13:00",
    "ms": "00:00",
    "pcpn": "0.0",
    "pop": "0",
    "pres": "1026",
    "sr": "07:20",
    "ss": "16:49",
    "tmp_max": "7",
    "tmp_min": "-5",
    "uv_index": "2",
    "vis": "25",
    "wind_deg": "233",
    "wind_dir": "西南风",
    "wind_sc": "1-2",
    "wind_spd": "1"
  }
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
