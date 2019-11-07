import 'package:flutter/material.dart';

class HeroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero动画第一页'),
      ),
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: 'hero动画第一页',
            child: Image.network(
                'http://pic34.nipic.com/20131030/2455348_194508648000_2.jpg'),
          ),
        ),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return HeroSecondPage();
          }));
        },
      ),
    );
  }
}

class HeroSecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero动画第二页'),
      ),
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: 'hero动画第二页',
            child: Image.network(
                'http://photocdn.sohu.com/20120323/Img338614056.jpg'),
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
