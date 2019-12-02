/// goodsId : 0
/// intro : "string"
/// name : "string"
/// num : 0
/// price : 0

class GoodsModel {
  int goodsId;
  String intro;
  String name;
  int num;
  int price;

  static GoodsModel fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    GoodsModel goodsModelBean = GoodsModel();
    goodsModelBean.goodsId = map['goodsId'];
    goodsModelBean.intro = map['intro'];
    goodsModelBean.name = map['name'];
    goodsModelBean.num = map['num'];
    goodsModelBean.price = map['price'];
    return goodsModelBean;
  }

  Map toJson() => {
    "goodsId": goodsId,
    "intro": intro,
    "name": name,
    "num": num,
    "price": price,
  };
}