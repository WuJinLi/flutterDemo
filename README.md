# flutter_learn

A new Flutter application.

  ### [解决app启动白屏](https://blog.csdn.net/xia236326/article/details/90374447)
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

    ### 获取flutter开发中用到的三方依赖库地址：https://pub.dev/

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
    ### 获取系统时间，且将时间进行格式化（格式转换，时间戳）
       + 获取当前时间类DateTime
       + 获取当前时间：DateTime.now()
       + 转化为时间戳：DateTime.now().millisecondsSinceEpoch
       + 将时间戳转化为时间：DateTime.fromMillisecondsSinceEpoch(millisecondsSinceEpoch) millisecondsSinceEpoch->时间戳（int）
       
         使用三方日期格式化依赖库：
          1.dependencies: date_format: ^1.0.6
          2.import 'package:date_format/date_format.dart';
          3.formatDate(DateTime date, formats)
          
          
         ```  
             void _getNowTimeStamp() {
                    setState(() {
                      this.now_time = DateTime.now();//获取当前时间
                      print(now_time);
                      this.now_time_stamp = (this.now_time as DateTime).millisecondsSinceEpoch;//转化为时间戳
                
                      print(now_time_stamp);
                    });
                  }
                  
                  
             formatDate(this.now_time, [yyyy,-',mm,'-',dd])//将系统时间进行格式化
         ```
    
    ### 实现系统时间选择器功能
    
    选择日期的组件
    
     ```
         /**
            * 获取日期的方法
            */
           _showDatePickerNormal() {
             showDatePicker(
               context: context,
               initialDate: this._nowDate,
               firstDate: DateTime(1980),
               lastDate: DateTime(2200),
               locale: Locale('zh'),
             ).then((result) {
               setState(() {
                 if (result != null) this._nowDate = result;
               });
             });
           }
         
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
     选择时间的组件
     
     ```
          _showTimePickerNormal() {
             showTimePicker(context: context, initialTime: this._nowTime).then((result) {
               setState(() {
                 if (result != null) this._nowTime = result;
               });
             });
           }
         
           _showTimePickerAsync() async {
             var result = await showTimePicker(
               context: context,
               initialTime: this._nowTime,
             );
         
             setState(() {
               if (result != null) this._nowTime = result;
             });
           }
     ```
     
     注意：由于showDatePicker返回参数值为Future，所以在使用时涉及到异步调用，可使用两种方法来实现：
     
        1.then（（value）{}）关键子来完成
        2.使用async await实现
        
        
        
 ### 一键生成集成 json_serializable库样板代码代码网址https://caijinglong.github.io/json2dart/index_ch.html
 
   针对服务器返回数据解析的方式：
     + 数据类型简单的：
     
     ```
     //解析成map
     final map = jsonDecode(string)
     转换为json序列化
     final string = jsonEncode(map)
     ```
     + 针对复杂的数据类型则系统提供的数据解析类型就不能完全的适用到实际业务中，则我们使用三方框架来实现数据的解析和序列化：
   1.添加依赖：
     
     ```
     dev_dependencies:
       #json_serializable版本号
       json_serializable: ^3.2.3
     dependencies:
       json_annotation: ^3.0.0
       
     ```
   2.针对对应的json数据类型来创建对应数据实体类，例如创建book，json数据样式如下：
   
   ```
   {
     "name":"book1",
     "author":{"name":"Jack"},
     "publishDate":"2018-10-10",
     "publisher":"xxx company"
   }
   ```
  在创建实体类的方式上我们可以使用工具json_serializable库样板代码代码网址https://caijinglong.github.io/json2dart/index_ch.html 一键生成相关的代 码；

  在生成代码粘贴到项目中或出现报错的情况 不要着急我们可以在项目根目录执行命令：
    ```
    flutter packages pub run build_runner build
    ```
    这里会有一个自动生成.g.dart的文件，其中就有所有的解析相关的代码,需要持久化的自动生成就敲击下面的代码，这样会自动监视你lib目录下，然后当你的文件发生改变时会自动重新build一次，生成对应的文件
    ```
    flutter packages pub run build_runner watch
    ```
    这样就完成数据实体类的创建和序列化等操作
    
   3.进行数据的解析和数据转换的操作：
   
    + json=>对象：
    
        ```
            var book = Book.fromJson(bookData);
            print("name:${book.name},publishDate:${book.publishDate}");
        ```
    + 对象=>json
    
        ```
            var book1=new Book( "Rose", Author("王五"), "2001-1-2", "浙江出版社");
            print(book1.toJson());
        ```
    数据解析完成！！！
    
## 2019/10/21

### 包管理机制：
针对项目配置则在ymal文件中进行配置：

```
#应用或包名称。
name: flutter_learn
#应用或包的描述、简介。
description: A new Flutter application.

