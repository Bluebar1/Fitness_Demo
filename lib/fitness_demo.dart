import 'package:fitness_demo/screens/chat.dart';
import 'package:fitness_demo/screens/explore.dart';
import 'package:fitness_demo/screens/home.dart';
import 'package:fitness_demo/screens/journal.dart';
import 'package:fitness_demo/screens/library.dart';
import 'package:fitness_demo/screens/profile.dart';
import 'package:fitness_demo/screens/search_form.dart';
import 'package:fitness_demo/style.dart';
import 'package:flutter/material.dart';

class FitnessDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'fitness demo',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Home(),
        Home.routeName: (context) => Home(),
        Explore.routeName: (context) => Explore(),
        SearchForm.routeName: (context) => SearchForm(),
        Journal.routeName: (context) => Journal(),
        Chat.routeName: (context) => Chat(),
        Profile.routeName: (context) => Profile()
      },
      theme: ThemeData(
          textTheme: TextTheme(
              bodyText1: ModuleTextStyle,
              bodyText2: FocusTextStyle,
              headline1: HeaderTextStyle,
              headline2: DarkHeaderTextStyle,
              headline3: DarkHeader3TextStyle),
          primaryColor: Colors.black,
          accentColor: Color.fromRGBO(190, 190, 190, 1)),
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => Explore());
      },
    );
  }
}
