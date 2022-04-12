import 'package:fitness_demo/screens/chat.dart';
import 'package:fitness_demo/screens/explore.dart';
import 'package:fitness_demo/screens/journal.dart';
import 'package:fitness_demo/screens/library.dart';
import 'package:fitness_demo/screens/profile.dart';
import 'package:fitness_demo/screens/search_form.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static final String routeName = "/home";
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [Explore(), SearchForm(), Journal(), Chat(), Profile()];
    super.initState();
  }

  void _selectPage(int index) {
    if (mounted) {
      setState(() {
        _selectedPageIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, //Theme.of(context).primaryColor,
      appBar: AppBar(
        centerTitle: true,
        actions: <Widget>[new Container()],
        title: Text(
          'Fitness Artist',
          style: Theme.of(context).textTheme.headline1,
        ),
        backgroundColor: Colors.black,
      ),
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _selectedPageIndex == 0
                  ? Colors.amber
                  : Theme.of(context).accentColor,
              size: 30,
            ),
            title: Text(
              'Explore',
              style: TextStyle(
                color: _selectedPageIndex == 0
                    ? Colors.amber
                    : Theme.of(context).accentColor,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: _selectedPageIndex == 1
                  ? Colors.amber
                  : Theme.of(context).accentColor,
              size: 30,
            ),
            title: Text(
              'Search',
              style: TextStyle(
                color: _selectedPageIndex == 1
                    ? Colors.amber
                    : Theme.of(context).accentColor,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.event_note,
              color: _selectedPageIndex == 2
                  ? Colors.amber
                  : Theme.of(context).accentColor,
              size: 30,
            ),
            title: Text(
              'Journal',
              style: TextStyle(
                color: _selectedPageIndex == 2
                    ? Colors.amber
                    : Theme.of(context).accentColor,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.mail,
              color: _selectedPageIndex == 3
                  ? Colors.amber
                  : Theme.of(context).accentColor,
              size: 30,
            ),
            title: Text(
              'Chat',
              style: TextStyle(
                color: _selectedPageIndex == 3
                    ? Colors.amber
                    : Theme.of(context).accentColor,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: _selectedPageIndex == 4
                  ? Colors.amber
                  : Theme.of(context).accentColor,
              size: 30,
            ),
            title: Text(
              'Profile',
              style: TextStyle(
                color: _selectedPageIndex == 4
                    ? Colors.amber
                    : Theme.of(context).accentColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
