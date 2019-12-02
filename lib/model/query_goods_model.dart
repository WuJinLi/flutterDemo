/// msg : "success"
/// code : 0
/// page : {"totalCount":1,"pageSize":10,"totalPage":1,"currPage":1,"list":[{"goodsId":1,"name":"java编程思想","intro":"java书籍经典著作，工具类书籍","price":199.99,"num":1}]}

class QueryGoodsModel {
  String msg;
  int code;
  PageBean page;

  static QueryGoodsModel fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    QueryGoodsModel queryGoodsModelBean = QueryGoodsModel();
    queryGoodsModelBean.msg = map['msg'];
    queryGoodsModelBean.code = map['code'];
    queryGoodsModelBean.page = PageBean.fromMap(map['page']);
    return queryGoodsModelBean;
  }

  Map toJson() => {
    "msg": msg,
    "code": code,
    "page": page,
  };
}

/// totalCount : 1
/// pageSize : 10
/// totalPage : 1
/// currPage : 1
/// list : [{"goodsId":1,"name":"java编程思想","intro":"java书籍经典著作，工具类书籍","price":199.99,"num":1}]

class PageBean {
  int totalCount;
  int pageSize;
  int totalPage;
  int currPage;
  List<ListBean> list;

  static PageBean fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    PageBean pageBean = PageBean();
    pageBean.totalCount = map['totalCount'];
    pageBean.pageSize = map['pageSize'];
    pageBean.totalPage = map['totalPage'];
    pageBean.currPage = map['currPage'];
    pageBean.list = List()..addAll(
      (map['list'] as List ?? []).map((o) => ListBean.fromMap(o))
    );
    return pageBean;
  }

  Map toJson() => {
    "totalCount": totalCount,
    "pageSize": pageSize,
    "totalPage": totalPage,
    "currPage": currPage,
    "list": list,
  };
}

/// goodsId : 1
/// name : "java编程思想"
/// intro : "java书籍经典著作，工具类书籍"
/// price : 199.99
/// num : 1

class ListBean {
  int goodsId;
  String name;
  String intro;
  double price;
  int num;

  static ListBean fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    ListBean listBean = ListBean();
    listBean.goodsId = map['goodsId'];
    listBean.name = map['name'];
    listBean.intro = map['intro'];
    listBean.price = map['price'];
    listBean.num = map['num'];
    return listBean;
  }

  Map toJson() => {
    "goodsId": goodsId,
    "name": name,
    "intro": intro,
    "price": price,
    "num": num,
  };
}