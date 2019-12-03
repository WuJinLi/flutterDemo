import 'package:flutter/material.dart';
import 'package:flutter_learn/base/base_widget.dart';

class GoodDetailPage extends BaseWidget {
  @override
  BaseWidgetState<BaseWidget> attachState() {
    // TODO: implement attachState
    return null;
  }
}

class _GoodDetailState extends BaseWidgetState<GoodDetailPage> {
  bool isEdit = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    showContent();
    setFloatActionButtonVisible(true);
  }

  @override
  AppBar attachAppBar() {
    // TODO: implement attachAppBar
    return AppBar(
      title: Text(isEdit ? "修改产品信息" : "产品详情信息"),
    );
  }

  @override
  Widget attachContentWidget(BuildContext context) {
    // TODO: implement attachContentWidget
    return Padding(padding: EdgeInsets.all(10.0),child: SingleChildScrollView(child: Column(),),);
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
}
