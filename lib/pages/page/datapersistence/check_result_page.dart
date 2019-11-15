import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learn/utils/dbhelper.dart';

class CheckInResult extends StatelessWidget {
  CheckInResult({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("已打卡人员")),
      body: FutureBuilder<List<User>>(
        future: new DBProvider().getAllUser(),
        builder: (BuildContext context, AsyncSnapshot<List<User>> snapshot) {
          if (snapshot.connectionState == ConnectionState.none) {
            return Center(
              child: Text('暂无数据'),
            );
          } else if (snapshot.connectionState == ConnectionState.active ||
              snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.connectionState == ConnectionState.done) {
            print(snapshot.data);
            if (snapshot.hasData) {
              return ListView.builder(
                itemBuilder: (context, index) {
                  User item = snapshot.data[index];
                  return ListTile(
                    title: Text(item.name),
                  );
                },
                itemCount: snapshot.data.length,
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text(snapshot.error.toString()),
              );
            }
          }
        },
      ),
    );
  }
}
