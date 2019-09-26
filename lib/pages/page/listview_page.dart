import 'package:flutter/material.dart';
import 'package:flutter_learn/res/list_data.dart';
ListView _getListViewItemByNormal(List list) {
  var temple = list.map((value) {
    return ListTile(
      title: Text(value["title"]),
      subtitle: Text(value["author"]),
      leading: Icon(Icons.settings),
    );
  });

  return ListView(
    children: temple.toList(),
  );
}

ListView _getListViewItemByListTile(List list) {
  return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(list[index]["title"]),
          subtitle: Text(list[index]["author"]),
          leading: Icon(Icons.settings),
        );
      });
}
