import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

final String tableName = 'tb_user';
final String columnId = '_id';
final String columnName = 'name';

class User {
  User();

  int id;
  String name;

  //将对象转换成map
  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      columnName: name,
    };

    if (id != null) {
      map[columnId] = id;
    }

    return map;
  }

  //将map转换成对象
  User.fromMap(Map<String, dynamic> map) {
    id = map[columnId];
    name = map[columnName];
  }
}

class DBProvider {
  DBProvider();

  Database _database;

  Future<Database> get database async {
    if (_database != null) return _database;
    _database = await initDB();
    return _database;
  }

  initDB() async {
    var databasePath = await getDatabasesPath();
    String path = await join(databasePath, "UserDB.db");
    return await openDatabase(path, version: 2, onOpen: (db) {},
        onCreate: (Database db, int version) async {
      await db.execute('''
            create table $tableName ( 
              $columnId integer primary key autoincrement, 
              $columnName text not null)
            ''');
    });
  }

  Future insert(User user) async {
    final db = await database;
    int id = await db.insert(tableName, user.toMap());
    print('id: $id');
  }

  Future<User> getUser(int id) async {
    final db = await database;
    List<Map> maps = await db.query(tableName,
        columns: [columnId, columnName],
        where: '$columnId = ?',
        whereArgs: [id]);

    if (maps.length > 0) {
      return User.fromMap(maps.first);
    }

    return null;
  }

  Future<List<User>> getAllUser() async {
    final db = await database;
    var res = await db.rawQuery('SELECT * FROM $tableName');

    List<User> list =
        res.isNotEmpty ? res.map((value) => User.fromMap(value)).toList() : [];

    return list;
  }

  Future<int> delete(int id) async {
    final db = await database;
    return await db.delete(tableName, where: '$columnId = ?', whereArgs: [id]);
  }

  Future<int> update(User user) async {
    final db = await database;
    return await db.update(tableName, user.toMap(),
        where: '$columnId = ?', whereArgs: [user.id]);
  }

  removeAll() async {
    final db = await database;
    await db.delete(tableName);
  }

  Future close() async {
    final db = await database;
    await db.close();
  }
}
