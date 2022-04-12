import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Explore extends StatefulWidget {
  static const routeName = '/explore';

  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  PageController _pageController;
  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: 0,
      viewportFraction: 1,
    );
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  Widget _fullSliderInfo() {
    return SizedBox(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _boxItem('prog1.jpg'),
          _boxItem('prog2.jpg'),
          _boxItem('prog3.jpg'),
          _boxItem('prog4.jpg'),
          _boxItem('prog5.jpg'),
          _boxItem('prog6.jpg'),
        ],
      ),
    );
  }

  Widget _boxItem(String fileName) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Column(
        children: [
          SizedBox(
            width: 280,
            height: 130,
            child: Stack(
              children: [
                Container(
                    decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/$fileName"),
                    fit: BoxFit.cover,
                  ),
                )),
                Container(color: Colors.grey.withOpacity(0.5))
              ],
            ),
          ),
          Container(
            width: 280,
            //color: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text('Title Example'), Text('# Seasons')],
            ),
          )
        ],
      ),
    );
  }

  Widget _assetImage(String fileName) {
    return Stack(
      children: [
        Container(
            decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/$fileName"),
            fit: BoxFit.cover,
          ),
        )),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.black,
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.8),
              Colors.transparent
            ], begin: Alignment.bottomCenter, end: Alignment.center),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(237, 237, 237, 1),
      body: ListView(
        controller: _scrollController,
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 300,
            child: Stack(
              children: [
                PageView(
                  controller: _pageController,
                  children: [
                    _assetImage('fpic2.jpg'),
                    _assetImage('fpic1.jpg'),
                    _assetImage('fpic3.jpg'),
                    // Container(color: Colors.blue),
                    // Container(color: Colors.red),
                    // Container(color: Colors.green),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                    child: SmoothPageIndicator(
                      controller: _pageController,
                      count: 3,
                      effect: ExpandingDotsEffect(expansionFactor: 2),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
              height: 30,
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text('7 Day Programs >'),
                  ))),
          _fullSliderInfo(),
          SizedBox(
              height: 30,
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text('Fitness Unleashed >'),
                  ))),
          _fullSliderInfo(),
          SizedBox(
              height: 30,
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text('Fitness Band Camp >'),
                  ))),
          _fullSliderInfo(),
          SizedBox(
              height: 30,
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text('Full Body >'),
                  ))),
          _fullSliderInfo(),
          SizedBox(
              height: 30,
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text('Fine Tuning >'),
                  ))),
          _fullSliderInfo(),
        ],
      ),
    );
  }
}
