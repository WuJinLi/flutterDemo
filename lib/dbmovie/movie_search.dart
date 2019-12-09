import 'package:flutter/material.dart';
import 'package:flutter/src/material/app_bar.dart';
import 'package:flutter/src/material/drawer.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_learn/base/base_widget.dart';

class MovieSearchPage extends BaseWidget {
  @override
  attachState() => _MovieSearchState();
}

class _MovieSearchState extends BaseWidgetState<MovieSearchPage> {
  TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setAppBarVisible(true);
    showContent();
  }

  @override
  AppBar attachAppBar() {
    // TODO: implement attachAppBar
    return AppBar(
      title: TextFormField(
        decoration:
            InputDecoration(hintText: "搜索电影/导演", border: InputBorder.none),
        controller: _searchController,
      ),
      actions: <Widget>[IconButton(icon: Icon(Icons.search), onPressed: () {setState(() {

      });})],
    );
  }

  @override
  Drawer attachBaseDrawer() {
    return null;
  }

  @override
  Widget attachContentWidget(BuildContext context) {
    return Center(
      child: Text(_searchController.text),
    );
  }

  @override
  Widget attachFloatingActionButtonWidget() {
    return null;
  }

  @override
  void onClickErrorWidget() {}
}
