import 'package:flutter/material.dart';

import '../widgets/widgets.dart';
import '../models/models.dart';
import 'screens.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _pageNumber = 0;

  PageController _pageController;

  // Size _size;

  @override
  void initState() {
    _pageController = new PageController(initialPage: _pageNumber);
    // _size = new Size(context);
    super.initState();
  }

  void animate(int page) {
    _pageController.animateToPage(
      page,
      duration: Duration(seconds: 50),
      curve: Curves.fastOutSlowIn,
    );
    setState(() {
      _pageNumber = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Column(
        children: [
          MyTabBar(_pageNumber, animate),
          Expanded(
            child: PageView(
              children: [
                MainScreen(),
              ],
              controller: _pageController,
            ),
          ),
        ],
      ),
    );
  }
}
