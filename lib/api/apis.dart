import 'package:flutter_learn/pages/page/basic_page.dart';
import 'package:flutter_learn/utils/common.dart';

/**
 * 配置地址
 */
class Apis {
  static const String WEATHER_TYPE_NOW = 'now'; //	实况天气
  static const String WEATHER_TYPE_FORECAST = 'forecast'; //	3-10天预报
  static const String WEATHER_TYPE_LIFESTYLE = 'lifestyle'; //	生活指数
  static const String WEATHER_TYPE_HOURLY = 'hourly'; //	逐小时预报

//  static const String BASE_HOST = "https://free-api.heweather.net";

  static const String BASE_HOST='http://app.wisdomrui.com';

//  https://free-api.heweather.net/s6/weather/now?location=beijing&key=52dc04b1b08a43dc9f51325a5b5cb87b

  static String weatherTypeNow({location='beijing',weatherType=WEATHER_TYPE_NOW}) {
    switch (weatherType) {
      case WEATHER_TYPE.NOW:
        return BASE_HOST +
            '/s6/weather/now?location=' +
            location +
            '&key=' +
            Constants.APP_KEY;
      case WEATHER_TYPE.FORECAST:
        return BASE_HOST +
            '/s6/weather/forecast?location=' +
            location +
            '&key=' +
            Constants.APP_KEY;
      case WEATHER_TYPE.LIFESTYLE:
        return BASE_HOST +
            '/s6/weather/lifestyle?location=' +
            location +
            '&key=' +
            Constants.APP_KEY;
      case WEATHER_TYPE.HOURLY:
        return BASE_HOST +
            '/s6/weather/hourly?location=' +
            location +
            '&key=' +
            Constants.APP_KEY;
      default:
        return BASE_HOST +
            '/s6/weather/now?location=' +
            location +
            '&key=' +
            Constants.APP_KEY;
    }
  }
}

enum WEATHER_TYPE { NOW, FORECAST, LIFESTYLE, HOURLY }