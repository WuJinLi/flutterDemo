import 'package:flutter/material.dart';

/**
 * Tween补间动画
 *
 * animation的创建依赖于controller，且在创建时可以添加监听器addListener，addStatusListener
 *
 * animation:是动画的载体；
 * AnimationController：是控制动画展示的控制器，动画的开始，完成等等。。。。
 */
class TweenAnimationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TweenAnimationState();
}

class _TweenAnimationState extends State<TweenAnimationPage>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    //1。初始化动画控制器
    controller = AnimationController(
      vsync: this,
      //避免锁屏占用太多资源，此属性参数为必传，且父类集成了SingleTickerProviderStateMixin，则可以用this代替
      duration: Duration(milliseconds: 2000), //动画运行的时间
    );

    //2。创建动画，且设置动画的属性（动画类型），初始化，设置监听器
    animation = Tween(begin: 0.0, end: 300.0).animate(controller)
      ..addListener(() {
        print(animation.value);
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
      });

    //3。启动动画
    controller.forward();
  }

  @override
  void dispose() {
    //4。销毁动画
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tween补间动画'),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        height: animation.value,
        width: animation.value,
        child: FlutterLogo(),
      ),
    );
  }
}
