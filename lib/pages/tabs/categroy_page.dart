import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learn/api/apis_service.dart';
import 'package:flutter_learn/base/base_widget.dart';
import 'package:flutter_learn/goodmodel/add_good_page.dart';
import 'package:flutter_learn/goodmodel/good_detail.dart';
import 'package:flutter_learn/model/query_goods_model.dart';
import 'package:flutter_learn/ui/loadmore_view.dart';
import 'package:flutter_learn/utils/deal_error_util.dart';

class CategroyPage extends BaseWidget {
  @override
  BaseWidgetState<BaseWidget> attachState() {
    // TODO: implement attachState
    return _CategroyState();
  }
}

class _CategroyState extends BaseWidgetState<CategroyPage> {
  List<ListBean> items = List();
  ScrollController _controller = new ScrollController();
  int currPage = 1;
  int totalPage = 1;
  int pageSize = 10;
  int totalCount = 0;
  String bottomText = "....加载更多....";
  bool isRefresh = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    init();
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
      child: RefreshIndicator(
          child: ListView.builder(
              controller: _controller,
              itemCount: items == null ? 0 : items.length + 1,
              itemBuilder: buildItem),
          onRefresh: _onRefresh),
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
//          print("value:$value");
          if (value != null) {
            _getGoods();
          }
        });
      },
      child: Icon(Icons.add),
    );
  }

  @override
  void dispose() {
    ///widget销毁时释放_controller
    _controller?.dispose();
    super.dispose();
  }

  Future<void> _onRefresh() async {
    this.currPage = 1;
    isRefresh = true;
    items.clear();
    _getGoods();
  }

  ///构建listview中itembuild方法
  Widget buildItem(BuildContext context, int index) {
    if (index == items.length) {
      return LoadMoreView(this.bottomText);
    } else {
      ListBean bean = items[index];
      return _item_listview(bean.name, bean.intro, bean.price, () {
//              toast(context, bean.toJson().toString());
        var result = Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return GoodDetailPage(bean);
          }),
        );
        result.then((value) {
          if (value != null) {
            _getGoods();
          }
        });
      }, () {
        _showAlertDialogAsync(context, bean);
      });
    }
  }

  ///初始化数据
  init() {
    setAppBarVisible(false); //隐藏appBar
    setFloatActionButtonVisible(true); //显示悬浮按钮
    _getGoods();
    _controller.addListener(() {
      if (_controller.position.pixels == _controller.position.maxScrollExtent) {
        //如果不是最后一页数据，则生成新的数据添加到list里面
        if (currPage < totalPage) {
          setState(() {
            bottomText = '....加载更多....';
            currPage++;
          });
          _getGoods();
        } else {
          setState(() {
            bottomText = '----我是有底线的----';
          });
        }
      }
    });
  }

  //获取商品列表
  _getGoods() {
    if (isRefresh) {
      isRefresh = false;
      _requestNet();
    } else {
      showLoading().then((value) {
        _requestNet();
      });
    }
  }

  _requestNet() {
    apiService.queryGoods(context, currPage, (QueryGoodsModel queryGoodsModel) {
      List<ListBean> list_res = queryGoodsModel.page.list;
      //刷新页面数据
      setState(() {
        if (list_res.length == 0 || list_res == null) {
          showEmpty();
        } else {
          this.items.addAll(list_res);
          showContent();
        }

        //更新分页数据
        this.totalPage = queryGoodsModel?.page.totalPage;
        this.pageSize = queryGoodsModel?.page.pageSize;
        this.currPage = queryGoodsModel?.page.currPage;
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

  ///删除商品信息
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

  ///删除提示话框
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
  Drawer attachBaseDrawer() {
    // TODO: implement attachBaseDrawer
    return null;
  }
}