#应用或包的版本号。
version: 1.0.0+1

environment:
  sdk: ">=2.0.0-dev.68.0 <3.0.0"

#应用或包依赖的其它包或插件。
dependencies:
  flutter:
    sdk: flutter

  #设置国际化
  flutter_localizations:
    sdk: flutter
  cupertino_icons: ^0.1.2
  #导入toast的依赖库
  toast: ^0.1.3
  #日期格式化依赖库
  date_format: ^1.0.6
  #三方日期选择器
  flutter_datetime_picker: ^1.2.6

  json_annotation: ^3.0.0

#  网络请求三方库
  dio: 3.0.3 #latest version

#开发环境依赖的工具包（而不是flutter应用本身依赖的包）。
dev_dependencies:
  flutter_test:
    sdk: flutter
  build_runner: ^1.7.1
  #json_serializable版本号
  json_serializable: ^3.2.3


#flutter相关的配置选项。

flutter:
  assets:
    - images/2.0x/ic_recycle.png
    - images/3.0x/ic_recycle.png
    - images/a.jpg
    - images/ic_recycle.png
```

+ name：应用或包名称。
+ description: 应用或包的描述、简介。
+ version：应用或包的版本号。
+ dependencies：应用或包依赖的其它包或插件。
+ dev_dependencies：开发环境依赖的工具包（而不是flutter应用本身依赖的包）。
+ flutter：flutter相关的配置选项。

#### 包依赖：
1. Pub仓库:Pub（https://pub.dartlang.org/ ）是Google官方的Dart Packages仓库，类似于node中的npm仓库，android中的jcenter。我们可以在Pub上面查找我们需要的包和插件，也可以向Pub发布我们的包和插件。我们将在后面的章节中介绍如何向Pub发布我们的包和插件。

```
dependencies:
  flutter:
    sdk: flutter
  #设置国际化
  flutter_localizations:
    sdk: flutter
  cupertino_icons: ^0.1.2
  #导入toast的依赖库
  toast: ^0.1.3
  #日期格式化依赖库
  date_format: ^1.0.6
  #三方日期选择器
  flutter_datetime_picker: ^1.2.6

  json_annotation: ^3.0.0
```
2.依赖本地包:如果我们正在本地开发一个包，包名为pkg1，我们可以通过下面方式依赖：

```
dependencies:
    pkg1:
        path: ../../code/pkg1
```
路径可以是相对的，也可以是绝对的。

3.依赖Git：你也可以依赖存储在Git仓库中的包。如果软件包位于仓库的根目录中，请使用以下语法

```
dependencies:
  pkg1:
    git:
      url: git://github.com/xxx/pkg1.git
```
上面假定包位于Git存储库的根目录中。如果不是这种情况，可以使用path参数指定相对位置，例如：

```
dependencies:
  package1:
    git:
      url: git://github.com/flutter/packages.git
      path: packages/package1
```

### 2019/10/21

#### Widget Element RenderObject三者关系

当一个 Widget 被“加载“的时候，它并不是马上被绘制出来，而是会对应先创建出它的 Element ，然后通过 Element 将 Widget 的配置信息转化为 RenderObject 实现绘制。

![](https://user-gold-cdn.xitu.io/2019/10/20/16de8e318987682f?imageView2/0/w/1280/h/960/format/webp/ignore-error/1)

+ Widget 是配置文件。
+ Element 是桥梁和仓库。
+ RenderObject 是解析后的绘制和布局。

所以，在 Flutter 中大部分时候我们写的是 Widget ，但是 Widget 的角色反而更像是“配置文件” ，真正触发工作的其实是 RenderObject。 

#### Widget 的分类

![](https://user-gold-cdn.xitu.io/2019/10/20/16de8e3eec578436?imageView2/0/w/1280/h/960/format/webp/ignore-error/1)


#遗留问题？？？？？
+ listview/gridview单个条目的点击事件处理问题
+ gridTile的使用
+ 路由跳转返回传值的问题
+ text组件上的内容获取方式
