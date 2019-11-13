import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

/**
 * 持久化sharedPreferences使用方法
 * 1.sharedPreferences配置文件添加三方依赖
 * 2.sharedpreferences初始化
 * 3.使用当前初始化对象进行增加，修改，删除，获取功能
 *
 *  SharedPreferences=> set()增加修改;get()获取查询;remove()移除删除
 *
 *  由于是一个异步，简单的，持久化，key-value形式存储的，所以在使用是使用async/await来完成异步处理
 *
 *
 *  在使用SharedPreferences三方依赖包运行在ios模拟器会出现项目不能运行安装的问题，面对这个问题看到是ios中pod无法加载三方包的问题
 *  在android 设备上不会涉及到该问题，
 *
 *
 */
class SharedPreferencesPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SharedPreferencesState();
}

class _SharedPreferencesState extends State<SharedPreferencesPage> {
  int count = 0;

  /**
   * 获取当前数据方法
   */
  _getCount() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    setState(() {
      this.count = preferences.getInt('count') ?? 0;
    });
  }

  /**
   * 更新数据方法
   */
  _increment() async {
    //初始化
    SharedPreferences preferences = await SharedPreferences.getInstance();
    //获取指定key值对应的value，如果为空则默认赋值0
    int counter = (preferences.getInt('count') ?? 0) + 1;

    //更同步数据
    setState(() {
      this.count = counter;
    });

    //存储数据（因为上一步操作获取的preferences属于异步操作，针对使用当前对象去操作可能此时对象还没有完成，所以使用关键字await修饰，加入任务队列）
    await preferences.setInt('count', counter);
  }

  @override
  void initState() {
    super.initState();
    //界面初始化，获取数据
    _getCount();
  }

  /**
   * 清除数据的方法
   */
  _clearSharedPreferencesDate() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.remove('count');
    //清空数据且更新到界面
    setState(() {
      this.count = preferences.getInt('count') ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('sharedpreferences持久化'),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.clear),
              onPressed: () {
                _clearSharedPreferencesDate();
              })
        ],
      ),
      body: Center(
        child: Text('点击次数：$count'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _increment();
        },
        child: Icon(Icons.add),
        tooltip: 'increment',
      ),
    );
  }
}
