import 'package:flutter/material.dart';
import 'package:flutter_learn/pages/page/animate/tween_animation_page.dart';

/**
 * 动画：
 * 本案例包含：AnimatedOpacity渐变效果动画和Hero实现页面切换
 * AnimatedOpacity 组件：opacity：组件透明度，child：
 * Hero 组件：
 */
class AnimateMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('动画'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/animated_opacity_page");
                    },
                    child: Text('AnimatedOpacity渐变效果动画'),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/hero_page');
                    },
                    child: Text('Hero实现页面切换'),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return TweenAnimationPage();
                        }),
                      );
                    },
                    child: Text('补间动画'),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
