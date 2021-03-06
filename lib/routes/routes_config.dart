import 'package:flutter_learn/pages/page/layout/layout_main.dart';
import '../pages/page/detail_page.dart';
import 'package:flutter/material.dart';
import '../pages/bottom_tabs.dart';
import 'package:flutter_learn/pages/page/route_page.dart';
import 'package:flutter_learn/pages/page/name_route_page.dart';
import 'package:flutter_learn/pages/page/login/login_page.dart';
import 'package:flutter_learn/pages/page/registe/register_frist_page.dart';
import 'package:flutter_learn/pages/page/registe/register_secound_page.dart';
import 'package:flutter_learn/pages/page/registe/register_third_page.dart';
import 'package:flutter_learn/pages/page/tab/default_tab_controller.dart';
import 'package:flutter_learn/pages/page/tab/tab_controller.dart';
import 'package:flutter_learn/pages/page/drawer_detail_page.dart';
import 'package:flutter_learn/pages/page/button_page.dart';
import 'package:flutter_learn/pages/page/floatbutton/float_button.dart';
import 'package:flutter_learn/pages/page/form/text_field.dart';
import 'package:flutter_learn/pages/page/form/check_box.dart';
import 'package:flutter_learn/pages/page/network/net_work_page.dart';
import 'package:flutter_learn/pages/page/form/radio_page.dart';
import 'package:flutter_learn/pages/page/form/student_info_page.dart';
import 'package:flutter_learn/pages/page/date/date_pick_page.dart';
import 'package:flutter_learn/pages/page/date/date_picker_detail_page.dart';
import 'package:flutter_learn/pages/page/json/json_page.dart';
import 'package:flutter_learn/pages/page/scrollview/scrollview_page.dart';
import 'package:flutter_learn/pages/page/scrollview/list_page.dart';
import 'package:flutter_learn/pages/page/scrollview/customscrollview_page.dart';
import 'package:flutter_learn/pages/page/flowlayout/flowlayout.dart';
import 'package:flutter_learn/pages/page/theme/custom_theme.dart';
import 'package:flutter_learn/pages/page/popup/popup_menu.dart';
import 'package:flutter_learn/pages/page/dialog/dialog_page.dart';
import 'package:flutter_learn/pages/page/cupertion/cupertino_page.dart';
import 'package:flutter_learn/pages/page/cupertion/cupertino_detail.dart';
import 'package:flutter_learn/pages/page/layout/stack_align_layout.dart';
import 'package:flutter_learn/pages/page/layout/stack_aligment_layout.dart';
import 'package:flutter_learn/pages/page/layout/stack_positioned_layout.dart';
import 'package:flutter_learn/pages/page/layout/index_stack_layout.dart';
import 'package:flutter_learn/pages/page/layout/overflowbox_layout.dart';
import 'package:flutter_learn/pages/page/layout/constrainedbox_layout.dart';
import 'package:flutter_learn/pages/page/layout/limitedbox_layout.dart';
import 'package:flutter_learn/pages/page/layout/aspectratio_layout.dart';
import 'package:flutter_learn/pages/page/layout/fractionallysizebox_layout.dart';
import 'package:flutter_learn/pages/page/layout/table_layout.dart';
import 'package:flutter_learn/pages/page/layout/synthesize_demo.dart';
import 'package:flutter_learn/pages/page/layout/transform_layout.dart';
import 'package:flutter_learn/pages/page/layout/offstage_layout.dart';
import 'package:flutter_learn/pages/page/event/gesturedetector_main.dart';
import 'package:flutter_learn/pages/page/decorate/decorate_main.dart';
import 'package:flutter_learn/pages/page/event/dismissible_detail.dart';
import 'package:flutter_learn/pages/page/decorate/opacity_detail.dart';
import 'package:flutter_learn/pages/page/decorate/decorate_detail.dart';
import 'package:flutter_learn/pages/page/canvasandpaint/canvas_and_paint.dart';
import 'package:flutter_learn/pages/page/animate/animate_main.dart';
import 'package:flutter_learn/pages/page/animate/animated_opacity_page.dart';
import 'package:flutter_learn/pages/page/animate/hero_page.dart';
import 'package:flutter_learn/pages/page/datapersistence/check_result_page.dart';

