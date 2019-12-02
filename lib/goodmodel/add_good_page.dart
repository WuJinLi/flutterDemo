import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_learn/base/base_widget.dart';

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

  Widget _inputItem(String title, TextEditingController controller) {
    return Container(
      width: double.infinity,
      height: 40,
      child: Row(
        children: <Widget>[
          Text(title),
          SizedBox(width: 10,),
          Expanded(
              child: TextFormField(
                textAlignVertical: TextAlignVertical.center,
            controller: controller,
            decoration: InputDecoration(
//              border: InputBorder.none,///取消输入框下的线
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.blue,width: 3),
              ),
            ),
          ))
        ],
      ),
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
              _inputItem("商品编号", controller_goodsId),
            ],
          ),
        ));
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
