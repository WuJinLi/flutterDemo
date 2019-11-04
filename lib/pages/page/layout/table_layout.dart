import 'package:flutter/material.dart';

/**
 * 表格布局table，类似前段table布局
 * 属性：
 * columWidths:m,map<int,TableColumWidth> 设置每一列的宽度，key：代表设置宽度的列数序号，从0开始，TableColumWidth：当前列的宽度
 * bord:TableBorder, 设置列表的样式
 * defaultVerticalAlignment：TableCellVerticalAlignment默认情况下表格内容的排列方式
 * children:<Widget>[] 列表显示的内容，每个行使用TableRow来填充
 *
 */
class TableLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('table表格布局'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Table(
            //设置表格有多少列，并且指定宽度
            columnWidths: const <int, TableColumnWidth>{
              0: FixedColumnWidth(80.0),
              1: FixedColumnWidth(40.0),
              2: FixedColumnWidth(60.0),
              3: FixedColumnWidth(100.0)
            },
            //设置表格边框样式
            border: TableBorder.all(
                color: Colors.black38, width: 2.0, style: BorderStyle.solid),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            //添加表格数据
            children: const <TableRow>[
              TableRow(children: <Widget>[
                Text('姓名'),
                Text('性别'),
                Text('年龄'),
                Text('身高（com）'),
              ]),
              TableRow(children: <Widget>[
                Text('张三'),
                Text('男'),
                Text('22'),
                Text('178）'),
              ]),
              TableRow(children: <Widget>[
                Text('Rose'),
                Text('女'),
                Text('22'),
                Text('168'),
              ]),
              TableRow(children: <Widget>[
                Text('Lisa'),
                Text('女'),
                Text('25'),
                Text('172'),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
