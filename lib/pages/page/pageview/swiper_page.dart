import 'package:flutter/material.dart';
import 'package:flutter_learn/res/data_resc.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:toast/toast.dart';

/**
 * 轮播图，三方库
 */
class SwiperPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SwiperState();
}

class _SwiperState extends State<SwiperPage> {
  var currentindex = 0;

  Widget _swiperPage(context) {
    return Swiper(
      itemCount: listData.length,
      itemBuilder: (context, index) {
        return Image.network(
          listData[index]['imageurl'],
          fit: BoxFit.cover,
        );
      },
      loop: true,
      autoplay: true,
      pagination: SwiperPagination(builder: SwiperPagination.dots),
      onIndexChanged: (index) {
        setState(() {
          currentindex = index;
        });
      },
      onTap: (index) {
        Toast.show(index.toString(), context,
            duration: Toast.LENGTH_SHORT, gravity: Toast.CENTER);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('swiper轮播图'),
      ),
      body: Column(
        children: <Widget>[
          Text(
            '$currentindex',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 35),
          ),
          Expanded(child: _swiperPage(context)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text('返回'),
      ),
    );
  }
}
