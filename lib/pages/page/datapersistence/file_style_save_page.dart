import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

/**
 * 实现文件格式存储
 * 此功能完成需要依赖于三方库path_provider（https://pub.dev/packages/path_provider）
 */
class FileStyleSavePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FileStyleSaveState();
  }
}

class _FileStyleSaveState extends State<FileStyleSavePage> {
  String _info;
  TextEditingController controller_info = new TextEditingController();

  final InfoStorage storage = new InfoStorage();

  //保存信息
  Future<File> _saveInfo() async {
    setState(() {
      _info = controller_info.text;
    });

    return storage.wirternfo(_info);
  }

  @override
  void initState() {
    super.initState();
    storage.readInfo().then((value) {
      setState(() {
        _info = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('文件格式存储'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TextField(
                controller: controller_info,
                autofocus: true,
                decoration: InputDecoration(
                  hintText: '请输入内容',
                  labelText: '内容',
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      onPressed: () {
                        _saveInfo();
                      },
                      child: Text('保存'),
                    ),
                  )
                ],
              ),
              Container(
                width: double.infinity,
                height: 120.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.blue, width: 5, style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                ),
                child: Text(this._info ?? ""),
              ),
              Container(
                width: double.infinity,
                child: Text(
                  '''
               获取临时目录路径:
                getTemporaryDirectory().path
               获取本地应用文档目录:
                getApplicationDocumentsDirectory().path
               获取外部存储路径:
                getExternalStorageDirectory().path
              ''',
                  textAlign: TextAlign.start,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

/************************文件存储操作，获取，读取内容，编写内容****************************/
class InfoStorage {
  //获取本地应用文档目录
  Future<String> get _applocalPath async {
    final appPath = await getApplicationDocumentsDirectory();
    return appPath.path;
  }

  //获取临时目录路径
  Future<String> get _tempPath async {
    final tempPath = await getTemporaryDirectory();
    return tempPath.path;
  }

  //获取外部存储路径
  Future<String> get _externalPath async {
    final externalPath = await getExternalStorageDirectory();
    return externalPath.path;
  }

  //获取文件
  Future<File> get _localFile async {
    final path = await _applocalPath;
    print(path);
    return File('$path/info.txt');
  }

  //读取文件内容
  Future<String> readInfo() async {
    try {
      final file = await _localFile;
      String info = await file.readAsString();
      print(info);
      return info;
    } catch (e) {
      return 'error';
    }
  }

  Future<File> wirternfo(String info) async {
    final file = await _localFile;
    return file.writeAsString(info);
  }
}