/**
 * 配置路由
 */
final routes = {
  "/": (context) => BottomBar(),
  "/details": (context, {arguments}) => DetailsPage(arguments: arguments),
  "/route_page": (conntext) => RouteDetailPage(),
  "/name_route_page": (context) => NameRoutePage(),
  "/register_frist_page": (context) => RegisterFristPage(),
  "/register_secound_page": (context) => RegisterSecoundPage(),
  "/register_third_page": (context) => RegisterThirdPage(),
  "/login": (context) => LoginPage(),
  "/default_tab_controller": (context) => DefaultTabControllerPage(),
  "/tab_bar_controller": (context) => TabBarControllerPage(),
  "/drawer_detail_page": (context, {arguments}) =>
      DrawerDetailPage(arguments: arguments),
  "/buttom_page": (context) => ButtomPage(),
  "/float_button": (context) => FloatButtonPage(),
  "/text_field": (context) => TextFiledPage(),
  "/check_box": (context) => CheckboxPage(),
  "/net_work_page": (context) => NetWorkPage(),
  "/radio_page": (context) => RadioPage(),
  "/student_info_page": (context) => StudentInfoPage(),
  "/date_pick_page": (context) => DatePickerPage(),
  "/date_picker_detail_page": (context, {arguments}) => DatePickerDetailPage(
        arguments: arguments,
      ),
  "/json_page": (context) => JsonPage(),
  "/scrollview": (context) => ScrollViewPage(),
  "/list_page": (context, {arguments}) => ListPage(arguments: arguments),
  "/customscrollview_page": (context) => CustomScrollViewPage(),
  "/flowlayout": (context) => FlowLayoutPage(),
  "/custom_theme": (context) => CustomThemePage(),
  "/popup_menu": (context) => PopupMenuPage(),
  '/dialog_page': (context) => DialogPage(),
  '/cupertino_page': (context) => CupertinoPage(),
  '/cupertino_detail': (context) => CupertinoDetailPage(),
  '/stack_align_layout': (context) => AlignLayout(),
  "/layout_main": (context) => LayoutMainPage(),
  "/stack_aligment_layout": (context) => StackAligmentLayout(),
  '/stack_positioned_layout': (context) => StackPositionedLayout(),
  '/index_stack_layout': (context) => IndexStackLayout(),
  '/overflowbox_layout': (context) => OverflowBoxPage(),
  '/constrainedbox_layout': (context) => ConstrainedBoxLayout(),
  '/limitedbox_layout': (context) => LimitedBoxLayout(),
  '/aspectratio_layout': (context) => AspectRatioLayout(),
  '/fractionallysizebox_layout': (context) => FractionallySizedBoxLayout(),
  '/table_layout': (context) => TableLayout(),
  '/synthesize_demo': (context) => SynthesizePage(),
  '/transform_layout': (context) => TransformLayout(),
  '/offstage_layout': (context) => OffstageLayout(),
  '/gesturedetector_main': (context) => GestureDetectorMainPage(),
  '/decorate_main': (context) => DecorateMainPage(),
  '/dismissible_detail': (context) => DismissibleDetail(),
  '/opacity_detail': (context) => OpacityDetailPage(),
  '/decorate_detail': (context) => DecoratedBoxDetailPage(),
  '/canvas_and_paint': (context) => CanvasAndPaintPage(),
  '/animate_main': (context) => AnimateMainPage(),
  '/animated_opacity_page': (context) => AnimatedOpacityPage(),
  '/hero_page': (context) => HeroPage(),
  '/check_result_page': (context) => CheckInResult(),
};

var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      return MaterialPageRoute(
              builder: (context) =>
                  pageContentBuilder(context, arguments: settings.arguments))
          as Route;
    } else {
      return MaterialPageRoute(
          builder: (context) => pageContentBuilder(context)) as Route;
    }
  }
};

/***
 *命名路由传值策略：
 *
 * 通过MaterialApp中属性->onGenerateRoute 通过RouteSettings来进行设置
 *
 * class RouteSettings {
    const RouteSettings({
    this.name,
    this.isInitialRoute = false,
    this.arguments,
    });
    1.路由集合统一管理
    2.通过RouteSettings来进行设置，具体设置方式见上代码
    重点：RouteSettings，arguments
 */
