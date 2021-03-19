import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          MindPost(),
        ],
      ),
    );
  }
}
