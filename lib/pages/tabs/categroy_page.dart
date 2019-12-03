import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learn/api/apis_service.dart';
import 'package:flutter_learn/base/base_widget.dart';
import 'package:flutter_learn/goodmodel/add_good_page.dart';
import 'package:flutter_learn/model/query_goods_model.dart';
import 'package:flutter_learn/utils/deal_error_util.dart';

class CategroyPage extends BaseWidget {
  @override
  BaseWidgetState<BaseWidget> attachState() {
    // TODO: implement attachState
    return _CategroyState();
  }
}

class _CategroyState extends BaseWidgetState<CategroyPage> {
  List<ListBean> list;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setAppBarVisible(false); //隐藏appBar
    setFloatActionButtonVisible(true);
    _getGoods();
  }

  _getGoods() {
    showLoading().then((value) {
      apiService.queryGoods(context, (QueryGoodsModel queryGoodsModel) {
        List<ListBean> list_res = queryGoodsModel.page.list;
        //刷新页面数据
        setState(() {
          if (list_res.length == 0 || list_res == null) {
            showEmpty();
          } else {
            this.list = list_res;
            showContent();
          }
        });
      }, (error) {
        //异常处理，针对网络的 非网络的
        if (error is DioError) {
          dealError(error, context);
        } else {
          print(error); //打印非网络请求异常
        }
        showError();
      });
    });
  }

  //列表item
  Widget _item_listview(String name, String intro, double price, Function onTap,
      Function onLongPress) {
    return Card(
      child: ListTile(
        title: Text(name),
        subtitle: Text(intro),
        trailing: Text(price.toString() + "元"),
        onTap: onTap,
        onLongPress: onLongPress,
      ),
    );
  }

  _deleteGood(ListBean bean) {
    showLoading().then((value) {
      apiService.deleteGood(context, bean.goodsId, (result) {
        _getGoods();
      }, (error) {
        //异常处理，针对网络的 非网络的
        if (error is DioError) {
          dealError(error, context);
        } else {
          print(error); //打印非网络请求异常
        }
        showError();
      });
    });
  }

  /**
   * 删除提示话框
   */
  void _showAlertDialogAsync(context, bean) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Container(
              alignment: Alignment.center,
              width: double.infinity,
              child: Text('提示信息'),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[Text('是否删除'), Text('一旦删除数据不可恢复！')],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                  _deleteGood(bean);
                },
                child: Text('确定'),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pop(context, '取消');
                },
                child: Text('取消'),
              ),
            ],
          );
        });
  }

  @override
  AppBar attachAppBar() {
    return AppBar(
      title: Text(""),
    );
  }

  @override
  Widget attachContentWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: ListView.builder(
          itemCount: list == null ? 0 : list.length,
          itemBuilder: (context, index) {
            ListBean bean = list[index];
            return _item_listview(bean.name, bean.intro, bean.price, () {
              toast(context, bean.toJson().toString());
            }, () {
              _showAlertDialogAsync(context, bean);
            });
          }),
    );
  }

  @override
  void onClickErrorWidget() {
    _getGoods();
  }

  @override
  Widget attachFloatingActionButtonWidget() {
    return FloatingActionButton(
      onPressed: () {
        var result =
            Navigator.push(context, MaterialPageRoute(builder: (context) {
          return AddGoodPage();
        }));
        result.then((value) {
          print("value:$value");
          if (value != null) {
            _getGoods();
          }
        });
      },
      child: Icon(Icons.add),
    );
  }
}
