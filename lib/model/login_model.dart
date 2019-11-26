/// msg : "success"
/// code : 0
/// expire : 604800
/// token : "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIyIiwiaWF0IjoxNTc0NzMyOTA2LCJleHAiOjE1NzUzMzc3MDZ9.GYhRnr8_Jr-Au9qwJt1E9I1Wlm4meLMqlqY-CXXNo9-enacZyr5VEGmBlnZj-6fMlG3psz9ndzobo6uX3yLTPQ"

class LoginModel {
  String msg;
  int code;
  int expire;
  String token;

  static LoginModel fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    LoginModel loginModelBean = LoginModel();
    loginModelBean.msg = map['msg'];
    loginModelBean.code = map['code'];
    loginModelBean.expire = map['expire'];
    loginModelBean.token = map['token'];
    return loginModelBean;
  }

  Map toJson() => {
    "msg": msg,
    "code": code,
    "expire": expire,
    "token": token,
  };
}