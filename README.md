# flutter_learn

A new Flutter application.


+ 2019/9/24:
  ### Stack组件，Stack结合Align组件或者Positioned组件实现子元素的定位
  1.Stack组件通过自身属性alignment来进行子元素的定位
  2.Stack组件结合Align组件进行子元素多元化的定位，Align组件使用属性alignment中多样性可以完成对指定子元素的位置设定
     ```
    Align(
              alignment: Alignment.bottomRight,
              child: Icon(
                Icons.home,
                size: 50.0,
                color: Colors.white,
                )
  ```
  3.Stack组件结合Positioned组件进行子元素多元化的定位，Positioned组件left，top，right，bottom来控制子元素的显示位置
  ```
    Positioned(
              left: 100.0,
              bottom: 100.0,
              child: Icon(
                Icons.access_time,
                size: 40.0,
                color: Colors.white,
              ),
            )
  ```
  注意：
  在使用Align或者Positioned进行子元素定位是，应该将Stack组件放置在一个宽高都确定的父容器之内，进行定位操作！
    ### CardView组件和AspectRatio组件
    + CardView组件实现卡片效果
    ```
     Card(
          margin: EdgeInsets.all(5.0),
          child: Column(
            children: <Widget>[
              AspectRatio(
                  aspectRatio: 16.0 / 9.0, //AspectRatio控件控制子元素的宽高比
                  child: Image.network(value["imageurl"],fit: BoxFit.cover,)),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(value["imageurl"]),
                ),
                title: Text(value["title"]),
                subtitle: Text(value["author"]),
              )
            ],
          )
    ```
    + AspectRatio实现子元素的宽高比，参考对象为父容器的宽
    ```
     AspectRatio(
                  aspectRatio: 16.0 / 9.0, //AspectRatio控件控制子元素的宽高比
                  child: Image.network(value["imageurl"],fit: BoxFit.cover,))
    ```
+ 2019/10/10

    ###获取flutter开发中用到的三方依赖库地址：https://pub.dev/

    ### Flutter时间控件显示中文

    1.配置flutter_localizations依赖
    
    找到pubspec.yaml配置flutter_localizations
    ```
    dependencies:
      flutter:
        sdk: flutter
      flutter_localizations:
        sdk: flutter
     ```
        
    2.导入国际化的包 flutter_localizations
    ```
    import 'package:flutter_localizations/flutter_localizations.dart';
    ```
    
    3.设置国际化
    ```
        void main() {
          runApp(
            new MaterialApp(
              title: 'app',
              theme: new ThemeData(
                primaryColor: Colors.white,
              ),
              home: new MyLoginWidget(),
              localizationsDelegates: [
                //此处
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
              ],
              supportedLocales: [
                //此处
                const Locale('zh', 'CH'),
                const Locale('en', 'US'),
              ],
            ),
          );
        }
    ```

    4.要显示中文的控件设置：
    ```
        _showDatePickerAsync() async {
            var result = await showDatePicker(
              context: context,
              initialDate: this._nowDate,
              firstDate: DateTime(1980),
              lastDate: DateTime(2200),
              locale: Locale('zh'),
            );

            setState(() {
              if (result != null) this._nowDate = result;
            });
          }
    ```
#遗留问题？？？？？
+ listview/gridview单个条目的点击事件处理问题
+ gridTile的使用
+ 路由跳转返回传值的问题
+ text组件上的内容获取方式
