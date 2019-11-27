import 'dart:io';

import 'package:device_info/device_info.dart';
import 'package:package_info/package_info.dart';

/// Android IOS 平台工具类
class PlatformUtil {
  //获取平台信息
  static String getPlatform() => Platform.operatingSystem;

  //操作系统是否为android
  static bool isAndroid() => Platform.isAndroid;

  //操作系统是否为ios
  static bool isIOS() => Platform.isIOS;

  ///获取flutter版本信息
  static String getFlutterVersion() => Platform.version;

  //获取应用信息
  static Future<PackageInfo> getAppPackageInfo() {
    return PackageInfo.fromPlatform();
  }

  //获取应用的版本号
  static Future<String> getAppVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.version;
  }

  //获取硬件信息
  static Future getDeviceInfo() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    if (isAndroid()) {
      return await deviceInfo.androidInfo;
    } else if (isIOS()) {
      return await deviceInfo.iosInfo;
    } else {
      return null;
    }
  }
}
