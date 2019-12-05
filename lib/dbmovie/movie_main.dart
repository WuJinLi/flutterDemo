import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_learn/base/base_widget.dart';

class MovieMainPage extends BaseWidget {
  @override
  BaseWidgetState<BaseWidget> attachState() => _MovieMainState();
}

class _MovieMainState extends BaseWidgetState
    with SingleTickerProviderStateMixin {
  var tabs_title = ['正在热映', '即将上映', '新片榜', '口碑榜', 'Top250', '北美票房榜'];
  TabController _tabController;
  var contentWidget=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: tabs_title.length, vsync: this);

    _tabController.addListener(() {});
  }

  @override
  AppBar attachAppBar() {
    // TODO: implement attachAppBar
    return AppBar(
      title: TabBar(
        tabs: _initTabsWidgets(),
        controller: this._tabController,
        isScrollable: true,
        indicatorSize: TabBarIndicatorSize.label,
      ),
    );
  }

  @override
  Widget attachContentWidget(BuildContext context) {
    // TODO: implement attachContentWidget
    return TabBarView(controller: this._tabController,children: <Widget>[],);
  }

  @override
  Widget attachFloatingActionButtonWidget() {
    // TODO: implement attachFloatingActionButtonWidget
    return null;
  }

  @override
  void onClickErrorWidget() {
    // TODO: implement onClickErrorWidget
  }

  _initTabsWidgets() {
    List<Tab> tabs = List();
    tabs_title?.forEach((value) {
      tabs?.add(Tab(
        text: value,
      ));
    });
    return tabs;
  }
}
