import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learn/api/apis_service.dart';
import 'package:flutter_learn/base/base_widget.dart';
import 'package:flutter_learn/model/goods_model.dart';
import 'package:flutter_learn/model/query_goods_model.dart';
import 'package:flutter_learn/utils/deal_error_util.dart';

class GoodDetailPage extends BaseWidget {
  ListBean bean;

  GoodDetailPage(this.bean);

  @override
  BaseWidgetState<BaseWidget> attachState() => _GoodDetailState(this.bean);
}

class _GoodDetailState extends BaseWidgetState<GoodDetailPage> {
  ListBean bean;
  bool isEdit = false;
  ///申明控制器
  TextEditingController controller_goodsId,
      controller_name,
      controller_intro,
      controller_price,
      controller_num;

  _GoodDetailState(this.bean);

  ///组件输入框
  Widget _inputItem(String title, TextEditingController controller) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: TextFormField(
//                    textAlignVertical: TextAlignVertical.center,
                    enabled: isEdit,
                    controller: controller,
                    decoration: InputDecoration(
                      icon: Text(title),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(),
        ],
      ),
    );
  }

  ///添加商品
  _updateGoods() {
    if (checkInput()) {
      ///拼接请求参数
      GoodsModel goodsModel = GoodsModel();
      goodsModel
        ..name = controller_name?.text
        ..intro = controller_intro?.text.isEmpty
            ? ""
            : controller_intro.text.toString()
        ..goodsId = int.parse(controller_goodsId?.text)
        ..price = controller_price?.text.isEmpty
            ? 0.00
            : double.parse(controller_price.text)
        ..num =
            controller_num?.text.isEmpty ? 0 : int.parse(controller_num.text);

      //网络请求，添加商品
      showLoading().then((value) {
        apiService.updateGoods(context, goodsModel, (response) {
          if (response.data['code'] == 0) {
            toast(context, "修改成功");
            Navigator.pop(context, {'result': '0'});
          } else {
            toast(context, "修改失败，请重新再试......");
          }
        }, (e) {
          if (e is DioError) {
            dealError(e, context);
          } else {
            print(e); //打印非网络请求异常
          }
          showError();
        });
      });
    }
  }

  ///校验输入信息
  checkInput() {
    if (controller_name.text.isEmpty) {
      toast(context, "商品名称不能为空");
      return false;
    }

    if (controller_goodsId.text.isEmpty) {
      toast(context, "商品编号不能为空");
      return false;
    }
    return true;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    ///初始化数据，--》 控制器
    if (bean != null) {
      controller_goodsId = TextEditingController(
          text: bean.goodsId == 0 ? "0" : bean.goodsId.toString());
      controller_name =
          TextEditingController(text: bean.name.isEmpty ? "" : bean.name);
      controller_intro =
          TextEditingController(text: bean.intro.isEmpty ? "" : bean.intro);
      controller_price = TextEditingController(
          text: bean.price == 0 ? "0.0" : bean.price.toString());
      controller_num = TextEditingController(
          text: bean.num == 0 ? '0' : bean.num.toString());
    } else {
      controller_goodsId = TextEditingController();
      controller_name = TextEditingController();
      controller_intro = TextEditingController();
      controller_price = TextEditingController();
      controller_num = TextEditingController();
    }

    ///显示内容主体布局
    showContent();

    ///展示悬浮按钮
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
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _inputItem("商品编号:", controller_goodsId),
            _inputItem("商品名称:", controller_name),
            _inputItem("商品信息:", controller_intro),
            _inputItem("商品单价:", controller_price),
            _inputItem("商品数量:", controller_num),
            Offstage(
              offstage: !isEdit,
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: RaisedButton(
                    onPressed: _updateGoods,
                    child: Text('修改'),
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget attachFloatingActionButtonWidget() {
    // TODO: implement attachFloatingActionButtonWidget
    return FloatingActionButton(
      onPressed: () {
        setState(() {
          this.isEdit = !isEdit;
        });
      },
      child: Icon(Icons.edit),
    );
  }

  @override
  void onClickErrorWidget() {
    // TODO: implement onClickErrorWidget
  }

  @override
  Drawer attachBaseDrawer() {
    // TODO: implement attachBaseDrawer
    return null;
  }
}
