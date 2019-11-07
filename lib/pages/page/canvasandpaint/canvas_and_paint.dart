import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * 画布canvas/画笔paint
 *
 * 画布canvas的方法：
 * drawLine():画直线
 * drawCircle()：画圆
 * drawOval():画椭圆
 * drawRect():画矩形
 * drawPoints():画点
 * drawArc():画圆弧
 *
 * 画笔paint属性方法：
 * color：画笔颜色
 * strokeCap:画笔笔触类型
 * isAntiAlias：是否开启抗锯齿
 * blendMode:颜色混合模式
 * style:绘画样式风格，默认填充
 * colorFilter：颜色渲染模式，一般是矩阵效果来改变的，在flutter中使用颜色混合模式来完成
 * maskFilter：模糊遮罩效果
 * filterQuality：颜色渲染模式的质量
 * storkeWidth：画笔粗细
 *
 *
 */
class CanvasAndPaintPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CanvasAndPaintState();
}

class _CanvasAndPaintState extends State<CanvasAndPaintPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('画布/画笔'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            lineDrawTitle(),
            lineDraw(),
            circleDrawTitle(),
            circleDraw(),
            ovalDrawTitle(),
            ovalDraw(),
          ],
        ),
      ),
    );
  }

  Widget lineDrawTitle() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Text(
            '画直线drawLine',
            style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w400,
                fontSize: 20,
                color: Colors.black38),
          ),
        ),
      ],
    );
  }

  Widget circleDrawTitle() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Text(
            '画圆drawCircle',
            style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w400,
                fontSize: 20,
                color: Colors.black38),
          ),
        ),
      ],
    );
  }

  Widget ovalDrawTitle() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Text(
            '画圆drawOval',
            style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w400,
                fontSize: 20,
                color: Colors.black38),
          ),
        ),
      ],
    );
  }

  Widget lineDraw() {
    return Container(
      width: double.infinity,
      color: Colors.grey,
      height: 50,
      child: CustomPaint(
        //操作画布，画笔绘画的组件
        painter: LinePainter(),
      ),
    );
  }

  Widget circleDraw() {
    return Container(
      width: double.infinity,
      height: 100,
      color: Colors.grey,
      child: CustomPaint(
        painter: CirclePainter(),
      ),
    );
  }

  Widget ovalDraw() {
    return Container(
      width: double.infinity,
      height: 100,
      color: Colors.grey,
      child: CustomPaint(
        painter: OvalPainter(),
      ),
    );
  }
}

/**
 * 使用画布进行自定义使用组件CustomPaint来实现，使用属性painter来实现画布，画笔设置，
 * painter:需要继承CustomPainter重写方法来完成canvas，Paint配置
 */
class LinePainter extends CustomPainter {
  Paint _paint = new Paint()
    ..color = Colors.red
    ..strokeCap = StrokeCap.square
    ..isAntiAlias = true
    ..strokeWidth = 3.0
    ..style = PaintingStyle.fill;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(Offset(20.0, 25.0), Offset(320.0, 25.0), _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class CirclePainter extends CustomPainter {
  Paint _paint = new Paint()
    ..color = Colors.green
    ..style = PaintingStyle.stroke
//    ..style = PaintingStyle.fill
    ..isAntiAlias = true
    ..strokeWidth = 2.0
    ..strokeCap = StrokeCap.square;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(Offset(40.0, 40.0), 30.0, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class OvalPainter extends CustomPainter {
  Paint _paint = new Paint()
    ..strokeCap = StrokeCap.square
    ..strokeWidth = 3.0
    ..isAntiAlias = true
    ..style = PaintingStyle.fill;

  @override
  void paint(Canvas canvas, Size size) {
    Rect rect = Rect.fromPoints(Offset(10, 80), Offset(150, 40));
    canvas.drawOval(rect, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
