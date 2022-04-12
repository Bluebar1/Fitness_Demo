import 'package:flutter/material.dart';

class Library extends StatefulWidget {
  static const routeName = '/library';

  @override
  _LibraryState createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Scaffold(
            appBar: TabBar(
              labelColor: Colors.black,
              tabs: <Widget>[
                Tab(text: 'My List'),
                Tab(text: 'Offline'),
              ],
            ),
            body: TabBarView(
              children: <Widget>[
                Container(),
                Container(),
              ],
            )),
      ),
    );
  }
}
