import 'package:extended_tabs/extended_tabs.dart';
import 'package:fitness_demo/modules/day_report.dart';
import 'package:flutter/material.dart';

class Journal extends StatefulWidget {
  static const routeName = '/journal';

  @override
  _JournalState createState() => _JournalState();
}

class _JournalState extends State<Journal> with SingleTickerProviderStateMixin {
  TabController _tabController;
  int index = 0;

  final List<Tab> myTabs = <Tab>[
    Tab(text: 'Sun'),
    Tab(text: 'Mon'),
    Tab(text: 'Tue'),
    Tab(text: 'Wed'),
    Tab(text: 'Thu'),
    Tab(text: 'Fri'),
    Tab(text: 'Sat'),
  ];

  List daysInWeek = [
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday'
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
    _tabController.animation.addListener(onTabChanged);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          title: Align(
              alignment: Alignment.centerLeft,
              child: Text('${daysInWeek[index]}')),
          bottom: TabBar(
            controller: _tabController,
            tabs: myTabs,
          ),
        ),
      ),
      backgroundColor: Color.fromRGBO(237, 237, 237, 1),
      body: ExtendedTabBarView(
        controller: _tabController,
        cacheExtent: 0,
        children: myTabs.map((Tab tab) {
          final String label = tab.text.toLowerCase();
          return DayReport(label, tab);
          // Center(
          //   child: Text(
          //     'This is the $label tab',
          //     style: const TextStyle(fontSize: 36),
          //   ),
          // );
        }).toList(),
      ),
    );
  }

  void onTabChanged() {
    final aniValue = _tabController.animation.value;
    setState(() {
      index = aniValue.round();
    });
  }
  // if (aniValue <= 0.5 && _tabController.index != 0) {
  //   setState(() {
  //     index = 1;
  //   });
  // } else if (aniValue > 0.5 && index != 1) {
  //   setState(() {
  //     index = 0;
  //   });

  // } else if (aniValue <= 0.5 && _tabController.index != 0) {
  //   setState(() {
  //     index = 0;
  //   });

  // } else if (aniValue <= 0.5 && _tabController.index != 0) {
  //   setState(() {
  //     index = 0;
  //   });
  // }
}

/*
DefaultTabController(
        initialIndex: 0,
        length: 7,
        child: Scaffold(
            appBar: TabBar(
              labelColor: Colors.black,
              tabs: <Widget>[
                Tab(text: 'Sun'),
                Tab(text: 'Mon'),
                Tab(text: 'Tue'),
                Tab(text: 'Wed'),
                Tab(text: 'Thu'),
                Tab(text: 'Fri'),
                Tab(text: 'Sat'),
              ],
            ),
            body: TabBarView(
              children: <Widget>[
                Container(),
                Container(),
                Container(),
                Container(),
                Container(),
                Container(),
                Container(),
              ],
            )),
      ),
      */
