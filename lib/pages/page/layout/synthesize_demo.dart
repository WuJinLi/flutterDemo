import 'package:flutter/material.dart';

class SynthesizePage extends StatelessWidget {
  Widget addressContrainer = Container(
    padding: EdgeInsets.all(32),
    child: Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text(
                  "风景区地址",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                '湖北省十堰市丹江口市',
                style: TextStyle(color: Colors.grey[500]),
              ),
            ],
          ),
        ),
        Icon(
          Icons.stars,
          color: Colors.red[500],
        ),
        Text('66'),
      ],
    ),
  );

  static Column buildButtonColumn(IconData icon, String lable) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(
          icon,
          color: Colors.lightGreen[600],
        ),
        Container(
          margin: EdgeInsets.only(top: 8.0),
          child: Text(
            lable,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.lightGreen[600]),
          ),
        ),
      ],
    );
  }

  Widget buttonsContainer = Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        buildButtonColumn(Icons.call, '电话'),
        buildButtonColumn(Icons.near_me, '导航'),
        buildButtonColumn(Icons.share, '分享'),
      ],
    ),
  );

  Widget textContainer = Container(
    padding: EdgeInsets.all(32),
    child: Text(
      '''
    武当山又名太和山，座落在湖北省丹江口市境内。是中国著名的道教胜地，是首批国家级重点风景名胜区，又是世界文化遗产。
    武当山，绵亘800里，其自然风光 ，以雄为主，兼有险、奇、　幽、秀等多重特色。自元代以来， 就有72峰、36岩、24涧、11洞、3潭、9泉、10石、9井、10池、9台等。主峰天柱峰海拔1612米，犹如金铸玉琢的宝柱雄峙苍穹，屹立于群峰之巅。环绕其周围的群山，从四面八方向主峰倾斜，形成独特的“七十二峰朝大顶，二十四涧水长流”的天然奇观。被誉为“自古无双胜境，天下第一仙山”。
    山石主要为云母片岩，由于大自然的侵蚀，奇峰怪立，谷涧纵横。主峰天柱峰，拔地崛起，被誉为“一柱擎天”。周围七十二峰如覆钟峙鼎，离离攒立。其中，金童峰、玉女峰亭亭玉立，倩姿婀娜；香炉峰、腊烛峰云雾缭绕，香烟弥漫；五老峰，老态龙钟；展旗峰，奔走欲动……形成一幅“七十二峰朝大顶，二十四涧水长流”的天然画图。此外还有三十六岩，十一洞，三潭，九泉，十池，九井，十石，九台，以及“天柱晓晴’、“金殿倒影”、“乌鸦接食”、“香麝跃涧”等奇观。以致明代地理学家徐霞客说：“余髫年蓄五岳志，而玄岳(武当)出五岳上，慕尤切”，仰慕之情溢于言表。 武当山历史悠久。
    据《太和山志》记载，秦汉时即设置有武当县和武当郡；据《后汉书·郡国志》记载，当时武当山已有较大的集镇，较多的人口。道家归隐武当，似乎时代更早一些，《舆地纪胜》记载的周之尹喜大夫就曾在武当筑石室修炼；汉之阴长生、晋之谢允等著名道家也都在此修炼过．这些人均被称为道家，与后世的道教并无直接关系。 道教是我国古老的宗教，其信仰内容，具有浓厚的汉民族历史 [1]
    ''',
      softWrap: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('武当山风景'),
      ),
      body: ListView(
        children: <Widget>[
          Image.network(
            "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1572870886921&di=59ebe3b0f8db06c8b151b81189a7325e&imgtype=0&src=http%3A%2F%2Fy3.ifengimg.com%2Fb5c30815bc40a390%2F2014%2F0829%2Frdn_5400321f8326d.jpg",
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          addressContrainer,
          buttonsContainer,
          textContainer
        ],
      ),
    );
  }
}
