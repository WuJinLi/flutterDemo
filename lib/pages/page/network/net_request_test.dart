import 'package:dio/dio.dart';
import 'package:flutter/src/material/app_bar.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_learn/api/apis_service.dart';
import 'package:flutter_learn/base/base_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learn/model/login_model.dart';
import 'package:flutter_learn/utils/deal_error_util.dart';
import 'package:toast/toast.dart';

class NetWorkRequestPage extends BaseWidget {
  @override
  BaseWidgetState<BaseWidget> attachState() => _NetWorkRequestState();
}

class _NetWorkRequestState extends BaseWidgetState<NetWorkRequestPage> {
  TextEditingController _controller_username = new TextEditingController();
  TextEditingController _controller_password = new TextEditingController();
  String _result = '';

  @override
  void initState() {
    super.initState();
    showContent();
  }

  @override
  AppBar attachAppBar() {
    return AppBar(
      title: Text('测试请求'),
    );
  }

  Widget _inputItem(controller, labelText, hintText) {
    return Container(
      width:double.infinity,
      alignment: Alignment.centerLeft,
      height: 70,
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
//                  labelText: labelText,
                  hintText: hintText,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  )),
            ),
          ),
        ],
      ),
    );
  }

  Widget _loginButton() {
    return Row(
      children: <Widget>[
        Expanded(
            child: FlatButton(
                onPressed: () {
                  Map<String, String> data = new Map();
                  data['mobile'] = _controller_username.text.toString();
                  data['password'] = _controller_password.text.toString();
                  apiService.login((LoginModel loginModel) {
                    if (loginModel != null) {
                      if (loginModel.code == 0) {
                        toast(context, "登陆成功");
                        setState(() {
                          this._result =
                              "msg:${loginModel.msg};code:${loginModel.code}";
                        });
                      } else {
                        toast(context, "登陆失败");
                        setState(() {
                          this._result =
                              "msg:${loginModel.msg};code:${loginModel.code}";
                        });
                      }
                    }
                  }, (DioError dioError) {
                    dealError(dioError, context);
                    showError();
                  }, data);
                },
                child: Text('登录')))
      ],
    );
  }

  Widget _showResult() {
    return Center(
      child: Text(this._result),
    );
  }

  @override
  Widget attachContentWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          _inputItem(_controller_username, '登录名', '请输入登录名称'),
          SizedBox(height: 10.0,),
          _inputItem(_controller_password, '密码', '请输入密码'),
          _loginButton(),
          _showResult(),
        ],
      ),
    );
  }

  @override
  void onClickErrorWidget() {
    showContent();
  }
}
