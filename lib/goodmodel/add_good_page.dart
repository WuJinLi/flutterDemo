import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_learn/api/apis_service.dart';
import 'package:flutter_learn/base/base_widget.dart';
import 'package:flutter_learn/model/goods_model.dart';
import 'package:flutter_learn/utils/deal_error_util.dart';

class AddGoodPage extends BaseWidget {
  @override
  BaseWidgetState<BaseWidget> attachState() => _AddGoodState();
}

class _AddGoodState extends BaseWidgetState<AddGoodPage> {
  TextEditingController controller_goodsId = TextEditingController();
  TextEditingController controller_name = TextEditingController();
  TextEditingController controller_intro = TextEditingController();
  TextEditingController controller_price = TextEditingController();
  TextEditingController controller_num = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    showContent();
  }

  @override
  AppBar attachAppBar() {
    // TODO: implement attachAppBar
    return AppBar(
      title: Text("添加商品"),
    );
  }

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
  saveGoods() {
    if (checkInput()) {
      ///拼接请求参数
      GoodsModel goodsModel = GoodsModel();
      goodsModel
        ..name = controller_name?.text
        ..intro = controller_intro?.text.isEmpty
            ? ""
            : controller_intro.text.toString()
        ..goodsId = int.parse(controller_goodsId?.text)
        ..price = controller_price.text?.isEmpty
            ? 0.00
            : double.parse(controller_price.text)
        ..num =
            controller_num?.text.isEmpty ? 0 : int.parse(controller_num.text);

      //网络请求，添加商品
      showLoading().then((value) {
        apiService.saveGoods(context, goodsModel, (response) {
          if (response.data['code'] == 0) {
            toast(context, "添加成功");
            Navigator.pop(context, {'result': '0'});
          } else {
            toast(context, "添加失败，请重新再试......");
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
    if (controller_name?.text.isEmpty) {
      toast(context, "商品名称不能为空");
      return false;
    }

    if (controller_goodsId?.text.isEmpty) {
      toast(context, "商品编号不能为空");
      return false;
    }
    return true;
  }

  ///主体页面展示信息
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
            Row(
              children: <Widget>[
                Expanded(
                    child: RaisedButton(
                  onPressed: saveGoods,
                  child: Text('添加'),
                ))
              ],
            )
          ],
        ),
      ),
    );
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
