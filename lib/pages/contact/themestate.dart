import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/**
 * 既然是状态管理，首先来看状态。颜色毋庸置疑，还有一个是颜色的选中索引，用来体现颜色按钮的选中情况。
 * 继承自ChangeNotifier,将状态量作为属性，使用changeThemeData来方法改变状态量，并通知需要小伙伴们，让它们刷新。
 */
class ThemeState extends ChangeNotifier {
  ThemeData _themeData;

  ThemeState(this._themeData);

  void changeThemeData(ThemeData _themeData) {
    this._themeData = _themeData;

    notifyListeners();
  }

  ThemeData get themeDate => this._themeData;
}
