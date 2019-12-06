import 'package:flutter_learn/pages/page/basic_page.dart';
import 'package:flutter_learn/utils/common.dart';

/**
 * 配置地址
 */
class Apis {
  /****************************hefeng*******************************/
  static const String WEATHER_TYPE_NOW = 'now'; //	实况天气
  static const String WEATHER_TYPE_FORECAST = 'forecast'; //	3-10天预报
  static const String WEATHER_TYPE_LIFESTYLE = 'lifestyle'; //	生活指数
  static const String WEATHER_TYPE_HOURLY = 'hourly'; //	逐小时预报
  static const String WEATHER_APP_KEY =
      '52dc04b1b08a43dc9f51325a5b5cb87b'; //和风apikey
  static const String BASE_HOST_W = "https://free-api.heweather.net"; //和风天气
//  https://free-api.heweather.net/s6/weather/now?location=beijing&key=52dc04b1b08a43dc9f51325a5b5cb87b

  static String weatherTypeNow(
      {location = 'beijing', weatherType = WEATHER_TYPE_NOW}) {
    switch (weatherType) {
      case WEATHER_TYPE.NOW:
        return BASE_HOST_W +
            '/s6/weather/now?location=' +
            location +
            '&key=' +
            WEATHER_APP_KEY;
      case WEATHER_TYPE.FORECAST:
        return BASE_HOST_W +
            '/s6/weather/forecast?location=' +
            location +
            '&key=' +
            WEATHER_APP_KEY;
      case WEATHER_TYPE.LIFESTYLE:
        return BASE_HOST_W +
            '/s6/weather/lifestyle?location=' +
            location +
            '&key=' +
            WEATHER_APP_KEY;
      case WEATHER_TYPE.HOURLY:
        return BASE_HOST_W +
            '/s6/weather/hourly?location=' +
            location +
            '&key=' +
            WEATHER_APP_KEY;
      default:
        return BASE_HOST_W +
            '/s6/weather/now?location=' +
            location +
            '&key=' +
            WEATHER_APP_KEY;
    }
  }

  /****************************douban*******************************/
  static const String DOU_BAN_API_KEY =
      "0b2bdeda43b5688921839c8ecb20399b"; //豆瓣apikey
  static const String BASE_HOST_DOUBAN = "https://api.douban.com";

  static const String IN_THEATERS = BASE_HOST_DOUBAN + "/v2/movie/in_theaters";
  static const String COMING_SOON = BASE_HOST_DOUBAN + "/v2/movie/coming_soon";
  static const String NEW_MOVIES = BASE_HOST_DOUBAN + "/v2/movie/new_movies";
  static const String WEEKLY = BASE_HOST_DOUBAN + "/v2/movie/weekly";
  static const String TOP250 = BASE_HOST_DOUBAN + "/v2/movie/top250";
  static const String US_BOX = BASE_HOST_DOUBAN + "/v2/movie/us_box";

  /****************************wisdomrui*******************************/
  static const String BASE_HOST = 'http://app.wisdomrui.com/'; //
  //删除商品
  static const String DELETE_GOODS = BASE_HOST + "app/goods/delete";

  //查看商品详情信息
  static const String DETAIL_INFO_GOODS =
      BASE_HOST + "app/goods/info/{goodsId}";

  //查询商品列表
  static const String LIST_GOODS = BASE_HOST + "app/goods/list";

  //存储商品信息
  static const String SAVE_GOODS = BASE_HOST + "app/goods/save";
  static const String UPDATE_GOODS = BASE_HOST + "app/goods/update";
}

enum WEATHER_TYPE { NOW, FORECAST, LIFESTYLE, HOURLY }

///['正在热映', '即将上映', '新片榜', '口碑榜', 'Top250', '北美票房榜']
enum Filmtype { IN_THEATERS, COMING_SOON, NEW_MOVIES, WEEKLY, TOP250, US_BOX }
