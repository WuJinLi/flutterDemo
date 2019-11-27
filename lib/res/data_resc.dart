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
  {"title": "ListView", "routeName": "", "target": PageViewMainPage()},
  {"title": "ListView", "routeName": "", "target": EventMainPage()},
  {"title": "ListView", "routeName": "", "target": DataPersistenceMainPage()},
];
