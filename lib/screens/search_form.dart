import 'dart:math';

import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flappy_search_bar/scaled_tile.dart';
import 'package:flutter/material.dart';

class SearchForm extends StatefulWidget {
  static const routeName = '/search-form';

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<SearchForm> {
  final SearchBarController _searchBarController = SearchBarController();
  bool isReplay = false;

  Future<List<int>> _getALlPosts(String text) async {
    await Future.delayed(Duration(seconds: 4));
    List<int> tempList = List<int>();
    tempList.add(1);
    tempList.add(2);
    tempList.add(3);
    return tempList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SearchBar<int>(
          searchBarPadding: EdgeInsets.symmetric(horizontal: 10),
          headerPadding: EdgeInsets.symmetric(horizontal: 10),
          listPadding: EdgeInsets.symmetric(horizontal: 10),
          onSearch: _getALlPosts,
          searchBarController: _searchBarController,
          //placeHolder: Text("placeholder"),
          cancellationWidget: Text("Cancel"),
          emptyWidget: Text("empty"),
          indexedScaledTileBuilder: (int index) =>
              ScaledTile.count(1, index.isEven ? 2 : 1),
          onCancelled: () {
            print("Cancelled triggered");
          },
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          crossAxisCount: 2,
          onItemFound: (post, index) {
            return Container(
              color: Colors.lightBlue,
              child: ListTile(
                title: Text('example'),
                isThreeLine: true,
                subtitle: Text('example sub'),
                onTap: () {
                  print('tepped');
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
