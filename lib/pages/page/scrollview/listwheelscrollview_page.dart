import 'package:flutter/material.dart';
import 'package:flutter_learn/res/data_resc.dart';

class ListWheelScrollViewPage extends StatefulWidget {
  @override
  _ListWheelScrollViewState createState() => _ListWheelScrollViewState();
}

class _ListWheelScrollViewState extends State<ListWheelScrollViewPage> {
  FixedExtentScrollController controller =
      new FixedExtentScrollController(initialItem: listData.length ~/ 2);
  String author =
      listData.isEmpty ? '' : listData[listData.length ~/ 2]['author'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("滚轮列表"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    '${this.author}',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30.0, color: Colors.cyanAccent),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListWheelScrollView(
                itemExtent: 60.0,
                controller: controller,
                physics: FixedExtentScrollPhysics(),
                onSelectedItemChanged: (index) {
//                Toast.show(listData[index]['author'], context,
//                    duration: Toast.LENGTH_SHORT, gravity: Toast.CENTER);
                  setState(() {
                    this.author = listData[index]['author'];
                  });
                },
                children: listData.map((value) {
                  return ListTile(
//              leading: Image.network(value["imageurl"],fit: BoxFit.cover,),
                    title: Text(value["title"]),
                    subtitle: Text(value["author"]),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
